pub const c = @import("c.zig");
pub const Procs = @import("Procs.zig");

pub var procs: Procs = undefined;

pub fn init(loader: anytype) !void {
    procs = try .init(loader);
}

pub fn clearIndex(i: f32) void {
    c.glClearIndex(i);
}

pub fn clearColor(r: f32, g: f32, b: f32, a: f32) void {
    c.glClearColor(r, g, b, a);
}

pub fn clear(mask: packed struct(u3) {
    color: bool = false,
    depth: bool = false,
    stencil: bool = false,
}) void {
    const bitmask: c_uint = @intCast(if (mask.color) c.GL_COLOR_BUFFER_BIT else 0 | if (mask.depth) c.GL_DEPTH_BUFFER_BIT else 0 | if (mask.stencil) c.GL_STENCIL_BUFFER_BIT else 0);
    c.glClear(bitmask);
}
