const std = @import("std");
const gl = @import("gl");
const glfw = @import("glfw");

var vertices = [_]f32{
    // x,    y,    z
    -0.5, -0.5, 0.0, // Bottom-left
    0.5, -0.5, 0.0, // Bottom-right
    0.0, 0.5, 0.0, // Top
};

pub const vertex: [*:0]const u8 =
    \\#version 460 core
    \\layout (location = 0) in vec3 aPos;
    \\void main() {
    \\    gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
    \\}
;
pub const fragment: [*:0]const u8 =
    \\#version 460 core
    \\out vec4 FragColor;
    \\void main() {
    \\    FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f); // Orange color
    \\}
;

pub fn main() !void {
    try glfw.init();
    defer glfw.deinit();

    const window: *glfw.Window = try .init(.{
        .title = "Hello, world!",
        .size = .{ .width = 900, .height = 800 },
    });
    defer window.deinit();

    glfw.opengl.makeContextCurrent(window);
    defer glfw.opengl.makeContextCurrent(null);

    try gl.init(glfw.opengl.getProcAddress);

    const vao: gl.Vao = try .gen();
    vao.bind();

    const vbo: gl.Buffer = try .gen();
    vbo.bufferData(.array, .static_draw, &vertices);

    vao.vertexAttribPointer(0, 3, null);

    const vertex_shader: gl.Shader = .init(.vertex);
    defer vertex_shader.deinit();
    vertex_shader.source(vertex);
    try vertex_shader.compile();

    const fragment_shader: gl.Shader = .init(.fragment);
    defer fragment_shader.deinit();
    fragment_shader.source(fragment);
    try fragment_shader.compile();

    const program: gl.Program = .init();
    defer program.deinit();
    program.attach(vertex_shader);
    program.attach(fragment_shader);
    try program.link();

    while (!window.shouldClose()) {
        glfw.io.events.poll();
        gl.clear.color(0.1, 0.5, 0.3, 1.0);
        gl.clear.buffer(.{ .color = true });

        const width: usize, const height: usize = window.getSize().toArray();

        gl.draw.viewport(0, 0, width, height);

        program.use();
        vao.bind();
        gl.draw.arrays(.triangles, 0, vertices.len);

        if (glfw.io.Key.a.get(window)) {
            std.debug.print("A\n", .{});
        }

        try glfw.opengl.swapBuffers(window);
    }
}
