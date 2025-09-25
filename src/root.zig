const std = @import("std");
const builtin = @import("builtin");
pub const Procs = @import("Procs.zig");
pub const c = @import("c.zig");

pub var procs: Procs = undefined;

pub fn init(loader: anytype) !void {
    procs = try .init(loader);
    c.procs = &procs;
}

pub const debug = struct {
    /// Null will enable when release mode is set to 'debug'
    pub fn set(config: ?bool) void {
        if (config orelse (builtin.mode == .Debug)) {
            c.glDebugMessageControl(c.GL_DONT_CARE, c.GL_DONT_CARE, c.GL_DONT_CARE, 0, null, c.GL_TRUE);
            c.glDebugMessageCallback(callback, null);
            c.glEnable(c.GL_DEBUG_OUTPUT);
            c.glEnable(c.GL_DEBUG_OUTPUT_SYNCHRONOUS);
        }
    }

    pub fn callback(src: c_ushort, @"type": c_ushort, id: c_uint, severity: c_ushort, len: c_int, message: [*c]const u8, user_data: ?*const anyopaque) callconv(.c) void {
        _ = user_data;
        // gl.c.GL_DEBUG_TYPE_ERROR
        std.debug.print("{s} {d}: src: {d} type: {d} id: {d}\n{s}\n", .{
            switch (severity) {
                c.GL_DEBUG_SEVERITY_HIGH => "error",
                c.GL_DEBUG_SEVERITY_MEDIUM => "warn",
                c.GL_DEBUG_SEVERITY_LOW => "info",
                c.GL_DEBUG_SEVERITY_NOTIFICATION => "note",
                else => unreachable,
            },
            severity,
            src,
            @"type",
            id,
            message[0..@intCast(len)],
        });
    }
};

pub const clear = struct {
    pub const BufferMask = packed struct(u3) {
        color: bool = false,
        depth: bool = false,
        stencil: bool = false,
    };

    pub fn buffer(mask: BufferMask) void {
        c.glClear(@intCast(if (mask.color) c.GL_COLOR_BUFFER_BIT else 0 | if (mask.depth) c.GL_DEPTH_BUFFER_BIT else 0 | if (mask.stencil) c.GL_STENCIL_BUFFER_BIT else 0));
    }

    pub fn color(r: f32, g: f32, b: f32, a: f32) void {
        c.glClearColor(r, g, b, a);
    }
};

pub const color = struct {
    pub const Mask = struct { r: bool, g: bool, b: bool, a: bool };

    pub fn mask(m: @Vector(4, bool)) void {
        c.glColorMask(@intFromBool(m[0]), @intFromBool(m[1]), @intFromBool(m[2]), @intFromBool(m[3]));
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

    pub const Uniform = union(enum) {
        i32: i32,
        u32: u32,
        f32: f32,
        f64: f64,
        i32x2: [2]i32,
        u32x2: [2]u32,
        f32x2: [2]f32,
        f64x2: [2]f64,
        i32x3: [3]i32,
        u32x3: [3]u32,
        f32x3: [3]f32,
        f64x3: [3]f64,
        i32x4: [4]i32,
        u32x4: [4]u32,
        f32x4: [4]f32,
        f64x4: [4]f64,
        f32x2x2: [2 * 2]f32,
        f32x3x3: [3 * 3]f32,
        f32x4x4: [4 * 4]f32,
        f64x2x2: [2 * 2]f64,
        f64x3x3: [3 * 3]f64,
        f64x4x4: [4 * 4]f64,
        f32x2x3: [2 * 3]f32,
        f32x3x2: [3 * 2]f32,
        f32x2x4: [2 * 4]f32,
        f32x4x2: [4 * 2]f32,
        f32x3x4: [3 * 4]f32,
        f32x4x3: [4 * 3]f32,
        f64x2x3: [2 * 3]f64,
        f64x3x2: [3 * 2]f64,
        f64x2x4: [2 * 4]f64,
        f64x4x2: [4 * 2]f64,
        f64x3x4: [3 * 4]f64,
        f64x4x3: [4 * 3]f64,

        pub fn set(self: @This(), name: [*:0]const u8, program: Program) !void {
            const location = c.glGetUniformLocation(@intFromEnum(program), name);
            if (location == -1) return error.LocationNotFound;

            switch (self) {
                .i32 => |x| c.glProgramUniform1i(@intFromEnum(program), location, @intCast(x)),
                .u32 => |x| c.glProgramUniform1ui(@intFromEnum(program), location, @intCast(x)),
                .f32 => |x| c.glProgramUniform1f(@intFromEnum(program), location, x),
                .f64 => |x| c.glProgramUniform1d(@intFromEnum(program), location, x),
                .i32x2 => |v| c.glProgramUniform2i(@intFromEnum(program), location, @intCast(v[0]), @intCast(v[1])),
                .u32x2 => |v| c.glProgramUniform2ui(@intFromEnum(program), location, @intCast(v[0]), @intCast(v[1])),
                .f32x2 => |v| c.glProgramUniform2f(@intFromEnum(program), location, v[0], v[1]),
                .f64x2 => |v| c.glProgramUniform2d(@intFromEnum(program), location, v[0], v[1]),
                .i32x3 => |v| c.glProgramUniform3i(@intFromEnum(program), location, @intCast(v[0]), @intCast(v[1]), @intCast(v[2])),
                .u32x3 => |v| c.glProgramUniform3ui(@intFromEnum(program), location, @intCast(v[0]), @intCast(v[1]), @intCast(v[2])),
                .f32x3 => |v| c.glProgramUniform3f(@intFromEnum(program), location, v[0], v[1], v[2]),
                .f64x3 => |v| c.glProgramUniform3d(@intFromEnum(program), location, v[0], v[1], v[2]),
                .i32x4 => |v| c.glProgramUniform4i(@intFromEnum(program), location, @intCast(v[0]), @intCast(v[1]), @intCast(v[2]), @intCast(v[3])),
                .u32x4 => |v| c.glProgramUniform4ui(@intFromEnum(program), location, @intCast(v[0]), @intCast(v[1]), @intCast(v[2]), @intCast(v[3])),
                .f32x4 => |v| c.glProgramUniform4f(@intFromEnum(program), location, v[0], v[1], v[2], v[3]),
                .f64x4 => |v| c.glProgramUniform4d(@intFromEnum(program), location, v[0], v[1], v[2], v[3]),
                .f32x2x2 => |m| c.glProgramUniformMatrix2fv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f32x3x3 => |m| c.glProgramUniformMatrix3fv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f32x4x4 => |m| c.glProgramUniformMatrix4fv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f64x2x2 => |m| c.glProgramUniformMatrix2dv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f64x3x3 => |m| c.glProgramUniformMatrix3dv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f64x4x4 => |m| c.glProgramUniformMatrix4dv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f32x2x3 => |m| c.glProgramUniformMatrix2x3fv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f32x3x2 => |m| c.glProgramUniformMatrix3x2fv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f32x2x4 => |m| c.glProgramUniformMatrix2x4fv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f32x4x2 => |m| c.glProgramUniformMatrix4x2fv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f32x3x4 => |m| c.glProgramUniformMatrix3x4fv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f32x4x3 => |m| c.glProgramUniformMatrix4x3fv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f64x2x3 => |m| c.glProgramUniformMatrix2x3dv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f64x3x2 => |m| c.glProgramUniformMatrix3x2dv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f64x2x4 => |m| c.glProgramUniformMatrix2x4dv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f64x4x2 => |m| c.glProgramUniformMatrix4x2dv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f64x3x4 => |m| c.glProgramUniformMatrix3x4dv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
                .f64x4x3 => |m| c.glProgramUniformMatrix4x3dv(@intFromEnum(program), location, 1, c.GL_FALSE, @ptrCast(m[0..].ptr)),
            }
        }
    };

    /// Same as 'glCreateProgram'
    pub fn init() !@This() {
        const id = c.glCreateProgram();
        return if (id != 0) @enumFromInt(id) else error.InitBuffer;
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

    pub fn setUniform(self: @This(), name: [*:0]const u8, uniform: Uniform) !void {
        try Uniform.set(uniform, name, self);
    }
};

pub const NumType = enum(c_ushort) {
    i8 = c.GL_BYTE,
    i16 = c.GL_SHORT,
    i32 = c.GL_INT,
    u8 = c.GL_UNSIGNED_BYTE,
    u16 = c.GL_UNSIGNED_SHORT,
    u32 = c.GL_UNSIGNED_INT,
    f32 = c.GL_FLOAT,
    f64 = c.GL_DOUBLE,

    pub const Element = enum(c_ushort) {
        u8 = c.GL_UNSIGNED_BYTE,
        u16 = c.GL_UNSIGNED_SHORT,
        u32 = c.GL_UNSIGNED_INT,
    };
};

pub const Vao = enum(c_uint) {
    _,

    pub fn init() !@This() {
        var id: c_uint = undefined;
        c.glCreateVertexArrays(1, &id);
        return if (id != 0) @enumFromInt(id) else return error.InitVao;
    }

    pub fn deinit(self: @This()) void {
        var id: c_uint = @intFromEnum(self);
        c.glDeleteVertexArrays(1, &id);
    }

    pub fn bind(self: @This()) void {
        c.glBindVertexArray(@intFromEnum(self));
    }

    // pub fn bufferStorage(self: @This()) void {
    //     c.glNamedBufferStorage(
    //         @intFromEnum(self),
    //     );
    // }

    pub fn vertexBuffer(self: @This(), vbo: Buffer, bind_index: usize, offset: usize, stride: usize) void {
        c.glVertexArrayVertexBuffer(@intFromEnum(self), @intCast(bind_index), @intFromEnum(vbo), @intCast(offset), @intCast(stride));
    }

    pub fn elementBuffer(self: @This(), ebo: Buffer) void {
        c.glVertexArrayElementBuffer(@intFromEnum(self), @intFromEnum(ebo));
    }

    /// If `normalized` is true, integer attributes are scaled to the [0,1] (unsigned) or [-1,1] (signed) range in the shader.
    /// For example, a `u8` value of 255 becomes 1.0 in the shader.
    /// This flag has no effect for floating-point attributes (`f32`/`f64`).
    pub fn vertexAttribute(self: @This(), index: usize, binding_index: usize, size: usize, @"type": NumType, normalized: bool, relative_offset: usize) void {
        c.glEnableVertexArrayAttrib(@intFromEnum(self), @intCast(index));
        c.glVertexArrayAttribBinding(@intFromEnum(self), @intCast(index), @intCast(binding_index));
        c.glVertexArrayAttribFormat(@intFromEnum(self), @intCast(index), @intCast(size), @intFromEnum(@"type"), @intFromBool(normalized), @intCast(relative_offset));
    }
};

pub const Buffer = enum(c_uint) {
    _,

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

    pub fn init() !@This() {
        var id: c_uint = undefined;
        c.glCreateBuffers(1, &id);
        return if (id != 0) @enumFromInt(id) else error.InitBuffer;
    }

    pub fn deinit(self: @This()) void {
        var id: c_uint = @intFromEnum(self);
        c.glDeleteBuffers(1, &id);
    }

    /// Example 'vbo.bufferData(.static_draw, &vertices)'
    pub fn bufferData(self: @This(), usage: Usage, data: anytype) void {
        const Inner = @typeInfo(@typeInfo(@TypeOf(data)).pointer.child).array.child;
        c.glNamedBufferData(@intFromEnum(self), @intCast(data.len * @sizeOf(Inner)), @ptrCast(data), @intFromEnum(usage));
    }
};

pub const Texture = enum(c_uint) {
    _,

    pub const Format = enum(c_ushort) {
        r8 = c.GL_R8,
        rg8 = c.GL_RG8,
        rgb8 = c.GL_RGB8,
        rgba8 = c.GL_RGBA8,
        r16 = c.GL_R16,
        rg16 = c.GL_RG16,
        rgb16 = c.GL_RGB16,
        rgba16 = c.GL_RGBA16,

        // Floating point
        r16f = c.GL_R16F,
        rg16f = c.GL_RG16F,
        rgb16f = c.GL_RGB16F,
        rgba16f = c.GL_RGBA16F,
        r32f = c.GL_R32F,
        rg32f = c.GL_RG32F,
        rgb32f = c.GL_RGB32F,
        rgba32f = c.GL_RGBA32F,

        // Integer
        r8i = c.GL_R8I,
        r8ui = c.GL_R8UI,
        rg8i = c.GL_RG8I,
        rg8ui = c.GL_RG8UI,
        rgb8i = c.GL_RGB8I,
        rgb8ui = c.GL_RGB8UI,
        rgba8i = c.GL_RGBA8I,
        rgba8ui = c.GL_RGBA8UI,
        r32i = c.GL_R32I,
        r32ui = c.GL_R32UI,
        rg32i = c.GL_RG32I,
        rg32ui = c.GL_RG32UI,
        rgb32i = c.GL_RGB32I,
        rgb32ui = c.GL_RGB32UI,
        rgba32i = c.GL_RGBA32I,
        rgba32ui = c.GL_RGBA32UI,

        // Depth / stencil
        depth_component16 = c.GL_DEPTH_COMPONENT16,
        depth_component24 = c.GL_DEPTH_COMPONENT24,
        depth_component32f = c.GL_DEPTH_COMPONENT32F,
        depth24_stencil8 = c.GL_DEPTH24_STENCIL8,
        depth32f_stencil8 = c.GL_DEPTH32F_STENCIL8,

        // sRGB
        srgb8 = c.GL_SRGB8,
        srgb8_alpha8 = c.GL_SRGB8_ALPHA8,

        pub fn @"break"(self: @This()) ?[2]c_ushort {
            return switch (self) {
                .r8 => .{ c.GL_RED, c.GL_UNSIGNED_BYTE },
                .rg8 => .{ c.GL_RG, c.GL_UNSIGNED_BYTE },
                .rgb8 => .{ c.GL_RGB, c.GL_UNSIGNED_BYTE },
                .rgba8 => .{ c.GL_RGBA, c.GL_UNSIGNED_BYTE },

                .r16f => .{ c.GL_RED, c.GL_HALF_FLOAT },
                .rgba32f => .{ c.GL_RGBA, c.GL_FLOAT },

                .r8i => .{ c.GL_RED_INTEGER, c.GL_BYTE },
                .rgba32ui => .{ c.GL_RGBA_INTEGER, c.GL_UNSIGNED_INT },

                .depth_component16 => .{ c.GL_DEPTH_COMPONENT, c.GL_UNSIGNED_SHORT },
                .depth24_stencil8 => .{ c.GL_DEPTH_STENCIL, c.GL_UNSIGNED_INT_24_8 },

                .srgb8 => .{ c.GL_RGB, c.GL_UNSIGNED_BYTE },
                .srgb8_alpha8 => .{ c.GL_RGBA, c.GL_UNSIGNED_BYTE },

                else => null,
            };
        }
    };

    pub const Target = enum(c_ushort) {
        @"1d" = c.GL_TEXTURE_1D,
        @"2d" = c.GL_TEXTURE_2D,
        @"3d" = c.GL_TEXTURE_3D,
        @"1d_array" = c.GL_TEXTURE_1D_ARRAY,
        @"2d_array" = c.GL_TEXTURE_2D_ARRAY,
        rectangle = c.GL_TEXTURE_RECTANGLE,
        cube_map = c.GL_TEXTURE_CUBE_MAP,
        cube_map_array = c.GL_TEXTURE_CUBE_MAP_ARRAY,
        buffer = c.GL_TEXTURE_BUFFER,
        @"2d_multisample" = c.GL_TEXTURE_2D_MULTISAMPLE,
        @"2d_multisample_array" = c.GL_TEXTURE_2D_MULTISAMPLE_ARRAY,
        _,

        pub const Storage = union(enum) {
            @"1d": struct { levels: usize, format: Format, width: usize },
            @"2d": struct { levels: usize, format: Format, width: usize, height: usize },
            @"3d": struct { levels: usize, format: Format, width: usize, height: usize, depth: usize },
            @"2d_multisample": struct { samples: usize, levels: usize, format: Format, width: usize, height: usize, fixed_sample_locations: u8 },
            @"3d_multisample": struct { samples: usize, format: Format, width: usize, height: usize, depth: usize, fixed_sample_locations: u8 },

            pub fn store(self: @This(), texture: Texture) void {
                switch (self) {
                    .@"1d" => |d| c.glTextureStorage1D(@intFromEnum(texture), @intCast(d.levels), @intFromEnum(d.format), @intCast(d.width)),
                    .@"2d" => |d| c.glTextureStorage2D(@intFromEnum(texture), @intCast(d.levels), @intFromEnum(d.format), @intCast(d.width), @intCast(d.height)),
                    .@"3d" => |d| c.glTextureStorage3D(@intFromEnum(texture), @intCast(d.levels), @intFromEnum(d.format), @intCast(d.width), @intCast(d.height), @intCast(d.depth)),
                    .@"2d_multisample" => |d| c.glTextureStorage2DMultisample(@intFromEnum(texture), @intCast(d.samples), @intFromEnum(d.format), @intCast(d.width), @intCast(d.height), d.fixed_sample_locations),
                    .@"3d_multisample" => |d| c.glTextureStorage3DMultisample(@intFromEnum(texture), @intCast(d.samples), @intFromEnum(d.format), @intCast(d.width), @intCast(d.height), @intCast(d.depth), d.fixed_sample_locations),
                }
            }
        };
    };

    pub const Paramater = union(enum) {
        pub const Swizzle = enum(c_int) { red = c.GL_RED, green = c.GL_GREEN, blue = c.GL_BLUE, _ };
        pub const Wrap = enum(c_int) { repeat = c.GL_REPEAT, mirrored_repeat = c.GL_MIRRORED_REPEAT, clamp_to_edge = c.GL_CLAMP_TO_EDGE, clamp_to_border = c.GL_CLAMP_TO_BORDER, _ };
        depth_stencil_mode: enum(c_int) { depth_component = c.GL_DEPTH_COMPONENT, stencil_index = c.GL_STENCIL_INDEX, _ },
        base_level: enum(c_int) { max_level = c.GL_TEXTURE_MAX_LEVEL, _ },
        compare_func: enum(c_int) { lequal = c.GL_LEQUAL, gequal = c.GL_GEQUAL, less = c.GL_LESS, greater = c.GL_GREATER, equal = c.GL_EQUAL, notequal = c.GL_NOTEQUAL, always = c.GL_ALWAYS, never = c.GL_NEVER, _ },
        compare_mode: enum(c_int) { none = c.GL_NONE, ref_to = c.GL_COMPARE_REF_TO_TEXTURE, _ },
        min_filter: enum(c_int) { nearest = c.GL_NEAREST, linear = c.GL_LINEAR, nearest_mipmap_nearest = c.GL_NEAREST_MIPMAP_NEAREST, linear_mipmap_nearest = c.GL_LINEAR_MIPMAP_NEAREST, nearest_mipmap_linear = c.GL_NEAREST_MIPMAP_LINEAR, linear_mipmap_linear = c.GL_LINEAR_MIPMAP_LINEAR, _ },
        mag_filter: enum(c_int) { nearest = c.GL_NEAREST, linear = c.GL_LINEAR },
        lod_bias: f32,
        min_lod: f32,
        max_lod: f32,
        max_level: i32,
        swizzle: struct { r: ?Swizzle = null, g: ?Swizzle = null, b: ?Swizzle = null, a: ?enum(c_int) { zero = c.GL_ZERO, one = c.GL_ONE } = null },
        wrap: struct { s: ?Wrap = null, t: ?Wrap = null, r: ?Wrap = null },

        pub fn set(self: @This(), texture: Texture) void {
            switch (self) {
                .depth_stencil_mode => |param| c.glTextureParameteri(@intFromEnum(texture), c.GL_DEPTH_STENCIL_TEXTURE_MODE, @intFromEnum(param)),
                .base_level => |param| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_BASE_LEVEL, @intFromEnum(param)),
                .compare_func => |param| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_COMPARE_FUNC, @intFromEnum(param)),
                .compare_mode => |param| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_COMPARE_MODE, @intFromEnum(param)),
                .min_filter => |param| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_MIN_FILTER, @intFromEnum(param)),
                .mag_filter => |param| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_MAG_FILTER, @intFromEnum(param)),
                .lod_bias => |param| c.glTextureParameterf(@intFromEnum(texture), c.GL_TEXTURE_LOD_BIAS, param),
                .min_lod => |param| c.glTextureParameterf(@intFromEnum(texture), c.GL_TEXTURE_MIN_LOD, param),
                .max_lod => |param| c.glTextureParameterf(@intFromEnum(texture), c.GL_TEXTURE_MAX_LOD, param),
                .max_level => |param| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_MAX_LEVEL, @intCast(param)),
                .swizzle => |param| {
                    if (param.r) |swizzle| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_SWIZZLE_R, @intFromEnum(swizzle));
                    if (param.g) |swizzle| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_SWIZZLE_G, @intFromEnum(swizzle));
                    if (param.b) |swizzle| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_SWIZZLE_B, @intFromEnum(swizzle));
                    if (param.a) |swizzle| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_SWIZZLE_A, @intFromEnum(swizzle));
                },
                .wrap => |param| {
                    if (param.s) |wrap| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_WRAP_S, @intFromEnum(wrap));
                    if (param.t) |wrap| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_WRAP_T, @intFromEnum(wrap));
                    if (param.r) |wrap| c.glTextureParameteri(@intFromEnum(texture), c.GL_TEXTURE_WRAP_R, @intFromEnum(wrap));
                },
            }
        }
    };

    pub const SubImage = union(enum) {
        @"1d": struct { offset: usize = 0, width: usize },
        @"2d": struct { offset: [2]usize = .{ 0, 0 }, width: usize, height: usize },
        @"3d": struct { offset: [3]usize = .{ 0, 0, 0 }, width: usize, height: usize, depth: usize },

        pub fn set(self: @This(), texture: Texture, level: usize, format: Format, pixels: [*]u8) void {
            const fmt, const @"type" = (format.@"break"() orelse @panic("kk"));
            switch (self) {
                .@"1d" => |d| c.glTextureSubImage1D(@intFromEnum(texture), @intCast(level), @intCast(d.offset), @intCast(d.width), fmt, @"type", @ptrCast(pixels)),
                .@"2d" => |d| c.glTextureSubImage2D(@intFromEnum(texture), @intCast(level), @intCast(d.offset[0]), @intCast(d.offset[1]), @intCast(d.width), @intCast(d.height), fmt, @"type", @ptrCast(pixels)),
                .@"3d" => |d| c.glTextureSubImage3D(@intFromEnum(texture), @intCast(level), @intCast(d.offset[0]), @intCast(d.offset[1]), @intCast(d.offset[2]), @intCast(d.width), @intCast(d.height), @intCast(d.depth), fmt, @"type", @ptrCast(pixels)),
            }
        }
    };
    pub fn init(target: Target) !@This() {
        var id: c_uint = undefined;
        c.glCreateTextures(@intFromEnum(target), 1, &id);
        return if (id != 0) @enumFromInt(id) else error.InitTexure;
    }

    pub fn deinit(self: @This()) void {
        var id: c_uint = @intFromEnum(self);
        c.glDeleteTextures(1, &id);
    }

    pub fn setParamater(self: @This(), param: Paramater) void {
        param.set(self);
    }

    pub fn store(self: @This(), storage: Target.Storage) void {
        storage.store(self);
    }

    pub fn setSubImage(self: @This(), sub_image: SubImage, level: usize, format: Format, pixels: [*]u8) void {
        sub_image.set(self, level, format, pixels);
    }

    pub fn generateMipmap(self: @This()) void {
        c.glGenerateTextureMipmap(@intFromEnum(self));
    }

    pub fn bind(self: @This(), unit: usize) void {
        c.glBindTextureUnit(@intCast(unit), @intFromEnum(self));
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

    pub fn elements(mode: Mode, count: usize, @"type": NumType.Element, offset: ?usize) void {
        c.glDrawElements(@intFromEnum(mode), @intCast(count), @intFromEnum(@"type"), if (offset != null) @ptrFromInt(offset.? * @sizeOf(u32)) else null);
    }

    pub const indirect = struct {
        pub fn arrays(mode: Mode, i: *const anyopaque) void {
            c.glDrawArraysIndirect(@intFromEnum(mode), i);
        }

        pub fn elements(mode: Mode, @"type": NumType.Element, i: *const anyopaque) void {
            c.glDrawElementsIndirect(@intFromEnum(mode), @intFromEnum(@"type"), @ptrCast(i));
        }
    };

    pub const instanced = struct {
        pub fn arrays(mode: Mode, first: usize, count: usize, instance_count: usize) void {
            c.glDrawArraysInstanced(@intFromEnum(mode), @intCast(first), @intCast(count), @intCast(instance_count));
        }

        pub fn elements(mode: Mode, count: usize, @"type": NumType.Element, indices: *const anyopaque, instance_count: usize) void {
            c.glDrawElementsInstanced(@intFromEnum(mode), @intCast(count), @intFromEnum(@"type"), @ptrCast(indices), @intCast(instance_count));
        }
    };
};
