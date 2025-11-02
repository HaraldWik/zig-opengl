const std = @import("std");
const builtin = @import("builtin");
pub const c = @import("c.zig");

pub const String = @import("types.zig").String;
pub const Shader = @import("types.zig").Shader;
pub const Program = @import("types.zig").Program;
pub const Vao = @import("types.zig").Vao;
pub const Buffer = @import("types.zig").Buffer;
pub const Texture = @import("types.zig").Texture;
pub const State = @import("types.zig").State;

pub const load = c.Procs.load;

pub fn fromType(comptime T: type) c.@"enum" {
    return switch (T) {
        i8 => c.GL_BYTE,
        i16 => c.GL_SHORT,
        i32 => c.GL_INT,
        u8 => c.GL_UNSIGNED_BYTE,
        u16 => c.GL_UNSIGNED_SHORT,
        u32 => c.GL_UNSIGNED_INT,
        f32 => c.GL_FLOAT,
        f64 => c.GL_DOUBLE,
        else => @compileError("Unsupported OpenGL type: '" ++ @typeName(T) ++ "'"),
    };
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
        const bits =
            (if (mask.color) c.GL_COLOR_BUFFER_BIT else 0) |
            (if (mask.depth) c.GL_DEPTH_BUFFER_BIT else 0) |
            (if (mask.stencil) c.GL_STENCIL_BUFFER_BIT else 0);
        c.glClear(@intCast(bits));
    }

    pub fn color(r: f32, g: f32, b: f32, a: f32) void {
        c.glClearColor(r, g, b, a);
    }

    pub fn depth(value: f64) void {
        c.glClearDepth(value);
    }
};

pub const color = struct {
    pub const Mask = struct { r: bool, g: bool, b: bool, a: bool };

    pub fn mask(m: @Vector(4, bool)) void {
        c.glColorMask(@intFromBool(m[0]), @intFromBool(m[1]), @intFromBool(m[2]), @intFromBool(m[3]));
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

    pub fn elements(mode: Mode, count: usize, @"type": type, offset: ?usize) void {
        c.glDrawElements(@intFromEnum(mode), @intCast(count), fromType(@"type"), if (offset != null) @ptrFromInt(offset.? * @sizeOf(u32)) else null);
    }

    pub const indirect = struct {
        pub fn arrays(mode: Mode, i: *const anyopaque) void {
            c.glDrawArraysIndirect(@intFromEnum(mode), i);
        }

        pub fn elements(mode: Mode, @"type": type, i: *const anyopaque) void {
            c.glDrawElementsIndirect(@intFromEnum(mode), fromType(@"type"), @ptrCast(i));
        }
    };

    pub const instanced = struct {
        pub fn arrays(mode: Mode, first: usize, count: usize, instance_count: usize) void {
            c.glDrawArraysInstanced(@intFromEnum(mode), @intCast(first), @intCast(count), @intCast(instance_count));
        }

        pub fn elements(mode: Mode, count: usize, @"type": type, indices: *const anyopaque, instance_count: usize) void {
            c.glDrawElementsInstanced(@intFromEnum(mode), @intCast(count), fromType(@"type"), @ptrCast(indices), @intCast(instance_count));
        }
    };
};

pub const getString = String.get;
