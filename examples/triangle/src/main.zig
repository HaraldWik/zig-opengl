const std = @import("std");
const gl = @import("gl");
const glfw = @import("glfw");

var vertices = [_]f32{
    // x,    y,    z
    -0.5, -0.5, 0.0, // Bottom-left
    0.5, -0.5, 0.0, // Bottom-right
    0.0, 0.5, 0.0, // Top
};

var indices = [_]u32{
    0, 1, 2,
};

pub const vertex: [*:0]const u8 =
    \\#version 460 core
    \\layout (location = 0) in vec3 aPos;
    \\void main() {
    \\    gl_Position = vec4(aPos, 1.0);
    \\}
;
pub const fragment: [*:0]const u8 =
    \\#version 460 core
    \\out vec4 FragColor;
    \\uniform vec4 color;
    \\void main() {
    \\    FragColor = color;
    \\}
;

pub fn main() !void {
    try glfw.init();
    defer glfw.deinit();

    glfw.Window.Hint.set(.{ .context_version_major = 4 });
    glfw.Window.Hint.set(.{ .context_version_minor = 6 });
    glfw.Window.Hint.set(.{ .opengl_profile = .core });

    const window: *glfw.Window = try .init(.{
        .title = "Hello, world!",
        .size = .{ .width = 900, .height = 800 },
    });
    defer window.deinit();

    glfw.opengl.makeContextCurrent(window);
    defer glfw.opengl.makeContextCurrent(null);

    try gl.init(glfw.opengl.getProcAddress);
    gl.debug.set(null);

    const vertex_shader: gl.Shader = .init(.vertex);
    defer vertex_shader.deinit();
    vertex_shader.source(vertex);
    try vertex_shader.compile();

    const fragment_shader: gl.Shader = .init(.fragment);
    defer fragment_shader.deinit();
    fragment_shader.source(fragment);
    try fragment_shader.compile();

    const program: gl.Program = try .init();
    defer program.deinit();
    program.attach(vertex_shader);
    program.attach(fragment_shader);
    try program.link();

    const vao: gl.Vao = try .init();
    const vbo: gl.Buffer = try .init();
    const ebo: gl.Buffer = try .init();
    defer vao.deinit();
    defer vbo.deinit();
    defer ebo.deinit();

    vbo.bufferData(.static_draw, &vertices);
    ebo.bufferData(.static_draw, &indices);

    vao.vertexAttribute(0, 0, 3, f32, false, 0);

    vao.vertexBuffer(vbo, 0, 0, 3 * @sizeOf(f32));
    vao.elementBuffer(ebo);

    while (!window.shouldClose()) {
        glfw.io.events.poll();
        gl.clear.color(0.1, 0.5, 0.3, 1.0);
        gl.clear.buffer(.{ .color = true });

        const width: usize, const height: usize = window.getSize().toArray();

        gl.draw.viewport(0, 0, width, height);

        program.use();
        vao.bind();

        gl.draw.elements(.triangles, indices.len * @sizeOf(u32), u32, null);

        const color: [4]f32 = if (glfw.io.Key.a.get(window)) .{ 0.3, 0.2, 1.0, 1.0 } else .{ 1.0, 0.5, 0.2, 1.0 };

        try program.setUniform("color", .{ .f32x4 = color });

        try glfw.opengl.swapBuffers(window);
    }
}
