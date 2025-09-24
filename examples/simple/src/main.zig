const std = @import("std");
const gl = @import("gl");
const glfw = @import("glfw");

var vertices = [_]f32{
    -0.5, -0.5, 0.0, 0.0, 0.0,
    -0.5, 0.5,  0.0, 0.0, 1.0,
    0.5,  0.5,  0.0, 1.0, 1.0,
    0.5,  -0.5, 0.0, 1.0, 0.0,
};

var indices = [_]u32{
    0, 2, 1,
    0, 3, 2,
};

pub const vertex: [*:0]const u8 =
    \\#version 460 core
    \\layout (location = 0) in vec3 pos;
    \\layout (location = 1) in vec2 uvs;
    \\
    \\out vec2 UVs;
    \\
    \\void main() {
    \\    gl_Position = vec4(pos, 1.0);
    \\    UVs = uvs;
    \\}
;

pub const fragment: [*:0]const u8 =
    \\#version 460 core
    \\in vec2 UVs;
    \\out vec4 FragColor;
    \\void main() {
    \\    FragColor = vec4(UVs, 0.2f, 1.0f); // Orange color
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

    const renderer = gl.c.glGetString(gl.c.GL_RENDERER);
    const vendor = gl.c.glGetString(gl.c.GL_VENDOR);
    const version = gl.c.glGetString(gl.c.GL_VERSION);

    std.debug.print("Renderer: {s}\n", .{renderer});
    std.debug.print("Vendor:   {s}\n", .{vendor});
    std.debug.print("Version:  {s}\n", .{version});

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

    vao.vertexAttribute(0, 0, 3, .f32, false, 0);
    vao.vertexAttribute(1, 0, 2, .f32, false, @sizeOf(f32) * 3);

    vao.vertexBuffer(vbo, 0, 0, @sizeOf(f32) * 5);
    vao.elementBuffer(ebo);

    while (!window.shouldClose()) {
        glfw.io.events.poll();
        gl.clear.color(0.1, 0.5, 0.3, 1.0);
        gl.clear.buffer(.{ .color = true });

        const width: usize, const height: usize = window.getSize().toArray();

        gl.draw.viewport(0, 0, width, height);

        program.use();
        vao.bind();
        gl.draw.elements(.triangles, 0, .u32, 0);

        try glfw.opengl.swapBuffers(window);
    }
}
