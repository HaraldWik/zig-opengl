const std = @import("std");
const gl = @import("gl");
const glfw = @import("glfw");

pub fn main() !void {
    try glfw.init();
    defer glfw.deinit();

    const window: *glfw.Window = try .init(.{
        .title = "Hello, world!",
        .size = .{ .width = 900, .height = 800 },
    });
    defer window.deinit();

    // std.log.info("{any}, {s}", .{ glfw.version.get(), glfw.version.getStr() });

    glfw.opengl.makeContextCurrent(window);
    defer glfw.opengl.makeContextCurrent(null);

    try gl.init(glfw.opengl.getProcAddress);

    std.debug.print("{d}\n", .{@sizeOf(gl.Procs)});

    var n: c_int = undefined;
    gl.c.glGetIntegerv(gl.C.GL_NUM_EXTENSIONS, &n);

    for (0..@intCast(n)) |i| {
        const ext = gl.c.glGetStringi(gl.c.GL_EXTENSIONS, i);
        std.log.info("{s}", .{ext});
    }

    while (!window.shouldClose()) {
        glfw.io.events.poll();
        gl.clear.color(0.1, 0.5, 0.3, 1.0);
        gl.clear.buffer(.{ .color = true });

        if (glfw.io.Key.a.get(window)) {
            std.debug.print("A\n", .{});
        }

        try glfw.opengl.swapBuffers(window);
    }
}
