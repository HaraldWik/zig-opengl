pub const c = @import("c.zig");
pub const Procs = @import("Procs.zig");

pub var procs: Procs = undefined;

pub fn init(loader: anytype) !void {
    procs = try .init(loader);
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

pub const index = struct {
    pub fn clear(i: f32) void {
        procs.glClearIndex(i);
    }
};

pub const color = struct {
    pub const Mask = struct { r: bool, g: bool, b: bool, a: bool };

    pub fn mask(m: @Vector(4, bool)) void {
        procs.glColorMask(@intFromBool(m[0]), @intFromBool(m[1]), @intFromBool(m[2]), @intFromBool(m[3]));
    }
};
