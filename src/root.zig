const std = @import("std");
pub const Procs = @import("Procs.zig");
pub const c = @import("c.zig");

pub var procs: Procs = undefined;

pub fn init(loader: anytype) !void {
    procs = try .init(loader);
    c.procs = &procs;
}

pub const clear = struct {
    pub const BufferMask = packed struct(u3) {
        color: bool = false,
        depth: bool = false,
        stencil: bool = false,
    };

    pub fn buffer(mask: BufferMask) void {
        procs.glClear(@intCast(if (mask.color) c.GL_COLOR_BUFFER_BIT else 0 | if (mask.depth) c.GL_DEPTH_BUFFER_BIT else 0 | if (mask.stencil) c.GL_STENCIL_BUFFER_BIT else 0));
    }

    pub fn color(r: f32, g: f32, b: f32, a: f32) void {
        procs.glClearColor(r, g, b, a);
    }

    pub fn index(mask: u32) void {
        procs.glIndexMask(@intCast(mask));
    }
};

// pub const index = struct {
//     pub fn clear(i: f32) void {
//         procs.glClearIndex(i);
//     }
// };

pub const color = struct {
    pub const Mask = struct { r: bool, g: bool, b: bool, a: bool };

    pub fn mask(m: @Vector(4, bool)) void {
        procs.glColorMask(@intFromBool(m[0]), @intFromBool(m[1]), @intFromBool(m[2]), @intFromBool(m[3]));
    }
};

pub const Vao = enum(c_uint) {
    _,

    pub fn gen() !@This() {
        var vao: c_uint = undefined;
        c.glGenVertexArrays(1, &vao);
        return if (vao != 0) @enumFromInt(vao) else return error.GenVao;
    }

    pub fn bind(self: @This()) void {
        c.glBindBuffer(c.GL_ARRAY_BUFFER, @intFromEnum(self));
    }

    pub fn bindBuffer(self: @This(), buffer: Buffer) void {
        c.glBindBuffer(@intFromEnum(self), @intFromEnum(buffer));
    }

    pub fn vertexAttribPointer(_: @This(), index: usize, size: usize, @"type": ?c_ushort) void {
        c.glVertexAttribPointer(@intCast(index), @intCast(size), @"type" orelse c.GL_FLOAT, c.GL_FALSE, 3 * @sizeOf(f32), @ptrFromInt(0));
        c.glEnableVertexAttribArray(@intCast(index));
    }
};

pub const Buffer = enum(c_uint) {
    _,

    pub const Target = enum(c_ushort) {
        array = c.GL_ARRAY_BUFFER,
        element_array = c.GL_ELEMENT_ARRAY_BUFFER,
        uniform = c.GL_UNIFORM_BUFFER,
        shader_storage = c.GL_SHADER_STORAGE_BUFFER,
        pixel_pack = c.GL_PIXEL_PACK_BUFFER,
        pixel_unpack = c.GL_PIXEL_UNPACK_BUFFER,
        transform_feedback = c.GL_TRANSFORM_FEEDBACK_BUFFER,
    };

    pub const Usage = enum(c_ushort) {
        static_draw = c.GL_STATIC_DRAW,
        static_read = c.GL_STATIC_READ,
        static_copy = c.GL_STATIC_COPY,
        dynamic_draw = c.GL_DYNAMIC_DRAW,
        dynamic_read = c.GL_DYNAMIC_READ,
        dynamic_copy = c.GL_DYNAMIC_COPY,
        stream_draw = c.GL_STREAM_DRAW,
        stream_read = c.GL_STREAM_READ,
        stream_copy = c.GL_STREAM_COPY,
    };

    pub fn gen() !@This() {
        var buffer: c_uint = undefined;
        c.glGenBuffers(1, &buffer);
        return if (buffer != 0) @enumFromInt(buffer) else error.GenBuffer;
    }

    /// Example 'vbo.bufferData(&vertices, .static_draw)'
    pub fn bufferData(_: @This(), target: Target, usage: Usage, data: anytype) void {
        const Inner = @typeInfo(@typeInfo(@TypeOf(data)).pointer.child).array.child;
        c.glBufferData(@intFromEnum(target), @intCast(data.len * @sizeOf(Inner)), @ptrCast(data), @intFromEnum(usage));
    }
};

pub const Shader = enum(c_uint) {
    _,

    pub const Type = enum(c_ushort) {
        fragment = c.GL_FRAGMENT_SHADER,
        vertex = c.GL_VERTEX_SHADER,
        geometry = c.GL_GEOMETRY_SHADER,
        compute = c.GL_COMPUTE_SHADER,
    };

    /// Same as 'glCreateShader'
    pub fn init(@"type": Type) @This() {
        return @enumFromInt(c.glCreateShader(@intFromEnum(@"type")));
    }

    /// Same as 'glDeleteShader'
    pub fn deinit(self: @This()) void {
        c.glDeleteShader(@intFromEnum(self));
    }

    pub fn source(self: @This(), str: [*:0]const u8) void {
        c.glShaderSource(@intFromEnum(self), 1, &str, null);
    }

    pub fn compile(self: @This()) !void {
        c.glCompileShader(@intFromEnum(self));
        var success: c_int = undefined;
        c.glGetShaderiv(@intFromEnum(self), c.GL_COMPILE_STATUS, &success);
        if (success != c.GL_TRUE) {
            var info: [512]u8 = @splat(0x00);
            c.glGetShaderInfoLog(@intFromEnum(self), @intCast(info.len), null, &info);
            std.log.err("{s}", .{info[7..]});
            return error.CompileShader;
        }
    }
};

pub const Program = enum(c_uint) {
    _,

    /// Same as 'glCreateProgram'
    pub fn init() @This() {
        return @enumFromInt(c.glCreateProgram());
    }

    /// Same as 'glDeleteProgram'
    pub fn deinit(self: @This()) void {
        c.glDeleteProgram(@intFromEnum(self));
    }

    pub fn getCurrent() ?@This() {
        var program: c_int = undefined;
        c.glGetIntegerv(c.GL_CURRENT_PROGRAM, &program);
        return if (program != 0) @enumFromInt(program) else null;
    }

    pub fn attach(self: @This(), shader: Shader) void {
        c.glAttachShader(@intFromEnum(self), @intFromEnum(shader));
    }

    pub fn link(self: @This()) !void {
        c.glLinkProgram(@intFromEnum(self));
        var success: c_int = undefined;
        c.glGetProgramiv(@intFromEnum(self), c.GL_LINK_STATUS, &success);
        if (success != c.GL_TRUE) {
            var info: [512]u8 = @splat(0x00);
            c.glGetProgramInfoLog(@intFromEnum(self), @intCast(info.len), null, &info);
            std.log.err("{s}", .{info[7..]});
            return error.LinkProgram;
        }
    }

    pub fn use(self: @This()) void {
        c.glUseProgram(@intFromEnum(self));
    }
};

pub const draw = struct {
    pub const Mode = enum(c_ushort) {
        points = c.GL_POINTS,
        triangles = c.GL_TRIANGLES,
        triangle_strip = c.GL_TRIANGLE_STRIP,
        triangle_fan = c.GL_TRIANGLE_FAN,
        lines = c.GL_LINES,
        line_strip = c.GL_LINE_STRIP,
        line_loop = c.GL_LINE_LOOP,
    };

    pub fn viewport(x: usize, y: usize, width: usize, height: usize) void {
        c.glViewport(@intCast(x), @intCast(y), @intCast(width), @intCast(height));
    }

    pub fn arrays(mode: Mode, first: usize, count: usize) void {
        c.glDrawArrays(@intFromEnum(mode), @intCast(first), @intCast(count));
    }

    pub fn elements(mode: Mode, count: usize, indices: usize) void {
        c.glDrawElements(@intFromEnum(mode), @intCast(count), c.GL_UNSIGNED_INT, @ptrFromInt(indices));
    }
};
