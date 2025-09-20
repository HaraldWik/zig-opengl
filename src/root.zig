pub const C = @import("C.zig");

pub var c: C = undefined;

pub fn init(loader: anytype) !void {
    inline for (@typeInfo(@TypeOf(c)).@"struct".fields) |proc| {
        @field(c, proc.name) = @ptrCast(loader(proc.name) orelse return error.ProcNotFound);
    }
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
    const bitmask: c_uint = @intCast(if (mask.color) C.GL_COLOR_BUFFER_BIT else 0 | if (mask.depth) C.GL_DEPTH_BUFFER_BIT else 0 | if (mask.stencil) C.GL_STENCIL_BUFFER_BIT else 0);
    c.glClear(bitmask);
}
