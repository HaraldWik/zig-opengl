const std = @import("std");
const builtin = @import("builtin");

pub const APIENTRY: std.builtin.CallingConvention = if (builtin.os.tag == .windows) .winapi else .c;

pub const Sync = *opaque {};
pub const @"enum" = c_ushort;
pub const Bitfield = c_uint;
pub const @"bool" = u8;

pub const GLDEBUGPROC = ?*const fn (@"enum", @"enum", c_uint, @"enum", c_int, [*c]const u8, ?*const anyopaque) callconv(.c) void;
pub const GLDEBUGPROCARB = ?*const fn (@"enum", @"enum", c_uint, @"enum", c_int, [*c]const u8, ?*const anyopaque) callconv(.c) void;
pub const struct__cl_context = opaque {};
pub const struct__cl_event = opaque {};
pub const GLeglImageOES = ?*anyopaque;
pub const GLVULKANPROCNV = ?*const fn () callconv(.c) void;

pub threadlocal var procs: Procs = undefined;

pub const Procs = struct {
    glCullFace: ?*const fn (mode: @"enum") callconv(APIENTRY) void,
    glFrontFace: ?*const fn (mode: @"enum") callconv(APIENTRY) void,
    glHint: ?*const fn (target: @"enum", mode: @"enum") callconv(APIENTRY) void,
    glLineWidth: ?*const fn (width: f32) callconv(APIENTRY) void,
    glPointSize: ?*const fn (size: f32) callconv(APIENTRY) void,
    glPolygonMode: ?*const fn (face: @"enum", mode: @"enum") callconv(APIENTRY) void,
    glScissor: ?*const fn (x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glTexParameterf: ?*const fn (target: @"enum", pname: @"enum", param: f32) callconv(APIENTRY) void,
    glTexParameterfv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]const f32) callconv(APIENTRY) void,
    glTexParameteri: ?*const fn (target: @"enum", pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glTexParameteriv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glTexImage1D: ?*const fn (target: @"enum", level: c_int, internalformat: c_int, width: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glTexImage2D: ?*const fn (target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glDrawBuffer: ?*const fn (buf: @"enum") callconv(APIENTRY) void,
    glClear: ?*const fn (mask: Bitfield) callconv(APIENTRY) void,
    glClearColor: ?*const fn (red: f32, green: f32, blue: f32, alpha: f32) callconv(APIENTRY) void,
    glClearStencil: ?*const fn (s: c_int) callconv(APIENTRY) void,
    glClearDepth: ?*const fn (depth: f64) callconv(APIENTRY) void,
    glStencilMask: ?*const fn (mask: c_uint) callconv(APIENTRY) void,
    glColorMask: ?*const fn (red: @"bool", green: @"bool", blue: @"bool", alpha: @"bool") callconv(APIENTRY) void,
    glDepthMask: ?*const fn (flag: @"bool") callconv(APIENTRY) void,
    glDisable: ?*const fn (cap: @"enum") callconv(APIENTRY) void,
    glEnable: ?*const fn (cap: @"enum") callconv(APIENTRY) void,
    glFinish: ?*const fn () callconv(APIENTRY) void,
    glFlush: ?*const fn () callconv(APIENTRY) void,
    glBlendFunc: ?*const fn (sfactor: @"enum", dfactor: @"enum") callconv(APIENTRY) void,
    glLogicOp: ?*const fn (opcode: @"enum") callconv(APIENTRY) void,
    glStencilFunc: ?*const fn (func: @"enum", ref: c_int, mask: c_uint) callconv(APIENTRY) void,
    glStencilOp: ?*const fn (fail: @"enum", zfail: @"enum", zpass: @"enum") callconv(APIENTRY) void,
    glDepthFunc: ?*const fn (func: @"enum") callconv(APIENTRY) void,
    glPixelStoref: ?*const fn (pname: @"enum", param: f32) callconv(APIENTRY) void,
    glPixelStorei: ?*const fn (pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glReadBuffer: ?*const fn (src: @"enum") callconv(APIENTRY) void,
    glReadPixels: ?*const fn (x: c_int, y: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetBooleanv: ?*const fn (pname: @"enum", data: [*c]@"bool") callconv(APIENTRY) void,
    glGetDoublev: ?*const fn (pname: @"enum", data: [*c]f64) callconv(APIENTRY) void,
    glGetError: ?*const fn () callconv(APIENTRY) @"enum",
    glGetFloatv: ?*const fn (pname: @"enum", data: [*c]f32) callconv(APIENTRY) void,
    glGetIntegerv: ?*const fn (pname: @"enum", data: [*c]c_int) callconv(APIENTRY) void,
    glGetString: ?*const fn (name: @"enum") callconv(APIENTRY) [*c]const u8,
    glGetTexImage: ?*const fn (target: @"enum", level: c_int, format: @"enum", @"type": @"enum", pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetTexParameterfv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetTexParameteriv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetTexLevelParameterfv: ?*const fn (target: @"enum", level: c_int, pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetTexLevelParameteriv: ?*const fn (target: @"enum", level: c_int, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glIsEnabled: ?*const fn (cap: @"enum") callconv(APIENTRY) @"bool",
    glDepthRange: ?*const fn (n: f64, f: f64) callconv(APIENTRY) void,
    glViewport: ?*const fn (x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glDrawArrays: ?*const fn (mode: @"enum", first: c_int, count: c_int) callconv(APIENTRY) void,
    glDrawElements: ?*const fn (mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque) callconv(APIENTRY) void,
    glGetPointerv: ?*const fn (pname: @"enum", params: [*c]?*anyopaque) callconv(APIENTRY) void,
    glPolygonOffset: ?*const fn (factor: f32, units: f32) callconv(APIENTRY) void,
    glCopyTexImage1D: ?*const fn (target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, border: c_int) callconv(APIENTRY) void,
    glCopyTexImage2D: ?*const fn (target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, height: c_int, border: c_int) callconv(APIENTRY) void,
    glCopyTexSubImage1D: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, x: c_int, y: c_int, width: c_int) callconv(APIENTRY) void,
    glCopyTexSubImage2D: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glTexSubImage1D: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glTexSubImage2D: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glBindTexture: ?*const fn (target: @"enum", texture: c_uint) callconv(APIENTRY) void,
    glDeleteTextures: ?*const fn (n: c_int, textures: [*c]const c_uint) callconv(APIENTRY) void,
    glGenTextures: ?*const fn (n: c_int, textures: [*c]c_uint) callconv(APIENTRY) void,
    glIsTexture: ?*const fn (texture: c_uint) callconv(APIENTRY) @"bool",
    glDrawRangeElements: ?*const fn (mode: @"enum", start: c_uint, end: c_uint, count: c_int, @"type": @"enum", indices: ?*const anyopaque) callconv(APIENTRY) void,
    glTexImage3D: ?*const fn (target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, depth: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glTexSubImage3D: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glCopyTexSubImage3D: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glActiveTexture: ?*const fn (texture: @"enum") callconv(APIENTRY) void,
    glSampleCoverage: ?*const fn (value: f32, invert: @"bool") callconv(APIENTRY) void,
    glCompressedTexImage3D: ?*const fn (target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, border: c_int, imageSize: c_int, data: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTexImage2D: ?*const fn (target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, border: c_int, imageSize: c_int, data: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTexImage1D: ?*const fn (target: @"enum", level: c_int, internalformat: @"enum", width: c_int, border: c_int, imageSize: c_int, data: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTexSubImage3D: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTexSubImage2D: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTexSubImage1D: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) callconv(APIENTRY) void,
    glGetCompressedTexImage: ?*const fn (target: @"enum", level: c_int, img: ?*anyopaque) callconv(APIENTRY) void,
    glBlendFuncSeparate: ?*const fn (sfactorRGB: @"enum", dfactorRGB: @"enum", sfactorAlpha: @"enum", dfactorAlpha: @"enum") callconv(APIENTRY) void,
    glMultiDrawArrays: ?*const fn (mode: @"enum", first: [*c]const c_int, count: [*c]const c_int, drawcount: c_int) callconv(APIENTRY) void,
    glMultiDrawElements: ?*const fn (mode: @"enum", count: [*c]const c_int, @"type": @"enum", indices: [*c]const ?*const anyopaque, drawcount: c_int) callconv(APIENTRY) void,
    glPointParameterf: ?*const fn (pname: @"enum", param: f32) callconv(APIENTRY) void,
    glPointParameterfv: ?*const fn (pname: @"enum", params: [*c]const f32) callconv(APIENTRY) void,
    glPointParameteri: ?*const fn (pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glPointParameteriv: ?*const fn (pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glBlendColor: ?*const fn (red: f32, green: f32, blue: f32, alpha: f32) callconv(APIENTRY) void,
    glBlendEquation: ?*const fn (mode: @"enum") callconv(APIENTRY) void,
    glGenQueries: ?*const fn (n: c_int, ids: [*c]c_uint) callconv(APIENTRY) void,
    glDeleteQueries: ?*const fn (n: c_int, ids: [*c]const c_uint) callconv(APIENTRY) void,
    glIsQuery: ?*const fn (id: c_uint) callconv(APIENTRY) @"bool",
    glBeginQuery: ?*const fn (target: @"enum", id: c_uint) callconv(APIENTRY) void,
    glEndQuery: ?*const fn (target: @"enum") callconv(APIENTRY) void,
    glGetQueryiv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetQueryObjectiv: ?*const fn (id: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetQueryObjectuiv: ?*const fn (id: c_uint, pname: @"enum", params: [*c]c_uint) callconv(APIENTRY) void,
    glBindBuffer: ?*const fn (target: @"enum", buffer: c_uint) callconv(APIENTRY) void,
    glDeleteBuffers: ?*const fn (n: c_int, buffers: [*c]const c_uint) callconv(APIENTRY) void,
    glGenBuffers: ?*const fn (n: c_int, buffers: [*c]c_uint) callconv(APIENTRY) void,
    glIsBuffer: ?*const fn (buffer: c_uint) callconv(APIENTRY) @"bool",
    glBufferData: ?*const fn (target: @"enum", size: c_ulong, data: ?*const anyopaque, usage: @"enum") callconv(APIENTRY) void,
    glBufferSubData: ?*const fn (target: @"enum", offset: c_long, size: c_ulong, data: ?*const anyopaque) callconv(APIENTRY) void,
    glGetBufferSubData: ?*const fn (target: @"enum", offset: c_long, size: c_ulong, data: ?*anyopaque) callconv(APIENTRY) void,
    glMapBuffer: ?*const fn (target: @"enum", access: @"enum") callconv(APIENTRY) ?*anyopaque,
    glUnmapBuffer: ?*const fn (target: @"enum") callconv(APIENTRY) @"bool",
    glGetBufferParameteriv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetBufferPointerv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]?*anyopaque) callconv(APIENTRY) void,
    glBlendEquationSeparate: ?*const fn (modeRGB: @"enum", modeAlpha: @"enum") callconv(APIENTRY) void,
    glDrawBuffers: ?*const fn (n: c_int, bufs: [*c]const @"enum") callconv(APIENTRY) void,
    glStencilOpSeparate: ?*const fn (face: @"enum", sfail: @"enum", dpfail: @"enum", dppass: @"enum") callconv(APIENTRY) void,
    glStencilFuncSeparate: ?*const fn (face: @"enum", func: @"enum", ref: c_int, mask: c_uint) callconv(APIENTRY) void,
    glStencilMaskSeparate: ?*const fn (face: @"enum", mask: c_uint) callconv(APIENTRY) void,
    glAttachShader: ?*const fn (program: c_uint, shader: c_uint) callconv(APIENTRY) void,
    glBindAttribLocation: ?*const fn (program: c_uint, index: c_uint, name: [*c]const u8) callconv(APIENTRY) void,
    glCompileShader: ?*const fn (shader: c_uint) callconv(APIENTRY) void,
    glCreateProgram: ?*const fn () callconv(APIENTRY) c_uint,
    glCreateShader: ?*const fn (@"type": @"enum") callconv(APIENTRY) c_uint,
    glDeleteProgram: ?*const fn (program: c_uint) callconv(APIENTRY) void,
    glDeleteShader: ?*const fn (shader: c_uint) callconv(APIENTRY) void,
    glDetachShader: ?*const fn (program: c_uint, shader: c_uint) callconv(APIENTRY) void,
    glDisableVertexAttribArray: ?*const fn (index: c_uint) callconv(APIENTRY) void,
    glEnableVertexAttribArray: ?*const fn (index: c_uint) callconv(APIENTRY) void,
    glGetActiveAttrib: ?*const fn (program: c_uint, index: c_uint, bufSize: c_int, length: [*c]c_int, size: [*c]c_int, @"type": [*c]@"enum", name: [*c]u8) callconv(APIENTRY) void,
    glGetActiveUniform: ?*const fn (program: c_uint, index: c_uint, bufSize: c_int, length: [*c]c_int, size: [*c]c_int, @"type": [*c]@"enum", name: [*c]u8) callconv(APIENTRY) void,
    glGetAttachedShaders: ?*const fn (program: c_uint, maxCount: c_int, count: [*c]c_int, shaders: [*c]c_uint) callconv(APIENTRY) void,
    glGetAttribLocation: ?*const fn (program: c_uint, name: [*c]const u8) callconv(APIENTRY) c_int,
    glGetProgramiv: ?*const fn (program: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetProgramInfoLog: ?*const fn (program: c_uint, bufSize: c_int, length: [*c]c_int, infoLog: [*c]u8) callconv(APIENTRY) void,
    glGetShaderiv: ?*const fn (shader: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetShaderInfoLog: ?*const fn (shader: c_uint, bufSize: c_int, length: [*c]c_int, infoLog: [*c]u8) callconv(APIENTRY) void,
    glGetShaderSource: ?*const fn (shader: c_uint, bufSize: c_int, length: [*c]c_int, source: [*c]u8) callconv(APIENTRY) void,
    glGetUniformLocation: ?*const fn (program: c_uint, name: [*c]const u8) callconv(APIENTRY) c_int,
    glGetUniformfv: ?*const fn (program: c_uint, location: c_int, params: [*c]f32) callconv(APIENTRY) void,
    glGetUniformiv: ?*const fn (program: c_uint, location: c_int, params: [*c]c_int) callconv(APIENTRY) void,
    glGetVertexAttribdv: ?*const fn (index: c_uint, pname: @"enum", params: [*c]f64) callconv(APIENTRY) void,
    glGetVertexAttribfv: ?*const fn (index: c_uint, pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetVertexAttribiv: ?*const fn (index: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetVertexAttribPointerv: ?*const fn (index: c_uint, pname: @"enum", pointer: [*c]?*anyopaque) callconv(APIENTRY) void,
    glIsProgram: ?*const fn (program: c_uint) callconv(APIENTRY) @"bool",
    glIsShader: ?*const fn (shader: c_uint) callconv(APIENTRY) @"bool",
    glLinkProgram: ?*const fn (program: c_uint) callconv(APIENTRY) void,
    glShaderSource: ?*const fn (shader: c_uint, count: c_int, string: [*c]const [*c]const u8, length: [*c]const c_int) callconv(APIENTRY) void,
    glUseProgram: ?*const fn (program: c_uint) callconv(APIENTRY) void,
    glUniform1f: ?*const fn (location: c_int, v0: f32) callconv(APIENTRY) void,
    glUniform2f: ?*const fn (location: c_int, v0: f32, v1: f32) callconv(APIENTRY) void,
    glUniform3f: ?*const fn (location: c_int, v0: f32, v1: f32, v2: f32) callconv(APIENTRY) void,
    glUniform4f: ?*const fn (location: c_int, v0: f32, v1: f32, v2: f32, v3: f32) callconv(APIENTRY) void,
    glUniform1i: ?*const fn (location: c_int, v0: c_int) callconv(APIENTRY) void,
    glUniform2i: ?*const fn (location: c_int, v0: c_int, v1: c_int) callconv(APIENTRY) void,
    glUniform3i: ?*const fn (location: c_int, v0: c_int, v1: c_int, v2: c_int) callconv(APIENTRY) void,
    glUniform4i: ?*const fn (location: c_int, v0: c_int, v1: c_int, v2: c_int, v3: c_int) callconv(APIENTRY) void,
    glUniform1fv: ?*const fn (location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glUniform2fv: ?*const fn (location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glUniform3fv: ?*const fn (location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glUniform4fv: ?*const fn (location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glUniform1iv: ?*const fn (location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glUniform2iv: ?*const fn (location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glUniform3iv: ?*const fn (location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glUniform4iv: ?*const fn (location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glUniformMatrix2fv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glUniformMatrix3fv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glUniformMatrix4fv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glValidateProgram: ?*const fn (program: c_uint) callconv(APIENTRY) void,
    glVertexAttrib1d: ?*const fn (index: c_uint, x: f64) callconv(APIENTRY) void,
    glVertexAttrib1dv: ?*const fn (index: c_uint, v: [*c]const f64) callconv(APIENTRY) void,
    glVertexAttrib1f: ?*const fn (index: c_uint, x: f32) callconv(APIENTRY) void,
    glVertexAttrib1fv: ?*const fn (index: c_uint, v: [*c]const f32) callconv(APIENTRY) void,
    glVertexAttrib1s: ?*const fn (index: c_uint, x: c_short) callconv(APIENTRY) void,
    glVertexAttrib1sv: ?*const fn (index: c_uint, v: [*c]const c_short) callconv(APIENTRY) void,
    glVertexAttrib2d: ?*const fn (index: c_uint, x: f64, y: f64) callconv(APIENTRY) void,
    glVertexAttrib2dv: ?*const fn (index: c_uint, v: [*c]const f64) callconv(APIENTRY) void,
    glVertexAttrib2f: ?*const fn (index: c_uint, x: f32, y: f32) callconv(APIENTRY) void,
    glVertexAttrib2fv: ?*const fn (index: c_uint, v: [*c]const f32) callconv(APIENTRY) void,
    glVertexAttrib2s: ?*const fn (index: c_uint, x: c_short, y: c_short) callconv(APIENTRY) void,
    glVertexAttrib2sv: ?*const fn (index: c_uint, v: [*c]const c_short) callconv(APIENTRY) void,
    glVertexAttrib3d: ?*const fn (index: c_uint, x: f64, y: f64, z: f64) callconv(APIENTRY) void,
    glVertexAttrib3dv: ?*const fn (index: c_uint, v: [*c]const f64) callconv(APIENTRY) void,
    glVertexAttrib3f: ?*const fn (index: c_uint, x: f32, y: f32, z: f32) callconv(APIENTRY) void,
    glVertexAttrib3fv: ?*const fn (index: c_uint, v: [*c]const f32) callconv(APIENTRY) void,
    glVertexAttrib3s: ?*const fn (index: c_uint, x: c_short, y: c_short, z: c_short) callconv(APIENTRY) void,
    glVertexAttrib3sv: ?*const fn (index: c_uint, v: [*c]const c_short) callconv(APIENTRY) void,
    glVertexAttrib4Nbv: ?*const fn (index: c_uint, v: [*c]const i8) callconv(APIENTRY) void,
    glVertexAttrib4Niv: ?*const fn (index: c_uint, v: [*c]const c_int) callconv(APIENTRY) void,
    glVertexAttrib4Nsv: ?*const fn (index: c_uint, v: [*c]const c_short) callconv(APIENTRY) void,
    glVertexAttrib4Nub: ?*const fn (index: c_uint, x: u8, y: u8, z: u8, w: u8) callconv(APIENTRY) void,
    glVertexAttrib4Nubv: ?*const fn (index: c_uint, v: [*c]const u8) callconv(APIENTRY) void,
    glVertexAttrib4Nuiv: ?*const fn (index: c_uint, v: [*c]const c_uint) callconv(APIENTRY) void,
    glVertexAttrib4Nusv: ?*const fn (index: c_uint, v: [*c]const c_ushort) callconv(APIENTRY) void,
    glVertexAttrib4bv: ?*const fn (index: c_uint, v: [*c]const i8) callconv(APIENTRY) void,
    glVertexAttrib4d: ?*const fn (index: c_uint, x: f64, y: f64, z: f64, w: f64) callconv(APIENTRY) void,
    glVertexAttrib4dv: ?*const fn (index: c_uint, v: [*c]const f64) callconv(APIENTRY) void,
    glVertexAttrib4f: ?*const fn (index: c_uint, x: f32, y: f32, z: f32, w: f32) callconv(APIENTRY) void,
    glVertexAttrib4fv: ?*const fn (index: c_uint, v: [*c]const f32) callconv(APIENTRY) void,
    glVertexAttrib4iv: ?*const fn (index: c_uint, v: [*c]const c_int) callconv(APIENTRY) void,
    glVertexAttrib4s: ?*const fn (index: c_uint, x: c_short, y: c_short, z: c_short, w: c_short) callconv(APIENTRY) void,
    glVertexAttrib4sv: ?*const fn (index: c_uint, v: [*c]const c_short) callconv(APIENTRY) void,
    glVertexAttrib4ubv: ?*const fn (index: c_uint, v: [*c]const u8) callconv(APIENTRY) void,
    glVertexAttrib4uiv: ?*const fn (index: c_uint, v: [*c]const c_uint) callconv(APIENTRY) void,
    glVertexAttrib4usv: ?*const fn (index: c_uint, v: [*c]const c_ushort) callconv(APIENTRY) void,
    glVertexAttribPointer: ?*const fn (index: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", stride: c_int, pointer: ?*const anyopaque) callconv(APIENTRY) void,
    glUniformMatrix2x3fv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glUniformMatrix3x2fv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glUniformMatrix2x4fv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glUniformMatrix4x2fv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glUniformMatrix3x4fv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glUniformMatrix4x3fv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glColorMaski: ?*const fn (index: c_uint, r: @"bool", g: @"bool", b: @"bool", a: @"bool") callconv(APIENTRY) void,
    glGetBooleani_v: ?*const fn (target: @"enum", index: c_uint, data: [*c]@"bool") callconv(APIENTRY) void,
    glGetIntegeri_v: ?*const fn (target: @"enum", index: c_uint, data: [*c]c_int) callconv(APIENTRY) void,
    glEnablei: ?*const fn (target: @"enum", index: c_uint) callconv(APIENTRY) void,
    glDisablei: ?*const fn (target: @"enum", index: c_uint) callconv(APIENTRY) void,
    glIsEnabledi: ?*const fn (target: @"enum", index: c_uint) callconv(APIENTRY) @"bool",
    glBeginTransformFeedback: ?*const fn (primitiveMode: @"enum") callconv(APIENTRY) void,
    glEndTransformFeedback: ?*const fn () callconv(APIENTRY) void,
    glBindBufferRange: ?*const fn (target: @"enum", index: c_uint, buffer: c_uint, offset: c_long, size: c_ulong) callconv(APIENTRY) void,
    glBindBufferBase: ?*const fn (target: @"enum", index: c_uint, buffer: c_uint) callconv(APIENTRY) void,
    glTransformFeedbackVaryings: ?*const fn (program: c_uint, count: c_int, varyings: [*c]const [*c]const u8, bufferMode: @"enum") callconv(APIENTRY) void,
    glGetTransformFeedbackVarying: ?*const fn (program: c_uint, index: c_uint, bufSize: c_int, length: [*c]c_int, size: [*c]c_int, @"type": [*c]@"enum", name: [*c]u8) callconv(APIENTRY) void,
    glClampColor: ?*const fn (target: @"enum", clamp: @"enum") callconv(APIENTRY) void,
    glBeginConditionalRender: ?*const fn (id: c_uint, mode: @"enum") callconv(APIENTRY) void,
    glEndConditionalRender: ?*const fn () callconv(APIENTRY) void,
    glVertexAttribIPointer: ?*const fn (index: c_uint, size: c_int, @"type": @"enum", stride: c_int, pointer: ?*const anyopaque) callconv(APIENTRY) void,
    glGetVertexAttribIiv: ?*const fn (index: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetVertexAttribIuiv: ?*const fn (index: c_uint, pname: @"enum", params: [*c]c_uint) callconv(APIENTRY) void,
    glVertexAttribI1i: ?*const fn (index: c_uint, x: c_int) callconv(APIENTRY) void,
    glVertexAttribI2i: ?*const fn (index: c_uint, x: c_int, y: c_int) callconv(APIENTRY) void,
    glVertexAttribI3i: ?*const fn (index: c_uint, x: c_int, y: c_int, z: c_int) callconv(APIENTRY) void,
    glVertexAttribI4i: ?*const fn (index: c_uint, x: c_int, y: c_int, z: c_int, w: c_int) callconv(APIENTRY) void,
    glVertexAttribI1ui: ?*const fn (index: c_uint, x: c_uint) callconv(APIENTRY) void,
    glVertexAttribI2ui: ?*const fn (index: c_uint, x: c_uint, y: c_uint) callconv(APIENTRY) void,
    glVertexAttribI3ui: ?*const fn (index: c_uint, x: c_uint, y: c_uint, z: c_uint) callconv(APIENTRY) void,
    glVertexAttribI4ui: ?*const fn (index: c_uint, x: c_uint, y: c_uint, z: c_uint, w: c_uint) callconv(APIENTRY) void,
    glVertexAttribI1iv: ?*const fn (index: c_uint, v: [*c]const c_int) callconv(APIENTRY) void,
    glVertexAttribI2iv: ?*const fn (index: c_uint, v: [*c]const c_int) callconv(APIENTRY) void,
    glVertexAttribI3iv: ?*const fn (index: c_uint, v: [*c]const c_int) callconv(APIENTRY) void,
    glVertexAttribI4iv: ?*const fn (index: c_uint, v: [*c]const c_int) callconv(APIENTRY) void,
    glVertexAttribI1uiv: ?*const fn (index: c_uint, v: [*c]const c_uint) callconv(APIENTRY) void,
    glVertexAttribI2uiv: ?*const fn (index: c_uint, v: [*c]const c_uint) callconv(APIENTRY) void,
    glVertexAttribI3uiv: ?*const fn (index: c_uint, v: [*c]const c_uint) callconv(APIENTRY) void,
    glVertexAttribI4uiv: ?*const fn (index: c_uint, v: [*c]const c_uint) callconv(APIENTRY) void,
    glVertexAttribI4bv: ?*const fn (index: c_uint, v: [*c]const i8) callconv(APIENTRY) void,
    glVertexAttribI4sv: ?*const fn (index: c_uint, v: [*c]const c_short) callconv(APIENTRY) void,
    glVertexAttribI4ubv: ?*const fn (index: c_uint, v: [*c]const u8) callconv(APIENTRY) void,
    glVertexAttribI4usv: ?*const fn (index: c_uint, v: [*c]const c_ushort) callconv(APIENTRY) void,
    glGetUniformuiv: ?*const fn (program: c_uint, location: c_int, params: [*c]c_uint) callconv(APIENTRY) void,
    glBindFragDataLocation: ?*const fn (program: c_uint, color: c_uint, name: [*c]const u8) callconv(APIENTRY) void,
    glGetFragDataLocation: ?*const fn (program: c_uint, name: [*c]const u8) callconv(APIENTRY) c_int,
    glUniform1ui: ?*const fn (location: c_int, v0: c_uint) callconv(APIENTRY) void,
    glUniform2ui: ?*const fn (location: c_int, v0: c_uint, v1: c_uint) callconv(APIENTRY) void,
    glUniform3ui: ?*const fn (location: c_int, v0: c_uint, v1: c_uint, v2: c_uint) callconv(APIENTRY) void,
    glUniform4ui: ?*const fn (location: c_int, v0: c_uint, v1: c_uint, v2: c_uint, v3: c_uint) callconv(APIENTRY) void,
    glUniform1uiv: ?*const fn (location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glUniform2uiv: ?*const fn (location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glUniform3uiv: ?*const fn (location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glUniform4uiv: ?*const fn (location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glTexParameterIiv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glTexParameterIuiv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]const c_uint) callconv(APIENTRY) void,
    glGetTexParameterIiv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetTexParameterIuiv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]c_uint) callconv(APIENTRY) void,
    glClearBufferiv: ?*const fn (buffer: @"enum", drawbuffer: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glClearBufferuiv: ?*const fn (buffer: @"enum", drawbuffer: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glClearBufferfv: ?*const fn (buffer: @"enum", drawbuffer: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glClearBufferfi: ?*const fn (buffer: @"enum", drawbuffer: c_int, depth: f32, stencil: c_int) callconv(APIENTRY) void,
    glGetStringi: ?*const fn (name: @"enum", index: c_uint) callconv(APIENTRY) [*c]const u8,
    glIsRenderbuffer: ?*const fn (renderbuffer: c_uint) callconv(APIENTRY) @"bool",
    glBindRenderbuffer: ?*const fn (target: @"enum", renderbuffer: c_uint) callconv(APIENTRY) void,
    glDeleteRenderbuffers: ?*const fn (n: c_int, renderbuffers: [*c]const c_uint) callconv(APIENTRY) void,
    glGenRenderbuffers: ?*const fn (n: c_int, renderbuffers: [*c]c_uint) callconv(APIENTRY) void,
    glRenderbufferStorage: ?*const fn (target: @"enum", internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glGetRenderbufferParameteriv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glIsFramebuffer: ?*const fn (framebuffer: c_uint) callconv(APIENTRY) @"bool",
    glBindFramebuffer: ?*const fn (target: @"enum", framebuffer: c_uint) callconv(APIENTRY) void,
    glDeleteFramebuffers: ?*const fn (n: c_int, framebuffers: [*c]const c_uint) callconv(APIENTRY) void,
    glGenFramebuffers: ?*const fn (n: c_int, framebuffers: [*c]c_uint) callconv(APIENTRY) void,
    glCheckFramebufferStatus: ?*const fn (target: @"enum") callconv(APIENTRY) @"enum",
    glFramebufferTexture1D: ?*const fn (target: @"enum", attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int) callconv(APIENTRY) void,
    glFramebufferTexture2D: ?*const fn (target: @"enum", attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int) callconv(APIENTRY) void,
    glFramebufferTexture3D: ?*const fn (target: @"enum", attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int, zoffset: c_int) callconv(APIENTRY) void,
    glFramebufferRenderbuffer: ?*const fn (target: @"enum", attachment: @"enum", renderbuffertarget: @"enum", renderbuffer: c_uint) callconv(APIENTRY) void,
    glGetFramebufferAttachmentParameteriv: ?*const fn (target: @"enum", attachment: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGenerateMipmap: ?*const fn (target: @"enum") callconv(APIENTRY) void,
    glBlitFramebuffer: ?*const fn (srcX0: c_int, srcY0: c_int, srcX1: c_int, srcY1: c_int, dstX0: c_int, dstY0: c_int, dstX1: c_int, dstY1: c_int, mask: Bitfield, filter: @"enum") callconv(APIENTRY) void,
    glRenderbufferStorageMultisample: ?*const fn (target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glFramebufferTextureLayer: ?*const fn (target: @"enum", attachment: @"enum", texture: c_uint, level: c_int, layer: c_int) callconv(APIENTRY) void,
    glMapBufferRange: ?*const fn (target: @"enum", offset: c_long, length: c_ulong, access: Bitfield) callconv(APIENTRY) ?*anyopaque,
    glFlushMappedBufferRange: ?*const fn (target: @"enum", offset: c_long, length: c_ulong) callconv(APIENTRY) void,
    glBindVertexArray: ?*const fn (array: c_uint) callconv(APIENTRY) void,
    glDeleteVertexArrays: ?*const fn (n: c_int, arrays: [*c]const c_uint) callconv(APIENTRY) void,
    glGenVertexArrays: ?*const fn (n: c_int, arrays: [*c]c_uint) callconv(APIENTRY) void,
    glIsVertexArray: ?*const fn (array: c_uint) callconv(APIENTRY) @"bool",
    glDrawArraysInstanced: ?*const fn (mode: @"enum", first: c_int, count: c_int, instancecount: c_int) callconv(APIENTRY) void,
    glDrawElementsInstanced: ?*const fn (mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, instancecount: c_int) callconv(APIENTRY) void,
    glTexBuffer: ?*const fn (target: @"enum", internalformat: @"enum", buffer: c_uint) callconv(APIENTRY) void,
    glPrimitiveRestartIndex: ?*const fn (index: c_uint) callconv(APIENTRY) void,
    glCopyBufferSubData: ?*const fn (readTarget: @"enum", writeTarget: @"enum", readOffset: c_long, writeOffset: c_long, size: c_ulong) callconv(APIENTRY) void,
    glGetUniformIndices: ?*const fn (program: c_uint, uniformCount: c_int, uniformNames: [*c]const [*c]const u8, uniformIndices: [*c]c_uint) callconv(APIENTRY) void,
    glGetActiveUniformsiv: ?*const fn (program: c_uint, uniformCount: c_int, uniformIndices: [*c]const c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetActiveUniformName: ?*const fn (program: c_uint, uniformIndex: c_uint, bufSize: c_int, length: [*c]c_int, uniformName: [*c]u8) callconv(APIENTRY) void,
    glGetUniformBlockIndex: ?*const fn (program: c_uint, uniformBlockName: [*c]const u8) callconv(APIENTRY) c_uint,
    glGetActiveUniformBlockiv: ?*const fn (program: c_uint, uniformBlockIndex: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetActiveUniformBlockName: ?*const fn (program: c_uint, uniformBlockIndex: c_uint, bufSize: c_int, length: [*c]c_int, uniformBlockName: [*c]u8) callconv(APIENTRY) void,
    glUniformBlockBinding: ?*const fn (program: c_uint, uniformBlockIndex: c_uint, uniformBlockBinding: c_uint) callconv(APIENTRY) void,
    glDrawElementsBaseVertex: ?*const fn (mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, basevertex: c_int) callconv(APIENTRY) void,
    glDrawRangeElementsBaseVertex: ?*const fn (mode: @"enum", start: c_uint, end: c_uint, count: c_int, @"type": @"enum", indices: ?*const anyopaque, basevertex: c_int) callconv(APIENTRY) void,
    glDrawElementsInstancedBaseVertex: ?*const fn (mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, instancecount: c_int, basevertex: c_int) callconv(APIENTRY) void,
    glMultiDrawElementsBaseVertex: ?*const fn (mode: @"enum", count: [*c]const c_int, @"type": @"enum", indices: [*c]const ?*const anyopaque, drawcount: c_int, basevertex: [*c]const c_int) callconv(APIENTRY) void,
    glProvokingVertex: ?*const fn (mode: @"enum") callconv(APIENTRY) void,
    glFenceSync: ?*const fn (condition: @"enum", flags: Bitfield) callconv(APIENTRY) Sync,
    glIsSync: ?*const fn (sync: Sync) callconv(APIENTRY) @"bool",
    glDeleteSync: ?*const fn (sync: Sync) callconv(APIENTRY) void,
    glClientWaitSync: ?*const fn (sync: Sync, flags: Bitfield, timeout: u64) callconv(APIENTRY) @"enum",
    glWaitSync: ?*const fn (sync: Sync, flags: Bitfield, timeout: u64) callconv(APIENTRY) void,
    glGetInteger64v: ?*const fn (pname: @"enum", data: [*c]i64) callconv(APIENTRY) void,
    glGetSynciv: ?*const fn (sync: Sync, pname: @"enum", count: c_int, length: [*c]c_int, values: [*c]c_int) callconv(APIENTRY) void,
    glGetInteger64i_v: ?*const fn (target: @"enum", index: c_uint, data: [*c]i64) callconv(APIENTRY) void,
    glGetBufferParameteri64v: ?*const fn (target: @"enum", pname: @"enum", params: [*c]i64) callconv(APIENTRY) void,
    glFramebufferTexture: ?*const fn (target: @"enum", attachment: @"enum", texture: c_uint, level: c_int) callconv(APIENTRY) void,
    glTexImage2DMultisample: ?*const fn (target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, fixedsamplelocations: @"bool") callconv(APIENTRY) void,
    glTexImage3DMultisample: ?*const fn (target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, fixedsamplelocations: @"bool") callconv(APIENTRY) void,
    glGetMultisamplefv: ?*const fn (pname: @"enum", index: c_uint, val: [*c]f32) callconv(APIENTRY) void,
    glSampleMaski: ?*const fn (maskNumber: c_uint, mask: Bitfield) callconv(APIENTRY) void,
    glBindFragDataLocationIndexed: ?*const fn (program: c_uint, colorNumber: c_uint, index: c_uint, name: [*c]const u8) callconv(APIENTRY) void,
    glGetFragDataIndex: ?*const fn (program: c_uint, name: [*c]const u8) callconv(APIENTRY) c_int,
    glGenSamplers: ?*const fn (count: c_int, samplers: [*c]c_uint) callconv(APIENTRY) void,
    glDeleteSamplers: ?*const fn (count: c_int, samplers: [*c]const c_uint) callconv(APIENTRY) void,
    glIsSampler: ?*const fn (sampler: c_uint) callconv(APIENTRY) @"bool",
    glBindSampler: ?*const fn (unit: c_uint, sampler: c_uint) callconv(APIENTRY) void,
    glSamplerParameteri: ?*const fn (sampler: c_uint, pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glSamplerParameteriv: ?*const fn (sampler: c_uint, pname: @"enum", param: [*c]const c_int) callconv(APIENTRY) void,
    glSamplerParameterf: ?*const fn (sampler: c_uint, pname: @"enum", param: f32) callconv(APIENTRY) void,
    glSamplerParameterfv: ?*const fn (sampler: c_uint, pname: @"enum", param: [*c]const f32) callconv(APIENTRY) void,
    glSamplerParameterIiv: ?*const fn (sampler: c_uint, pname: @"enum", param: [*c]const c_int) callconv(APIENTRY) void,
    glSamplerParameterIuiv: ?*const fn (sampler: c_uint, pname: @"enum", param: [*c]const c_uint) callconv(APIENTRY) void,
    glGetSamplerParameteriv: ?*const fn (sampler: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetSamplerParameterIiv: ?*const fn (sampler: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetSamplerParameterfv: ?*const fn (sampler: c_uint, pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetSamplerParameterIuiv: ?*const fn (sampler: c_uint, pname: @"enum", params: [*c]c_uint) callconv(APIENTRY) void,
    glQueryCounter: ?*const fn (id: c_uint, target: @"enum") callconv(APIENTRY) void,
    glGetQueryObjecti64v: ?*const fn (id: c_uint, pname: @"enum", params: [*c]i64) callconv(APIENTRY) void,
    glGetQueryObjectui64v: ?*const fn (id: c_uint, pname: @"enum", params: [*c]u64) callconv(APIENTRY) void,
    glVertexAttribDivisor: ?*const fn (index: c_uint, divisor: c_uint) callconv(APIENTRY) void,
    glVertexAttribP1ui: ?*const fn (index: c_uint, @"type": @"enum", normalized: @"bool", value: c_uint) callconv(APIENTRY) void,
    glVertexAttribP1uiv: ?*const fn (index: c_uint, @"type": @"enum", normalized: @"bool", value: [*c]const c_uint) callconv(APIENTRY) void,
    glVertexAttribP2ui: ?*const fn (index: c_uint, @"type": @"enum", normalized: @"bool", value: c_uint) callconv(APIENTRY) void,
    glVertexAttribP2uiv: ?*const fn (index: c_uint, @"type": @"enum", normalized: @"bool", value: [*c]const c_uint) callconv(APIENTRY) void,
    glVertexAttribP3ui: ?*const fn (index: c_uint, @"type": @"enum", normalized: @"bool", value: c_uint) callconv(APIENTRY) void,
    glVertexAttribP3uiv: ?*const fn (index: c_uint, @"type": @"enum", normalized: @"bool", value: [*c]const c_uint) callconv(APIENTRY) void,
    glVertexAttribP4ui: ?*const fn (index: c_uint, @"type": @"enum", normalized: @"bool", value: c_uint) callconv(APIENTRY) void,
    glVertexAttribP4uiv: ?*const fn (index: c_uint, @"type": @"enum", normalized: @"bool", value: [*c]const c_uint) callconv(APIENTRY) void,
    glMinSampleShading: ?*const fn (value: f32) callconv(APIENTRY) void,
    glBlendEquationi: ?*const fn (buf: c_uint, mode: @"enum") callconv(APIENTRY) void,
    glBlendEquationSeparatei: ?*const fn (buf: c_uint, modeRGB: @"enum", modeAlpha: @"enum") callconv(APIENTRY) void,
    glBlendFunci: ?*const fn (buf: c_uint, src: @"enum", dst: @"enum") callconv(APIENTRY) void,
    glBlendFuncSeparatei: ?*const fn (buf: c_uint, srcRGB: @"enum", dstRGB: @"enum", srcAlpha: @"enum", dstAlpha: @"enum") callconv(APIENTRY) void,
    glDrawArraysIndirect: ?*const fn (mode: @"enum", indirect: ?*const anyopaque) callconv(APIENTRY) void,
    glDrawElementsIndirect: ?*const fn (mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque) callconv(APIENTRY) void,
    glUniform1d: ?*const fn (location: c_int, x: f64) callconv(APIENTRY) void,
    glUniform2d: ?*const fn (location: c_int, x: f64, y: f64) callconv(APIENTRY) void,
    glUniform3d: ?*const fn (location: c_int, x: f64, y: f64, z: f64) callconv(APIENTRY) void,
    glUniform4d: ?*const fn (location: c_int, x: f64, y: f64, z: f64, w: f64) callconv(APIENTRY) void,
    glUniform1dv: ?*const fn (location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glUniform2dv: ?*const fn (location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glUniform3dv: ?*const fn (location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glUniform4dv: ?*const fn (location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glUniformMatrix2dv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glUniformMatrix3dv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glUniformMatrix4dv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glUniformMatrix2x3dv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glUniformMatrix2x4dv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glUniformMatrix3x2dv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glUniformMatrix3x4dv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glUniformMatrix4x2dv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glUniformMatrix4x3dv: ?*const fn (location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glGetUniformdv: ?*const fn (program: c_uint, location: c_int, params: [*c]f64) callconv(APIENTRY) void,
    glGetSubroutineUniformLocation: ?*const fn (program: c_uint, shadertype: @"enum", name: [*c]const u8) callconv(APIENTRY) c_int,
    glGetSubroutineIndex: ?*const fn (program: c_uint, shadertype: @"enum", name: [*c]const u8) callconv(APIENTRY) c_uint,
    glGetActiveSubroutineUniformiv: ?*const fn (program: c_uint, shadertype: @"enum", index: c_uint, pname: @"enum", values: [*c]c_int) callconv(APIENTRY) void,
    glGetActiveSubroutineUniformName: ?*const fn (program: c_uint, shadertype: @"enum", index: c_uint, bufSize: c_int, length: [*c]c_int, name: [*c]u8) callconv(APIENTRY) void,
    glGetActiveSubroutineName: ?*const fn (program: c_uint, shadertype: @"enum", index: c_uint, bufSize: c_int, length: [*c]c_int, name: [*c]u8) callconv(APIENTRY) void,
    glUniformSubroutinesuiv: ?*const fn (shadertype: @"enum", count: c_int, indices: [*c]const c_uint) callconv(APIENTRY) void,
    glGetUniformSubroutineuiv: ?*const fn (shadertype: @"enum", location: c_int, params: [*c]c_uint) callconv(APIENTRY) void,
    glGetProgramStageiv: ?*const fn (program: c_uint, shadertype: @"enum", pname: @"enum", values: [*c]c_int) callconv(APIENTRY) void,
    glPatchParameteri: ?*const fn (pname: @"enum", value: c_int) callconv(APIENTRY) void,
    glPatchParameterfv: ?*const fn (pname: @"enum", values: [*c]const f32) callconv(APIENTRY) void,
    glBindTransformFeedback: ?*const fn (target: @"enum", id: c_uint) callconv(APIENTRY) void,
    glDeleteTransformFeedbacks: ?*const fn (n: c_int, ids: [*c]const c_uint) callconv(APIENTRY) void,
    glGenTransformFeedbacks: ?*const fn (n: c_int, ids: [*c]c_uint) callconv(APIENTRY) void,
    glIsTransformFeedback: ?*const fn (id: c_uint) callconv(APIENTRY) @"bool",
    glPauseTransformFeedback: ?*const fn () callconv(APIENTRY) void,
    glResumeTransformFeedback: ?*const fn () callconv(APIENTRY) void,
    glDrawTransformFeedback: ?*const fn (mode: @"enum", id: c_uint) callconv(APIENTRY) void,
    glDrawTransformFeedbackStream: ?*const fn (mode: @"enum", id: c_uint, stream: c_uint) callconv(APIENTRY) void,
    glBeginQueryIndexed: ?*const fn (target: @"enum", index: c_uint, id: c_uint) callconv(APIENTRY) void,
    glEndQueryIndexed: ?*const fn (target: @"enum", index: c_uint) callconv(APIENTRY) void,
    glGetQueryIndexediv: ?*const fn (target: @"enum", index: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glReleaseShaderCompiler: ?*const fn () callconv(APIENTRY) void,
    glShaderBinary: ?*const fn (count: c_int, shaders: [*c]const c_uint, binaryFormat: @"enum", binary: ?*const anyopaque, length: c_int) callconv(APIENTRY) void,
    glGetShaderPrecisionFormat: ?*const fn (shadertype: @"enum", precisiontype: @"enum", range: [*c]c_int, precision: [*c]c_int) callconv(APIENTRY) void,
    glDepthRangef: ?*const fn (n: f32, f: f32) callconv(APIENTRY) void,
    glClearDepthf: ?*const fn (d: f32) callconv(APIENTRY) void,
    glGetProgramBinary: ?*const fn (program: c_uint, bufSize: c_int, length: [*c]c_int, binaryFormat: [*c]@"enum", binary: ?*anyopaque) callconv(APIENTRY) void,
    glProgramBinary: ?*const fn (program: c_uint, binaryFormat: @"enum", binary: ?*const anyopaque, length: c_int) callconv(APIENTRY) void,
    glProgramParameteri: ?*const fn (program: c_uint, pname: @"enum", value: c_int) callconv(APIENTRY) void,
    glUseProgramStages: ?*const fn (pipeline: c_uint, stages: Bitfield, program: c_uint) callconv(APIENTRY) void,
    glActiveShaderProgram: ?*const fn (pipeline: c_uint, program: c_uint) callconv(APIENTRY) void,
    glCreateShaderProgramv: ?*const fn (@"type": @"enum", count: c_int, strings: [*c]const [*c]const u8) callconv(APIENTRY) c_uint,
    glBindProgramPipeline: ?*const fn (pipeline: c_uint) callconv(APIENTRY) void,
    glDeleteProgramPipelines: ?*const fn (n: c_int, pipelines: [*c]const c_uint) callconv(APIENTRY) void,
    glGenProgramPipelines: ?*const fn (n: c_int, pipelines: [*c]c_uint) callconv(APIENTRY) void,
    glIsProgramPipeline: ?*const fn (pipeline: c_uint) callconv(APIENTRY) @"bool",
    glGetProgramPipelineiv: ?*const fn (pipeline: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glProgramUniform1i: ?*const fn (program: c_uint, location: c_int, v0: c_int) callconv(APIENTRY) void,
    glProgramUniform1iv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glProgramUniform1f: ?*const fn (program: c_uint, location: c_int, v0: f32) callconv(APIENTRY) void,
    glProgramUniform1fv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniform1d: ?*const fn (program: c_uint, location: c_int, v0: f64) callconv(APIENTRY) void,
    glProgramUniform1dv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniform1ui: ?*const fn (program: c_uint, location: c_int, v0: c_uint) callconv(APIENTRY) void,
    glProgramUniform1uiv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glProgramUniform2i: ?*const fn (program: c_uint, location: c_int, v0: c_int, v1: c_int) callconv(APIENTRY) void,
    glProgramUniform2iv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glProgramUniform2f: ?*const fn (program: c_uint, location: c_int, v0: f32, v1: f32) callconv(APIENTRY) void,
    glProgramUniform2fv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniform2d: ?*const fn (program: c_uint, location: c_int, v0: f64, v1: f64) callconv(APIENTRY) void,
    glProgramUniform2dv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniform2ui: ?*const fn (program: c_uint, location: c_int, v0: c_uint, v1: c_uint) callconv(APIENTRY) void,
    glProgramUniform2uiv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glProgramUniform3i: ?*const fn (program: c_uint, location: c_int, v0: c_int, v1: c_int, v2: c_int) callconv(APIENTRY) void,
    glProgramUniform3iv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glProgramUniform3f: ?*const fn (program: c_uint, location: c_int, v0: f32, v1: f32, v2: f32) callconv(APIENTRY) void,
    glProgramUniform3fv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniform3d: ?*const fn (program: c_uint, location: c_int, v0: f64, v1: f64, v2: f64) callconv(APIENTRY) void,
    glProgramUniform3dv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniform3ui: ?*const fn (program: c_uint, location: c_int, v0: c_uint, v1: c_uint, v2: c_uint) callconv(APIENTRY) void,
    glProgramUniform3uiv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glProgramUniform4i: ?*const fn (program: c_uint, location: c_int, v0: c_int, v1: c_int, v2: c_int, v3: c_int) callconv(APIENTRY) void,
    glProgramUniform4iv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glProgramUniform4f: ?*const fn (program: c_uint, location: c_int, v0: f32, v1: f32, v2: f32, v3: f32) callconv(APIENTRY) void,
    glProgramUniform4fv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniform4d: ?*const fn (program: c_uint, location: c_int, v0: f64, v1: f64, v2: f64, v3: f64) callconv(APIENTRY) void,
    glProgramUniform4dv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniform4ui: ?*const fn (program: c_uint, location: c_int, v0: c_uint, v1: c_uint, v2: c_uint, v3: c_uint) callconv(APIENTRY) void,
    glProgramUniform4uiv: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glProgramUniformMatrix2fv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix3fv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix4fv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix2dv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix3dv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix4dv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix2x3fv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix3x2fv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix2x4fv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix4x2fv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix3x4fv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix4x3fv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix2x3dv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix3x2dv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix2x4dv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix4x2dv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix3x4dv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix4x3dv: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glValidateProgramPipeline: ?*const fn (pipeline: c_uint) callconv(APIENTRY) void,
    glGetProgramPipelineInfoLog: ?*const fn (pipeline: c_uint, bufSize: c_int, length: [*c]c_int, infoLog: [*c]u8) callconv(APIENTRY) void,
    glVertexAttribL1d: ?*const fn (index: c_uint, x: f64) callconv(APIENTRY) void,
    glVertexAttribL2d: ?*const fn (index: c_uint, x: f64, y: f64) callconv(APIENTRY) void,
    glVertexAttribL3d: ?*const fn (index: c_uint, x: f64, y: f64, z: f64) callconv(APIENTRY) void,
    glVertexAttribL4d: ?*const fn (index: c_uint, x: f64, y: f64, z: f64, w: f64) callconv(APIENTRY) void,
    glVertexAttribL1dv: ?*const fn (index: c_uint, v: [*c]const f64) callconv(APIENTRY) void,
    glVertexAttribL2dv: ?*const fn (index: c_uint, v: [*c]const f64) callconv(APIENTRY) void,
    glVertexAttribL3dv: ?*const fn (index: c_uint, v: [*c]const f64) callconv(APIENTRY) void,
    glVertexAttribL4dv: ?*const fn (index: c_uint, v: [*c]const f64) callconv(APIENTRY) void,
    glVertexAttribLPointer: ?*const fn (index: c_uint, size: c_int, @"type": @"enum", stride: c_int, pointer: ?*const anyopaque) callconv(APIENTRY) void,
    glGetVertexAttribLdv: ?*const fn (index: c_uint, pname: @"enum", params: [*c]f64) callconv(APIENTRY) void,
    glViewportArrayv: ?*const fn (first: c_uint, count: c_int, v: [*c]const f32) callconv(APIENTRY) void,
    glViewportIndexedf: ?*const fn (index: c_uint, x: f32, y: f32, w: f32, h: f32) callconv(APIENTRY) void,
    glViewportIndexedfv: ?*const fn (index: c_uint, v: [*c]const f32) callconv(APIENTRY) void,
    glScissorArrayv: ?*const fn (first: c_uint, count: c_int, v: [*c]const c_int) callconv(APIENTRY) void,
    glScissorIndexed: ?*const fn (index: c_uint, left: c_int, bottom: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glScissorIndexedv: ?*const fn (index: c_uint, v: [*c]const c_int) callconv(APIENTRY) void,
    glDepthRangeArrayv: ?*const fn (first: c_uint, count: c_int, v: [*c]const f64) callconv(APIENTRY) void,
    glDepthRangeIndexed: ?*const fn (index: c_uint, n: f64, f: f64) callconv(APIENTRY) void,
    glGetFloati_v: ?*const fn (target: @"enum", index: c_uint, data: [*c]f32) callconv(APIENTRY) void,
    glGetDoublei_v: ?*const fn (target: @"enum", index: c_uint, data: [*c]f64) callconv(APIENTRY) void,
    glDrawArraysInstancedBaseInstance: ?*const fn (mode: @"enum", first: c_int, count: c_int, instancecount: c_int, baseinstance: c_uint) callconv(APIENTRY) void,
    glDrawElementsInstancedBaseInstance: ?*const fn (mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, instancecount: c_int, baseinstance: c_uint) callconv(APIENTRY) void,
    glDrawElementsInstancedBaseVertexBaseInstance: ?*const fn (mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, instancecount: c_int, basevertex: c_int, baseinstance: c_uint) callconv(APIENTRY) void,
    glGetInternalformativ: ?*const fn (target: @"enum", internalformat: @"enum", pname: @"enum", count: c_int, params: [*c]c_int) callconv(APIENTRY) void,
    glGetActiveAtomicCounterBufferiv: ?*const fn (program: c_uint, bufferIndex: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glBindImageTexture: ?*const fn (unit: c_uint, texture: c_uint, level: c_int, layered: @"bool", layer: c_int, access: @"enum", format: @"enum") callconv(APIENTRY) void,
    glMemoryBarrier: ?*const fn (barriers: Bitfield) callconv(APIENTRY) void,
    glTexStorage1D: ?*const fn (target: @"enum", levels: c_int, internalformat: @"enum", width: c_int) callconv(APIENTRY) void,
    glTexStorage2D: ?*const fn (target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glTexStorage3D: ?*const fn (target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int) callconv(APIENTRY) void,
    glDrawTransformFeedbackInstanced: ?*const fn (mode: @"enum", id: c_uint, instancecount: c_int) callconv(APIENTRY) void,
    glDrawTransformFeedbackStreamInstanced: ?*const fn (mode: @"enum", id: c_uint, stream: c_uint, instancecount: c_int) callconv(APIENTRY) void,
    glClearBufferData: ?*const fn (target: @"enum", internalformat: @"enum", format: @"enum", @"type": @"enum", data: ?*const anyopaque) callconv(APIENTRY) void,
    glClearBufferSubData: ?*const fn (target: @"enum", internalformat: @"enum", offset: c_long, size: c_ulong, format: @"enum", @"type": @"enum", data: ?*const anyopaque) callconv(APIENTRY) void,
    glDispatchCompute: ?*const fn (num_groups_x: c_uint, num_groups_y: c_uint, num_groups_z: c_uint) callconv(APIENTRY) void,
    glDispatchComputeIndirect: ?*const fn (indirect: c_long) callconv(APIENTRY) void,
    glCopyImageSubData: ?*const fn (srcName: c_uint, srcTarget: @"enum", srcLevel: c_int, srcX: c_int, srcY: c_int, srcZ: c_int, dstName: c_uint, dstTarget: @"enum", dstLevel: c_int, dstX: c_int, dstY: c_int, dstZ: c_int, srcWidth: c_int, srcHeight: c_int, srcDepth: c_int) callconv(APIENTRY) void,
    glFramebufferParameteri: ?*const fn (target: @"enum", pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glGetFramebufferParameteriv: ?*const fn (target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetInternalformati64v: ?*const fn (target: @"enum", internalformat: @"enum", pname: @"enum", count: c_int, params: [*c]i64) callconv(APIENTRY) void,
    glInvalidateTexSubImage: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int) callconv(APIENTRY) void,
    glInvalidateTexImage: ?*const fn (texture: c_uint, level: c_int) callconv(APIENTRY) void,
    glInvalidateBufferSubData: ?*const fn (buffer: c_uint, offset: c_long, length: c_ulong) callconv(APIENTRY) void,
    glInvalidateBufferData: ?*const fn (buffer: c_uint) callconv(APIENTRY) void,
    glInvalidateFramebuffer: ?*const fn (target: @"enum", numAttachments: c_int, attachments: [*c]const @"enum") callconv(APIENTRY) void,
    glInvalidateSubFramebuffer: ?*const fn (target: @"enum", numAttachments: c_int, attachments: [*c]const @"enum", x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glMultiDrawArraysIndirect: ?*const fn (mode: @"enum", indirect: ?*const anyopaque, drawcount: c_int, stride: c_int) callconv(APIENTRY) void,
    glMultiDrawElementsIndirect: ?*const fn (mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawcount: c_int, stride: c_int) callconv(APIENTRY) void,
    glGetProgramInterfaceiv: ?*const fn (program: c_uint, programInterface: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetProgramResourceIndex: ?*const fn (program: c_uint, programInterface: @"enum", name: [*c]const u8) callconv(APIENTRY) c_uint,
    glGetProgramResourceName: ?*const fn (program: c_uint, programInterface: @"enum", index: c_uint, bufSize: c_int, length: [*c]c_int, name: [*c]u8) callconv(APIENTRY) void,
    glGetProgramResourceiv: ?*const fn (program: c_uint, programInterface: @"enum", index: c_uint, propCount: c_int, props: [*c]const @"enum", count: c_int, length: [*c]c_int, params: [*c]c_int) callconv(APIENTRY) void,
    glGetProgramResourceLocation: ?*const fn (program: c_uint, programInterface: @"enum", name: [*c]const u8) callconv(APIENTRY) c_int,
    glGetProgramResourceLocationIndex: ?*const fn (program: c_uint, programInterface: @"enum", name: [*c]const u8) callconv(APIENTRY) c_int,
    glShaderStorageBlockBinding: ?*const fn (program: c_uint, storageBlockIndex: c_uint, storageBlockBinding: c_uint) callconv(APIENTRY) void,
    glTexBufferRange: ?*const fn (target: @"enum", internalformat: @"enum", buffer: c_uint, offset: c_long, size: c_ulong) callconv(APIENTRY) void,
    glTexStorage2DMultisample: ?*const fn (target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, fixedsamplelocations: @"bool") callconv(APIENTRY) void,
    glTexStorage3DMultisample: ?*const fn (target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, fixedsamplelocations: @"bool") callconv(APIENTRY) void,
    glTextureView: ?*const fn (texture: c_uint, target: @"enum", origtexture: c_uint, internalformat: @"enum", minlevel: c_uint, numlevels: c_uint, minlayer: c_uint, numlayers: c_uint) callconv(APIENTRY) void,
    glBindVertexBuffer: ?*const fn (binding_index: c_uint, buffer: c_uint, offset: c_long, stride: c_int) callconv(APIENTRY) void,
    glVertexAttribFormat: ?*const fn (attribindex: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", relative_offset: c_uint) callconv(APIENTRY) void,
    glVertexAttribIFormat: ?*const fn (attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) callconv(APIENTRY) void,
    glVertexAttribLFormat: ?*const fn (attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) callconv(APIENTRY) void,
    glVertexAttribBinding: ?*const fn (attribindex: c_uint, binding_index: c_uint) callconv(APIENTRY) void,
    glVertexBindingDivisor: ?*const fn (binding_index: c_uint, divisor: c_uint) callconv(APIENTRY) void,
    glDebugMessageControl: ?*const fn (source: @"enum", @"type": @"enum", severity: @"enum", count: c_int, ids: [*c]const c_uint, enabled: @"bool") callconv(APIENTRY) void,
    glDebugMessageInsert: ?*const fn (source: @"enum", @"type": @"enum", id: c_uint, severity: @"enum", length: c_int, buf: [*c]const u8) callconv(APIENTRY) void,
    glDebugMessageCallback: ?*const fn (callback: GLDEBUGPROC, userParam: ?*const anyopaque) callconv(APIENTRY) void,
    glGetDebugMessageLog: ?*const fn (count: c_uint, bufSize: c_int, sources: [*c]@"enum", types: [*c]@"enum", ids: [*c]c_uint, severities: [*c]@"enum", lengths: [*c]c_int, messageLog: [*c]u8) callconv(APIENTRY) c_uint,
    glPushDebugGroup: ?*const fn (source: @"enum", id: c_uint, length: c_int, message: [*c]const u8) callconv(APIENTRY) void,
    glPopDebugGroup: ?*const fn () callconv(APIENTRY) void,
    glObjectLabel: ?*const fn (identifier: @"enum", name: c_uint, length: c_int, label: [*c]const u8) callconv(APIENTRY) void,
    glGetObjectLabel: ?*const fn (identifier: @"enum", name: c_uint, bufSize: c_int, length: [*c]c_int, label: [*c]u8) callconv(APIENTRY) void,
    glObjectPtrLabel: ?*const fn (ptr: ?*const anyopaque, length: c_int, label: [*c]const u8) callconv(APIENTRY) void,
    glGetObjectPtrLabel: ?*const fn (ptr: ?*const anyopaque, bufSize: c_int, length: [*c]c_int, label: [*c]u8) callconv(APIENTRY) void,
    glBufferStorage: ?*const fn (target: @"enum", size: c_ulong, data: ?*const anyopaque, flags: Bitfield) callconv(APIENTRY) void,
    glClearTexImage: ?*const fn (texture: c_uint, level: c_int, format: @"enum", @"type": @"enum", data: ?*const anyopaque) callconv(APIENTRY) void,
    glClearTexSubImage: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", data: ?*const anyopaque) callconv(APIENTRY) void,
    glBindBuffersBase: ?*const fn (target: @"enum", first: c_uint, count: c_int, buffers: [*c]const c_uint) callconv(APIENTRY) void,
    glBindBuffersRange: ?*const fn (target: @"enum", first: c_uint, count: c_int, buffers: [*c]const c_uint, offsets: [*c]const c_long, sizes: [*c]const c_ulong) callconv(APIENTRY) void,
    glBindTextures: ?*const fn (first: c_uint, count: c_int, textures: [*c]const c_uint) callconv(APIENTRY) void,
    glBindSamplers: ?*const fn (first: c_uint, count: c_int, samplers: [*c]const c_uint) callconv(APIENTRY) void,
    glBindImageTextures: ?*const fn (first: c_uint, count: c_int, textures: [*c]const c_uint) callconv(APIENTRY) void,
    glBindVertexBuffers: ?*const fn (first: c_uint, count: c_int, buffers: [*c]const c_uint, offsets: [*c]const c_long, strides: [*c]const c_int) callconv(APIENTRY) void,
    glClipControl: ?*const fn (origin: @"enum", depth: @"enum") callconv(APIENTRY) void,
    glCreateTransformFeedbacks: ?*const fn (n: c_int, ids: [*c]c_uint) callconv(APIENTRY) void,
    glTransformFeedbackBufferBase: ?*const fn (xfb: c_uint, index: c_uint, buffer: c_uint) callconv(APIENTRY) void,
    glTransformFeedbackBufferRange: ?*const fn (xfb: c_uint, index: c_uint, buffer: c_uint, offset: c_long, size: c_ulong) callconv(APIENTRY) void,
    glGetTransformFeedbackiv: ?*const fn (xfb: c_uint, pname: @"enum", param: [*c]c_int) callconv(APIENTRY) void,
    glGetTransformFeedbacki_v: ?*const fn (xfb: c_uint, pname: @"enum", index: c_uint, param: [*c]c_int) callconv(APIENTRY) void,
    glGetTransformFeedbacki64_v: ?*const fn (xfb: c_uint, pname: @"enum", index: c_uint, param: [*c]i64) callconv(APIENTRY) void,
    glCreateBuffers: ?*const fn (n: c_int, buffers: [*c]c_uint) callconv(APIENTRY) void,
    glNamedBufferStorage: ?*const fn (buffer: c_uint, size: c_ulong, data: ?*const anyopaque, flags: Bitfield) callconv(APIENTRY) void,
    glNamedBufferData: ?*const fn (buffer: c_uint, size: c_ulong, data: ?*const anyopaque, usage: @"enum") callconv(APIENTRY) void,
    glNamedBufferSubData: ?*const fn (buffer: c_uint, offset: c_long, size: c_ulong, data: ?*const anyopaque) callconv(APIENTRY) void,
    glCopyNamedBufferSubData: ?*const fn (readBuffer: c_uint, writeBuffer: c_uint, readOffset: c_long, writeOffset: c_long, size: c_ulong) callconv(APIENTRY) void,
    glClearNamedBufferData: ?*const fn (buffer: c_uint, internalformat: @"enum", format: @"enum", @"type": @"enum", data: ?*const anyopaque) callconv(APIENTRY) void,
    glClearNamedBufferSubData: ?*const fn (buffer: c_uint, internalformat: @"enum", offset: c_long, size: c_ulong, format: @"enum", @"type": @"enum", data: ?*const anyopaque) callconv(APIENTRY) void,
    glMapNamedBuffer: ?*const fn (buffer: c_uint, access: @"enum") callconv(APIENTRY) ?*anyopaque,
    glMapNamedBufferRange: ?*const fn (buffer: c_uint, offset: c_long, length: c_ulong, access: Bitfield) callconv(APIENTRY) ?*anyopaque,
    glUnmapNamedBuffer: ?*const fn (buffer: c_uint) callconv(APIENTRY) @"bool",
    glFlushMappedNamedBufferRange: ?*const fn (buffer: c_uint, offset: c_long, length: c_ulong) callconv(APIENTRY) void,
    glGetNamedBufferParameteriv: ?*const fn (buffer: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetNamedBufferParameteri64v: ?*const fn (buffer: c_uint, pname: @"enum", params: [*c]i64) callconv(APIENTRY) void,
    glGetNamedBufferPointerv: ?*const fn (buffer: c_uint, pname: @"enum", params: [*c]?*anyopaque) callconv(APIENTRY) void,
    glGetNamedBufferSubData: ?*const fn (buffer: c_uint, offset: c_long, size: c_ulong, data: ?*anyopaque) callconv(APIENTRY) void,
    glCreateFramebuffers: ?*const fn (n: c_int, framebuffers: [*c]c_uint) callconv(APIENTRY) void,
    glNamedFramebufferRenderbuffer: ?*const fn (framebuffer: c_uint, attachment: @"enum", renderbuffertarget: @"enum", renderbuffer: c_uint) callconv(APIENTRY) void,
    glNamedFramebufferParameteri: ?*const fn (framebuffer: c_uint, pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glNamedFramebufferTexture: ?*const fn (framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int) callconv(APIENTRY) void,
    glNamedFramebufferTextureLayer: ?*const fn (framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int, layer: c_int) callconv(APIENTRY) void,
    glNamedFramebufferDrawBuffer: ?*const fn (framebuffer: c_uint, buf: @"enum") callconv(APIENTRY) void,
    glNamedFramebufferDrawBuffers: ?*const fn (framebuffer: c_uint, n: c_int, bufs: [*c]const @"enum") callconv(APIENTRY) void,
    glNamedFramebufferReadBuffer: ?*const fn (framebuffer: c_uint, src: @"enum") callconv(APIENTRY) void,
    glInvalidateNamedFramebufferData: ?*const fn (framebuffer: c_uint, numAttachments: c_int, attachments: [*c]const @"enum") callconv(APIENTRY) void,
    glInvalidateNamedFramebufferSubData: ?*const fn (framebuffer: c_uint, numAttachments: c_int, attachments: [*c]const @"enum", x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glClearNamedFramebufferiv: ?*const fn (framebuffer: c_uint, buffer: @"enum", drawbuffer: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glClearNamedFramebufferuiv: ?*const fn (framebuffer: c_uint, buffer: @"enum", drawbuffer: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glClearNamedFramebufferfv: ?*const fn (framebuffer: c_uint, buffer: @"enum", drawbuffer: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glClearNamedFramebufferfi: ?*const fn (framebuffer: c_uint, buffer: @"enum", drawbuffer: c_int, depth: f32, stencil: c_int) callconv(APIENTRY) void,
    glBlitNamedFramebuffer: ?*const fn (readFramebuffer: c_uint, drawFramebuffer: c_uint, srcX0: c_int, srcY0: c_int, srcX1: c_int, srcY1: c_int, dstX0: c_int, dstY0: c_int, dstX1: c_int, dstY1: c_int, mask: Bitfield, filter: @"enum") callconv(APIENTRY) void,
    glCheckNamedFramebufferStatus: ?*const fn (framebuffer: c_uint, target: @"enum") callconv(APIENTRY) @"enum",
    glGetNamedFramebufferParameteriv: ?*const fn (framebuffer: c_uint, pname: @"enum", param: [*c]c_int) callconv(APIENTRY) void,
    glGetNamedFramebufferAttachmentParameteriv: ?*const fn (framebuffer: c_uint, attachment: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glCreateRenderbuffers: ?*const fn (n: c_int, renderbuffers: [*c]c_uint) callconv(APIENTRY) void,
    glNamedRenderbufferStorage: ?*const fn (renderbuffer: c_uint, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glNamedRenderbufferStorageMultisample: ?*const fn (renderbuffer: c_uint, samples: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glGetNamedRenderbufferParameteriv: ?*const fn (renderbuffer: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glCreateTextures: ?*const fn (target: @"enum", n: c_int, textures: [*c]c_uint) callconv(APIENTRY) void,
    glTextureBuffer: ?*const fn (texture: c_uint, internalformat: @"enum", buffer: c_uint) callconv(APIENTRY) void,
    glTextureBufferRange: ?*const fn (texture: c_uint, internalformat: @"enum", buffer: c_uint, offset: c_long, size: c_ulong) callconv(APIENTRY) void,
    glTextureStorage1D: ?*const fn (texture: c_uint, levels: c_int, internalformat: @"enum", width: c_int) callconv(APIENTRY) void,
    glTextureStorage2D: ?*const fn (texture: c_uint, levels: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glTextureStorage3D: ?*const fn (texture: c_uint, levels: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int) callconv(APIENTRY) void,
    glTextureStorage2DMultisample: ?*const fn (texture: c_uint, samples: c_int, internalformat: @"enum", width: c_int, height: c_int, fixedsamplelocations: @"bool") callconv(APIENTRY) void,
    glTextureStorage3DMultisample: ?*const fn (texture: c_uint, samples: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, fixedsamplelocations: @"bool") callconv(APIENTRY) void,
    glTextureSubImage1D: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, width: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glTextureSubImage2D: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glTextureSubImage3D: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTextureSubImage1D: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, width: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTextureSubImage2D: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTextureSubImage3D: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) callconv(APIENTRY) void,
    glCopyTextureSubImage1D: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, x: c_int, y: c_int, width: c_int) callconv(APIENTRY) void,
    glCopyTextureSubImage2D: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glCopyTextureSubImage3D: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glTextureParameterf: ?*const fn (texture: c_uint, pname: @"enum", param: f32) callconv(APIENTRY) void,
    glTextureParameterfv: ?*const fn (texture: c_uint, pname: @"enum", param: [*c]const f32) callconv(APIENTRY) void,
    glTextureParameteri: ?*const fn (texture: c_uint, pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glTextureParameterIiv: ?*const fn (texture: c_uint, pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glTextureParameterIuiv: ?*const fn (texture: c_uint, pname: @"enum", params: [*c]const c_uint) callconv(APIENTRY) void,
    glTextureParameteriv: ?*const fn (texture: c_uint, pname: @"enum", param: [*c]const c_int) callconv(APIENTRY) void,
    glGenerateTextureMipmap: ?*const fn (texture: c_uint) callconv(APIENTRY) void,
    glBindTextureUnit: ?*const fn (unit: c_uint, texture: c_uint) callconv(APIENTRY) void,
    glGetTextureImage: ?*const fn (texture: c_uint, level: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetCompressedTextureImage: ?*const fn (texture: c_uint, level: c_int, bufSize: c_int, pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetTextureLevelParameterfv: ?*const fn (texture: c_uint, level: c_int, pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetTextureLevelParameteriv: ?*const fn (texture: c_uint, level: c_int, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetTextureParameterfv: ?*const fn (texture: c_uint, pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetTextureParameterIiv: ?*const fn (texture: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetTextureParameterIuiv: ?*const fn (texture: c_uint, pname: @"enum", params: [*c]c_uint) callconv(APIENTRY) void,
    glGetTextureParameteriv: ?*const fn (texture: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glCreateVertexArrays: ?*const fn (n: c_int, arrays: [*c]c_uint) callconv(APIENTRY) void,
    glDisableVertexArrayAttrib: ?*const fn (vaobj: c_uint, index: c_uint) callconv(APIENTRY) void,
    glEnableVertexArrayAttrib: ?*const fn (vaobj: c_uint, index: c_uint) callconv(APIENTRY) void,
    glVertexArrayElementBuffer: ?*const fn (vaobj: c_uint, buffer: c_uint) callconv(APIENTRY) void,
    glVertexArrayVertexBuffer: ?*const fn (vaobj: c_uint, binding_index: c_uint, buffer: c_uint, offset: c_long, stride: c_int) callconv(APIENTRY) void,
    glVertexArrayVertexBuffers: ?*const fn (vaobj: c_uint, first: c_uint, count: c_int, buffers: [*c]const c_uint, offsets: [*c]const c_long, strides: [*c]const c_int) callconv(APIENTRY) void,
    glVertexArrayAttribBinding: ?*const fn (vaobj: c_uint, attribindex: c_uint, binding_index: c_uint) callconv(APIENTRY) void,
    glVertexArrayAttribFormat: ?*const fn (vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", relative_offset: c_uint) callconv(APIENTRY) void,
    glVertexArrayAttribIFormat: ?*const fn (vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) callconv(APIENTRY) void,
    glVertexArrayAttribLFormat: ?*const fn (vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) callconv(APIENTRY) void,
    glVertexArrayBindingDivisor: ?*const fn (vaobj: c_uint, binding_index: c_uint, divisor: c_uint) callconv(APIENTRY) void,
    glGetVertexArrayiv: ?*const fn (vaobj: c_uint, pname: @"enum", param: [*c]c_int) callconv(APIENTRY) void,
    glGetVertexArrayIndexediv: ?*const fn (vaobj: c_uint, index: c_uint, pname: @"enum", param: [*c]c_int) callconv(APIENTRY) void,
    glGetVertexArrayIndexed64iv: ?*const fn (vaobj: c_uint, index: c_uint, pname: @"enum", param: [*c]i64) callconv(APIENTRY) void,
    glCreateSamplers: ?*const fn (n: c_int, samplers: [*c]c_uint) callconv(APIENTRY) void,
    glCreateProgramPipelines: ?*const fn (n: c_int, pipelines: [*c]c_uint) callconv(APIENTRY) void,
    glCreateQueries: ?*const fn (target: @"enum", n: c_int, ids: [*c]c_uint) callconv(APIENTRY) void,
    glGetQueryBufferObjecti64v: ?*const fn (id: c_uint, buffer: c_uint, pname: @"enum", offset: c_long) callconv(APIENTRY) void,
    glGetQueryBufferObjectiv: ?*const fn (id: c_uint, buffer: c_uint, pname: @"enum", offset: c_long) callconv(APIENTRY) void,
    glGetQueryBufferObjectui64v: ?*const fn (id: c_uint, buffer: c_uint, pname: @"enum", offset: c_long) callconv(APIENTRY) void,
    glGetQueryBufferObjectuiv: ?*const fn (id: c_uint, buffer: c_uint, pname: @"enum", offset: c_long) callconv(APIENTRY) void,
    glMemoryBarrierByRegion: ?*const fn (barriers: Bitfield) callconv(APIENTRY) void,
    glGetTextureSubImage: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetCompressedTextureSubImage: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, bufSize: c_int, pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetGraphicsResetStatus: ?*const fn () callconv(APIENTRY) @"enum",
    glGetnCompressedTexImage: ?*const fn (target: @"enum", lod: c_int, bufSize: c_int, pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetnTexImage: ?*const fn (target: @"enum", level: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetnUniformdv: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]f64) callconv(APIENTRY) void,
    glGetnUniformfv: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]f32) callconv(APIENTRY) void,
    glGetnUniformiv: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]c_int) callconv(APIENTRY) void,
    glGetnUniformuiv: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]c_uint) callconv(APIENTRY) void,
    glReadnPixels: ?*const fn (x: c_int, y: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, data: ?*anyopaque) callconv(APIENTRY) void,
    glTextureBarrier: ?*const fn () callconv(APIENTRY) void,
    glSpecializeShader: ?*const fn (shader: c_uint, pEntryPoint: [*c]const u8, numSpecializationConstants: c_uint, pConstantIndex: [*c]const c_uint, pConstantValue: [*c]const c_uint) callconv(APIENTRY) void,
    glMultiDrawArraysIndirectCount: ?*const fn (mode: @"enum", indirect: ?*const anyopaque, drawcount: c_long, maxdrawcount: c_int, stride: c_int) callconv(APIENTRY) void,
    glMultiDrawElementsIndirectCount: ?*const fn (mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawcount: c_long, maxdrawcount: c_int, stride: c_int) callconv(APIENTRY) void,
    glPolygonOffsetClamp: ?*const fn (factor: f32, units: f32, clamp: f32) callconv(APIENTRY) void,
    glPrimitiveBoundingBoxARB: ?*const fn (minX: f32, minY: f32, minZ: f32, minW: f32, maxX: f32, maxY: f32, maxZ: f32, maxW: f32) callconv(APIENTRY) void,
    glGetTextureHandleARB: ?*const fn (texture: c_uint) callconv(APIENTRY) u64,
    glGetTextureSamplerHandleARB: ?*const fn (texture: c_uint, sampler: c_uint) callconv(APIENTRY) u64,
    glMakeTextureHandleResidentARB: ?*const fn (handle: u64) callconv(APIENTRY) void,
    glMakeTextureHandleNonResidentARB: ?*const fn (handle: u64) callconv(APIENTRY) void,
    glGetImageHandleARB: ?*const fn (texture: c_uint, level: c_int, layered: @"bool", layer: c_int, format: @"enum") callconv(APIENTRY) u64,
    glMakeImageHandleResidentARB: ?*const fn (handle: u64, access: @"enum") callconv(APIENTRY) void,
    glMakeImageHandleNonResidentARB: ?*const fn (handle: u64) callconv(APIENTRY) void,
    glUniformHandleui64ARB: ?*const fn (location: c_int, value: u64) callconv(APIENTRY) void,
    glUniformHandleui64vARB: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glProgramUniformHandleui64ARB: ?*const fn (program: c_uint, location: c_int, value: u64) callconv(APIENTRY) void,
    glProgramUniformHandleui64vARB: ?*const fn (program: c_uint, location: c_int, count: c_int, values: [*c]const u64) callconv(APIENTRY) void,
    glIsTextureHandleResidentARB: ?*const fn (handle: u64) callconv(APIENTRY) @"bool",
    glIsImageHandleResidentARB: ?*const fn (handle: u64) callconv(APIENTRY) @"bool",
    glVertexAttribL1ui64ARB: ?*const fn (index: c_uint, x: u64) callconv(APIENTRY) void,
    glVertexAttribL1ui64vARB: ?*const fn (index: c_uint, v: [*c]const u64) callconv(APIENTRY) void,
    glGetVertexAttribLui64vARB: ?*const fn (index: c_uint, pname: @"enum", params: [*c]u64) callconv(APIENTRY) void,
    glCreateSyncFromCLeventARB: ?*const fn (context: ?*struct__cl_context, event: ?*struct__cl_event, flags: Bitfield) callconv(APIENTRY) Sync,
    glDispatchComputeGroupSizeARB: ?*const fn (num_groups_x: c_uint, num_groups_y: c_uint, num_groups_z: c_uint, group_size_x: c_uint, group_size_y: c_uint, group_size_z: c_uint) callconv(APIENTRY) void,
    glDebugMessageControlARB: ?*const fn (source: @"enum", @"type": @"enum", severity: @"enum", count: c_int, ids: [*c]const c_uint, enabled: @"bool") callconv(APIENTRY) void,
    glDebugMessageInsertARB: ?*const fn (source: @"enum", @"type": @"enum", id: c_uint, severity: @"enum", length: c_int, buf: [*c]const u8) callconv(APIENTRY) void,
    glDebugMessageCallbackARB: ?*const fn (callback: GLDEBUGPROCARB, userParam: ?*const anyopaque) callconv(APIENTRY) void,
    glGetDebugMessageLogARB: ?*const fn (count: c_uint, bufSize: c_int, sources: [*c]@"enum", types: [*c]@"enum", ids: [*c]c_uint, severities: [*c]@"enum", lengths: [*c]c_int, messageLog: [*c]u8) callconv(APIENTRY) c_uint,
    glBlendEquationiARB: ?*const fn (buf: c_uint, mode: @"enum") callconv(APIENTRY) void,
    glBlendEquationSeparateiARB: ?*const fn (buf: c_uint, modeRGB: @"enum", modeAlpha: @"enum") callconv(APIENTRY) void,
    glBlendFunciARB: ?*const fn (buf: c_uint, src: @"enum", dst: @"enum") callconv(APIENTRY) void,
    glBlendFuncSeparateiARB: ?*const fn (buf: c_uint, srcRGB: @"enum", dstRGB: @"enum", srcAlpha: @"enum", dstAlpha: @"enum") callconv(APIENTRY) void,
    glDrawArraysInstancedARB: ?*const fn (mode: @"enum", first: c_int, count: c_int, primcount: c_int) callconv(APIENTRY) void,
    glDrawElementsInstancedARB: ?*const fn (mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, primcount: c_int) callconv(APIENTRY) void,
    glProgramParameteriARB: ?*const fn (program: c_uint, pname: @"enum", value: c_int) callconv(APIENTRY) void,
    glFramebufferTextureARB: ?*const fn (target: @"enum", attachment: @"enum", texture: c_uint, level: c_int) callconv(APIENTRY) void,
    glFramebufferTextureLayerARB: ?*const fn (target: @"enum", attachment: @"enum", texture: c_uint, level: c_int, layer: c_int) callconv(APIENTRY) void,
    glFramebufferTextureFaceARB: ?*const fn (target: @"enum", attachment: @"enum", texture: c_uint, level: c_int, face: @"enum") callconv(APIENTRY) void,
    glSpecializeShaderARB: ?*const fn (shader: c_uint, pEntryPoint: [*c]const u8, numSpecializationConstants: c_uint, pConstantIndex: [*c]const c_uint, pConstantValue: [*c]const c_uint) callconv(APIENTRY) void,
    glUniform1i64ARB: ?*const fn (location: c_int, x: i64) callconv(APIENTRY) void,
    glUniform2i64ARB: ?*const fn (location: c_int, x: i64, y: i64) callconv(APIENTRY) void,
    glUniform3i64ARB: ?*const fn (location: c_int, x: i64, y: i64, z: i64) callconv(APIENTRY) void,
    glUniform4i64ARB: ?*const fn (location: c_int, x: i64, y: i64, z: i64, w: i64) callconv(APIENTRY) void,
    glUniform1i64vARB: ?*const fn (location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glUniform2i64vARB: ?*const fn (location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glUniform3i64vARB: ?*const fn (location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glUniform4i64vARB: ?*const fn (location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glUniform1ui64ARB: ?*const fn (location: c_int, x: u64) callconv(APIENTRY) void,
    glUniform2ui64ARB: ?*const fn (location: c_int, x: u64, y: u64) callconv(APIENTRY) void,
    glUniform3ui64ARB: ?*const fn (location: c_int, x: u64, y: u64, z: u64) callconv(APIENTRY) void,
    glUniform4ui64ARB: ?*const fn (location: c_int, x: u64, y: u64, z: u64, w: u64) callconv(APIENTRY) void,
    glUniform1ui64vARB: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glUniform2ui64vARB: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glUniform3ui64vARB: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glUniform4ui64vARB: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glGetUniformi64vARB: ?*const fn (program: c_uint, location: c_int, params: [*c]i64) callconv(APIENTRY) void,
    glGetUniformui64vARB: ?*const fn (program: c_uint, location: c_int, params: [*c]u64) callconv(APIENTRY) void,
    glGetnUniformi64vARB: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]i64) callconv(APIENTRY) void,
    glGetnUniformui64vARB: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]u64) callconv(APIENTRY) void,
    glProgramUniform1i64ARB: ?*const fn (program: c_uint, location: c_int, x: i64) callconv(APIENTRY) void,
    glProgramUniform2i64ARB: ?*const fn (program: c_uint, location: c_int, x: i64, y: i64) callconv(APIENTRY) void,
    glProgramUniform3i64ARB: ?*const fn (program: c_uint, location: c_int, x: i64, y: i64, z: i64) callconv(APIENTRY) void,
    glProgramUniform4i64ARB: ?*const fn (program: c_uint, location: c_int, x: i64, y: i64, z: i64, w: i64) callconv(APIENTRY) void,
    glProgramUniform1i64vARB: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glProgramUniform2i64vARB: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glProgramUniform3i64vARB: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glProgramUniform4i64vARB: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glProgramUniform1ui64ARB: ?*const fn (program: c_uint, location: c_int, x: u64) callconv(APIENTRY) void,
    glProgramUniform2ui64ARB: ?*const fn (program: c_uint, location: c_int, x: u64, y: u64) callconv(APIENTRY) void,
    glProgramUniform3ui64ARB: ?*const fn (program: c_uint, location: c_int, x: u64, y: u64, z: u64) callconv(APIENTRY) void,
    glProgramUniform4ui64ARB: ?*const fn (program: c_uint, location: c_int, x: u64, y: u64, z: u64, w: u64) callconv(APIENTRY) void,
    glProgramUniform1ui64vARB: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glProgramUniform2ui64vARB: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glProgramUniform3ui64vARB: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glProgramUniform4ui64vARB: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glMultiDrawArraysIndirectCountARB: ?*const fn (mode: @"enum", indirect: ?*const anyopaque, drawcount: c_long, maxdrawcount: c_int, stride: c_int) callconv(APIENTRY) void,
    glMultiDrawElementsIndirectCountARB: ?*const fn (mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawcount: c_long, maxdrawcount: c_int, stride: c_int) callconv(APIENTRY) void,
    glVertexAttribDivisorARB: ?*const fn (index: c_uint, divisor: c_uint) callconv(APIENTRY) void,
    glMaxShaderCompilerThreadsARB: ?*const fn (count: c_uint) callconv(APIENTRY) void,
    glGetGraphicsResetStatusARB: ?*const fn () callconv(APIENTRY) @"enum",
    glGetnTexImageARB: ?*const fn (target: @"enum", level: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, img: ?*anyopaque) callconv(APIENTRY) void,
    glReadnPixelsARB: ?*const fn (x: c_int, y: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, data: ?*anyopaque) callconv(APIENTRY) void,
    glGetnCompressedTexImageARB: ?*const fn (target: @"enum", lod: c_int, bufSize: c_int, img: ?*anyopaque) callconv(APIENTRY) void,
    glGetnUniformfvARB: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]f32) callconv(APIENTRY) void,
    glGetnUniformivARB: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]c_int) callconv(APIENTRY) void,
    glGetnUniformuivARB: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]c_uint) callconv(APIENTRY) void,
    glGetnUniformdvARB: ?*const fn (program: c_uint, location: c_int, bufSize: c_int, params: [*c]f64) callconv(APIENTRY) void,
    glFramebufferSampleLocationsfvARB: ?*const fn (target: @"enum", start: c_uint, count: c_int, v: [*c]const f32) callconv(APIENTRY) void,
    glNamedFramebufferSampleLocationsfvARB: ?*const fn (framebuffer: c_uint, start: c_uint, count: c_int, v: [*c]const f32) callconv(APIENTRY) void,
    glEvaluateDepthValuesARB: ?*const fn () callconv(APIENTRY) void,
    glMinSampleShadingARB: ?*const fn (value: f32) callconv(APIENTRY) void,
    glNamedStringARB: ?*const fn (@"type": @"enum", namelen: c_int, name: [*c]const u8, stringlen: c_int, string: [*c]const u8) callconv(APIENTRY) void,
    glDeleteNamedStringARB: ?*const fn (namelen: c_int, name: [*c]const u8) callconv(APIENTRY) void,
    glCompileShaderIncludeARB: ?*const fn (shader: c_uint, count: c_int, path: [*c]const [*c]const u8, length: [*c]const c_int) callconv(APIENTRY) void,
    glIsNamedStringARB: ?*const fn (namelen: c_int, name: [*c]const u8) callconv(APIENTRY) @"bool",
    glGetNamedStringARB: ?*const fn (namelen: c_int, name: [*c]const u8, bufSize: c_int, stringlen: [*c]c_int, string: [*c]u8) callconv(APIENTRY) void,
    glGetNamedStringivARB: ?*const fn (namelen: c_int, name: [*c]const u8, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glBufferPageCommitmentARB: ?*const fn (target: @"enum", offset: c_long, size: c_ulong, commit: @"bool") callconv(APIENTRY) void,
    glNamedBufferPageCommitmentEXT: ?*const fn (buffer: c_uint, offset: c_long, size: c_ulong, commit: @"bool") callconv(APIENTRY) void,
    glNamedBufferPageCommitmentARB: ?*const fn (buffer: c_uint, offset: c_long, size: c_ulong, commit: @"bool") callconv(APIENTRY) void,
    glTexPageCommitmentARB: ?*const fn (target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, commit: @"bool") callconv(APIENTRY) void,
    glTexBufferARB: ?*const fn (target: @"enum", internalformat: @"enum", buffer: c_uint) callconv(APIENTRY) void,
    glDepthRangeArraydvNV: ?*const fn (first: c_uint, count: c_int, v: [*c]const f64) callconv(APIENTRY) void,
    glDepthRangeIndexeddNV: ?*const fn (index: c_uint, n: f64, f: f64) callconv(APIENTRY) void,
    glBlendBarrierKHR: ?*const fn () callconv(APIENTRY) void,
    glMaxShaderCompilerThreadsKHR: ?*const fn (count: c_uint) callconv(APIENTRY) void,
    glRenderbufferStorageMultisampleAdvancedAMD: ?*const fn (target: @"enum", samples: c_int, storageSamples: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glNamedRenderbufferStorageMultisampleAdvancedAMD: ?*const fn (renderbuffer: c_uint, samples: c_int, storageSamples: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glGetPerfMonitorGroupsAMD: ?*const fn (numGroups: [*c]c_int, groupsSize: c_int, groups: [*c]c_uint) callconv(APIENTRY) void,
    glGetPerfMonitorCountersAMD: ?*const fn (group: c_uint, numCounters: [*c]c_int, maxActiveCounters: [*c]c_int, counterSize: c_int, counters: [*c]c_uint) callconv(APIENTRY) void,
    glGetPerfMonitorGroupStringAMD: ?*const fn (group: c_uint, bufSize: c_int, length: [*c]c_int, groupString: [*c]u8) callconv(APIENTRY) void,
    glGetPerfMonitorCounterStringAMD: ?*const fn (group: c_uint, counter: c_uint, bufSize: c_int, length: [*c]c_int, counterString: [*c]u8) callconv(APIENTRY) void,
    glGetPerfMonitorCounterInfoAMD: ?*const fn (group: c_uint, counter: c_uint, pname: @"enum", data: ?*anyopaque) callconv(APIENTRY) void,
    glGenPerfMonitorsAMD: ?*const fn (n: c_int, monitors: [*c]c_uint) callconv(APIENTRY) void,
    glDeletePerfMonitorsAMD: ?*const fn (n: c_int, monitors: [*c]c_uint) callconv(APIENTRY) void,
    glSelectPerfMonitorCountersAMD: ?*const fn (monitor: c_uint, enable: @"bool", group: c_uint, numCounters: c_int, counterList: [*c]c_uint) callconv(APIENTRY) void,
    glBeginPerfMonitorAMD: ?*const fn (monitor: c_uint) callconv(APIENTRY) void,
    glEndPerfMonitorAMD: ?*const fn (monitor: c_uint) callconv(APIENTRY) void,
    glGetPerfMonitorCounterDataAMD: ?*const fn (monitor: c_uint, pname: @"enum", dataSize: c_int, data: [*c]c_uint, bytesWritten: [*c]c_int) callconv(APIENTRY) void,
    glEGLImageTargetTexStorageEXT: ?*const fn (target: @"enum", image: GLeglImageOES, attrib_list: [*c]const c_int) callconv(APIENTRY) void,
    glEGLImageTargetTextureStorageEXT: ?*const fn (texture: c_uint, image: GLeglImageOES, attrib_list: [*c]const c_int) callconv(APIENTRY) void,
    glLabelObjectEXT: ?*const fn (@"type": @"enum", object: c_uint, length: c_int, label: [*c]const u8) callconv(APIENTRY) void,
    glGetObjectLabelEXT: ?*const fn (@"type": @"enum", object: c_uint, bufSize: c_int, length: [*c]c_int, label: [*c]u8) callconv(APIENTRY) void,
    glInsertEventMarkerEXT: ?*const fn (length: c_int, marker: [*c]const u8) callconv(APIENTRY) void,
    glPushGroupMarkerEXT: ?*const fn (length: c_int, marker: [*c]const u8) callconv(APIENTRY) void,
    glPopGroupMarkerEXT: ?*const fn () callconv(APIENTRY) void,
    glMatrixLoadfEXT: ?*const fn (mode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glMatrixLoaddEXT: ?*const fn (mode: @"enum", m: [*c]const f64) callconv(APIENTRY) void,
    glMatrixMultfEXT: ?*const fn (mode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glMatrixMultdEXT: ?*const fn (mode: @"enum", m: [*c]const f64) callconv(APIENTRY) void,
    glMatrixLoadIdentityEXT: ?*const fn (mode: @"enum") callconv(APIENTRY) void,
    glMatrixRotatefEXT: ?*const fn (mode: @"enum", angle: f32, x: f32, y: f32, z: f32) callconv(APIENTRY) void,
    glMatrixRotatedEXT: ?*const fn (mode: @"enum", angle: f64, x: f64, y: f64, z: f64) callconv(APIENTRY) void,
    glMatrixScalefEXT: ?*const fn (mode: @"enum", x: f32, y: f32, z: f32) callconv(APIENTRY) void,
    glMatrixScaledEXT: ?*const fn (mode: @"enum", x: f64, y: f64, z: f64) callconv(APIENTRY) void,
    glMatrixTranslatefEXT: ?*const fn (mode: @"enum", x: f32, y: f32, z: f32) callconv(APIENTRY) void,
    glMatrixTranslatedEXT: ?*const fn (mode: @"enum", x: f64, y: f64, z: f64) callconv(APIENTRY) void,
    glMatrixFrustumEXT: ?*const fn (mode: @"enum", left: f64, right: f64, bottom: f64, top: f64, zNear: f64, zFar: f64) callconv(APIENTRY) void,
    glMatrixOrthoEXT: ?*const fn (mode: @"enum", left: f64, right: f64, bottom: f64, top: f64, zNear: f64, zFar: f64) callconv(APIENTRY) void,
    glMatrixPopEXT: ?*const fn (mode: @"enum") callconv(APIENTRY) void,
    glMatrixPushEXT: ?*const fn (mode: @"enum") callconv(APIENTRY) void,
    glClientAttribDefaultEXT: ?*const fn (mask: Bitfield) callconv(APIENTRY) void,
    glPushClientAttribDefaultEXT: ?*const fn (mask: Bitfield) callconv(APIENTRY) void,
    glTextureParameterfEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", param: f32) callconv(APIENTRY) void,
    glTextureParameterfvEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", params: [*c]const f32) callconv(APIENTRY) void,
    glTextureParameteriEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glTextureParameterivEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glTextureImage1DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, internalformat: c_int, width: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glTextureImage2DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glTextureSubImage1DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glTextureSubImage2DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glCopyTextureImage1DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, border: c_int) callconv(APIENTRY) void,
    glCopyTextureImage2DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, height: c_int, border: c_int) callconv(APIENTRY) void,
    glCopyTextureSubImage1DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, x: c_int, y: c_int, width: c_int) callconv(APIENTRY) void,
    glCopyTextureSubImage2DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glGetTextureImageEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, format: @"enum", @"type": @"enum", pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetTextureParameterfvEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetTextureParameterivEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetTextureLevelParameterfvEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetTextureLevelParameterivEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glTextureImage3DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, depth: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glTextureSubImage3DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glCopyTextureSubImage3DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glBindMultiTextureEXT: ?*const fn (texunit: @"enum", target: @"enum", texture: c_uint) callconv(APIENTRY) void,
    glMultiTexCoordPointerEXT: ?*const fn (texunit: @"enum", size: c_int, @"type": @"enum", stride: c_int, pointer: ?*const anyopaque) callconv(APIENTRY) void,
    glMultiTexEnvfEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", param: f32) callconv(APIENTRY) void,
    glMultiTexEnvfvEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const f32) callconv(APIENTRY) void,
    glMultiTexEnviEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glMultiTexEnvivEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glMultiTexGendEXT: ?*const fn (texunit: @"enum", coord: @"enum", pname: @"enum", param: f64) callconv(APIENTRY) void,
    glMultiTexGendvEXT: ?*const fn (texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]const f64) callconv(APIENTRY) void,
    glMultiTexGenfEXT: ?*const fn (texunit: @"enum", coord: @"enum", pname: @"enum", param: f32) callconv(APIENTRY) void,
    glMultiTexGenfvEXT: ?*const fn (texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]const f32) callconv(APIENTRY) void,
    glMultiTexGeniEXT: ?*const fn (texunit: @"enum", coord: @"enum", pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glMultiTexGenivEXT: ?*const fn (texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glGetMultiTexEnvfvEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetMultiTexEnvivEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetMultiTexGendvEXT: ?*const fn (texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]f64) callconv(APIENTRY) void,
    glGetMultiTexGenfvEXT: ?*const fn (texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetMultiTexGenivEXT: ?*const fn (texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glMultiTexParameteriEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glMultiTexParameterivEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glMultiTexParameterfEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", param: f32) callconv(APIENTRY) void,
    glMultiTexParameterfvEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const f32) callconv(APIENTRY) void,
    glMultiTexImage1DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, internalformat: c_int, width: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glMultiTexImage2DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glMultiTexSubImage1DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glMultiTexSubImage2DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glCopyMultiTexImage1DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, border: c_int) callconv(APIENTRY) void,
    glCopyMultiTexImage2DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, height: c_int, border: c_int) callconv(APIENTRY) void,
    glCopyMultiTexSubImage1DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, x: c_int, y: c_int, width: c_int) callconv(APIENTRY) void,
    glCopyMultiTexSubImage2DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glGetMultiTexImageEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, format: @"enum", @"type": @"enum", pixels: ?*anyopaque) callconv(APIENTRY) void,
    glGetMultiTexParameterfvEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetMultiTexParameterivEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetMultiTexLevelParameterfvEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, pname: @"enum", params: [*c]f32) callconv(APIENTRY) void,
    glGetMultiTexLevelParameterivEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glMultiTexImage3DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, depth: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glMultiTexSubImage3DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
    glCopyMultiTexSubImage3DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glEnableClientStateIndexedEXT: ?*const fn (array: @"enum", index: c_uint) callconv(APIENTRY) void,
    glDisableClientStateIndexedEXT: ?*const fn (array: @"enum", index: c_uint) callconv(APIENTRY) void,
    glGetFloatIndexedvEXT: ?*const fn (target: @"enum", index: c_uint, data: [*c]f32) callconv(APIENTRY) void,
    glGetDoubleIndexedvEXT: ?*const fn (target: @"enum", index: c_uint, data: [*c]f64) callconv(APIENTRY) void,
    glGetPointerIndexedvEXT: ?*const fn (target: @"enum", index: c_uint, data: [*c]?*anyopaque) callconv(APIENTRY) void,
    glEnableIndexedEXT: ?*const fn (target: @"enum", index: c_uint) callconv(APIENTRY) void,
    glDisableIndexedEXT: ?*const fn (target: @"enum", index: c_uint) callconv(APIENTRY) void,
    glIsEnabledIndexedEXT: ?*const fn (target: @"enum", index: c_uint) callconv(APIENTRY) @"bool",
    glGetIntegerIndexedvEXT: ?*const fn (target: @"enum", index: c_uint, data: [*c]c_int) callconv(APIENTRY) void,
    glGetBooleanIndexedvEXT: ?*const fn (target: @"enum", index: c_uint, data: [*c]@"bool") callconv(APIENTRY) void,
    glCompressedTextureImage3DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTextureImage2DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTextureImage1DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", width: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTextureSubImage3DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTextureSubImage2DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedTextureSubImage1DEXT: ?*const fn (texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glGetCompressedTextureImageEXT: ?*const fn (texture: c_uint, target: @"enum", lod: c_int, img: ?*anyopaque) callconv(APIENTRY) void,
    glCompressedMultiTexImage3DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedMultiTexImage2DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedMultiTexImage1DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", width: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedMultiTexSubImage3DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedMultiTexSubImage2DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glCompressedMultiTexSubImage1DEXT: ?*const fn (texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) callconv(APIENTRY) void,
    glGetCompressedMultiTexImageEXT: ?*const fn (texunit: @"enum", target: @"enum", lod: c_int, img: ?*anyopaque) callconv(APIENTRY) void,
    glMatrixLoadTransposefEXT: ?*const fn (mode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glMatrixLoadTransposedEXT: ?*const fn (mode: @"enum", m: [*c]const f64) callconv(APIENTRY) void,
    glMatrixMultTransposefEXT: ?*const fn (mode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glMatrixMultTransposedEXT: ?*const fn (mode: @"enum", m: [*c]const f64) callconv(APIENTRY) void,
    glNamedBufferDataEXT: ?*const fn (buffer: c_uint, size: c_ulong, data: ?*const anyopaque, usage: @"enum") callconv(APIENTRY) void,
    glNamedBufferSubDataEXT: ?*const fn (buffer: c_uint, offset: c_long, size: c_ulong, data: ?*const anyopaque) callconv(APIENTRY) void,
    glMapNamedBufferEXT: ?*const fn (buffer: c_uint, access: @"enum") callconv(APIENTRY) ?*anyopaque,
    glUnmapNamedBufferEXT: ?*const fn (buffer: c_uint) callconv(APIENTRY) @"bool",
    glGetNamedBufferParameterivEXT: ?*const fn (buffer: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetNamedBufferPointervEXT: ?*const fn (buffer: c_uint, pname: @"enum", params: [*c]?*anyopaque) callconv(APIENTRY) void,
    glGetNamedBufferSubDataEXT: ?*const fn (buffer: c_uint, offset: c_long, size: c_ulong, data: ?*anyopaque) callconv(APIENTRY) void,
    glProgramUniform1fEXT: ?*const fn (program: c_uint, location: c_int, v0: f32) callconv(APIENTRY) void,
    glProgramUniform2fEXT: ?*const fn (program: c_uint, location: c_int, v0: f32, v1: f32) callconv(APIENTRY) void,
    glProgramUniform3fEXT: ?*const fn (program: c_uint, location: c_int, v0: f32, v1: f32, v2: f32) callconv(APIENTRY) void,
    glProgramUniform4fEXT: ?*const fn (program: c_uint, location: c_int, v0: f32, v1: f32, v2: f32, v3: f32) callconv(APIENTRY) void,
    glProgramUniform1iEXT: ?*const fn (program: c_uint, location: c_int, v0: c_int) callconv(APIENTRY) void,
    glProgramUniform2iEXT: ?*const fn (program: c_uint, location: c_int, v0: c_int, v1: c_int) callconv(APIENTRY) void,
    glProgramUniform3iEXT: ?*const fn (program: c_uint, location: c_int, v0: c_int, v1: c_int, v2: c_int) callconv(APIENTRY) void,
    glProgramUniform4iEXT: ?*const fn (program: c_uint, location: c_int, v0: c_int, v1: c_int, v2: c_int, v3: c_int) callconv(APIENTRY) void,
    glProgramUniform1fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniform2fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniform3fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniform4fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniform1ivEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glProgramUniform2ivEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glProgramUniform3ivEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glProgramUniform4ivEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) callconv(APIENTRY) void,
    glProgramUniformMatrix2fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix3fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix4fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix2x3fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix3x2fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix2x4fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix4x2fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix3x4fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glProgramUniformMatrix4x3fvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) callconv(APIENTRY) void,
    glTextureBufferEXT: ?*const fn (texture: c_uint, target: @"enum", internalformat: @"enum", buffer: c_uint) callconv(APIENTRY) void,
    glMultiTexBufferEXT: ?*const fn (texunit: @"enum", target: @"enum", internalformat: @"enum", buffer: c_uint) callconv(APIENTRY) void,
    glTextureParameterIivEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glTextureParameterIuivEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", params: [*c]const c_uint) callconv(APIENTRY) void,
    glGetTextureParameterIivEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetTextureParameterIuivEXT: ?*const fn (texture: c_uint, target: @"enum", pname: @"enum", params: [*c]c_uint) callconv(APIENTRY) void,
    glMultiTexParameterIivEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const c_int) callconv(APIENTRY) void,
    glMultiTexParameterIuivEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const c_uint) callconv(APIENTRY) void,
    glGetMultiTexParameterIivEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetMultiTexParameterIuivEXT: ?*const fn (texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]c_uint) callconv(APIENTRY) void,
    glProgramUniform1uiEXT: ?*const fn (program: c_uint, location: c_int, v0: c_uint) callconv(APIENTRY) void,
    glProgramUniform2uiEXT: ?*const fn (program: c_uint, location: c_int, v0: c_uint, v1: c_uint) callconv(APIENTRY) void,
    glProgramUniform3uiEXT: ?*const fn (program: c_uint, location: c_int, v0: c_uint, v1: c_uint, v2: c_uint) callconv(APIENTRY) void,
    glProgramUniform4uiEXT: ?*const fn (program: c_uint, location: c_int, v0: c_uint, v1: c_uint, v2: c_uint, v3: c_uint) callconv(APIENTRY) void,
    glProgramUniform1uivEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glProgramUniform2uivEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glProgramUniform3uivEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glProgramUniform4uivEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) callconv(APIENTRY) void,
    glNamedProgramLocalParameters4fvEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, count: c_int, params: [*c]const f32) callconv(APIENTRY) void,
    glNamedProgramLocalParameterI4iEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, x: c_int, y: c_int, z: c_int, w: c_int) callconv(APIENTRY) void,
    glNamedProgramLocalParameterI4ivEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, params: [*c]const c_int) callconv(APIENTRY) void,
    glNamedProgramLocalParametersI4ivEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, count: c_int, params: [*c]const c_int) callconv(APIENTRY) void,
    glNamedProgramLocalParameterI4uiEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, x: c_uint, y: c_uint, z: c_uint, w: c_uint) callconv(APIENTRY) void,
    glNamedProgramLocalParameterI4uivEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, params: [*c]const c_uint) callconv(APIENTRY) void,
    glNamedProgramLocalParametersI4uivEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, count: c_int, params: [*c]const c_uint) callconv(APIENTRY) void,
    glGetNamedProgramLocalParameterIivEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, params: [*c]c_int) callconv(APIENTRY) void,
    glGetNamedProgramLocalParameterIuivEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, params: [*c]c_uint) callconv(APIENTRY) void,
    glEnableClientStateiEXT: ?*const fn (array: @"enum", index: c_uint) callconv(APIENTRY) void,
    glDisableClientStateiEXT: ?*const fn (array: @"enum", index: c_uint) callconv(APIENTRY) void,
    glGetFloati_vEXT: ?*const fn (pname: @"enum", index: c_uint, params: [*c]f32) callconv(APIENTRY) void,
    glGetDoublei_vEXT: ?*const fn (pname: @"enum", index: c_uint, params: [*c]f64) callconv(APIENTRY) void,
    glGetPointeri_vEXT: ?*const fn (pname: @"enum", index: c_uint, params: [*c]?*anyopaque) callconv(APIENTRY) void,
    glNamedProgramStringEXT: ?*const fn (program: c_uint, target: @"enum", format: @"enum", len: c_int, string: ?*const anyopaque) callconv(APIENTRY) void,
    glNamedProgramLocalParameter4dEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, x: f64, y: f64, z: f64, w: f64) callconv(APIENTRY) void,
    glNamedProgramLocalParameter4dvEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, params: [*c]const f64) callconv(APIENTRY) void,
    glNamedProgramLocalParameter4fEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, x: f32, y: f32, z: f32, w: f32) callconv(APIENTRY) void,
    glNamedProgramLocalParameter4fvEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, params: [*c]const f32) callconv(APIENTRY) void,
    glGetNamedProgramLocalParameterdvEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, params: [*c]f64) callconv(APIENTRY) void,
    glGetNamedProgramLocalParameterfvEXT: ?*const fn (program: c_uint, target: @"enum", index: c_uint, params: [*c]f32) callconv(APIENTRY) void,
    glGetNamedProgramivEXT: ?*const fn (program: c_uint, target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGetNamedProgramStringEXT: ?*const fn (program: c_uint, target: @"enum", pname: @"enum", string: ?*anyopaque) callconv(APIENTRY) void,
    glNamedRenderbufferStorageEXT: ?*const fn (renderbuffer: c_uint, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glGetNamedRenderbufferParameterivEXT: ?*const fn (renderbuffer: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glNamedRenderbufferStorageMultisampleEXT: ?*const fn (renderbuffer: c_uint, samples: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glNamedRenderbufferStorageMultisampleCoverageEXT: ?*const fn (renderbuffer: c_uint, coverageSamples: c_int, colorSamples: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glCheckNamedFramebufferStatusEXT: ?*const fn (framebuffer: c_uint, target: @"enum") callconv(APIENTRY) @"enum",
    glNamedFramebufferTexture1DEXT: ?*const fn (framebuffer: c_uint, attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int) callconv(APIENTRY) void,
    glNamedFramebufferTexture2DEXT: ?*const fn (framebuffer: c_uint, attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int) callconv(APIENTRY) void,
    glNamedFramebufferTexture3DEXT: ?*const fn (framebuffer: c_uint, attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int, zoffset: c_int) callconv(APIENTRY) void,
    glNamedFramebufferRenderbufferEXT: ?*const fn (framebuffer: c_uint, attachment: @"enum", renderbuffertarget: @"enum", renderbuffer: c_uint) callconv(APIENTRY) void,
    glGetNamedFramebufferAttachmentParameterivEXT: ?*const fn (framebuffer: c_uint, attachment: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glGenerateTextureMipmapEXT: ?*const fn (texture: c_uint, target: @"enum") callconv(APIENTRY) void,
    glGenerateMultiTexMipmapEXT: ?*const fn (texunit: @"enum", target: @"enum") callconv(APIENTRY) void,
    glFramebufferDrawBufferEXT: ?*const fn (framebuffer: c_uint, mode: @"enum") callconv(APIENTRY) void,
    glFramebufferDrawBuffersEXT: ?*const fn (framebuffer: c_uint, n: c_int, bufs: [*c]const @"enum") callconv(APIENTRY) void,
    glFramebufferReadBufferEXT: ?*const fn (framebuffer: c_uint, mode: @"enum") callconv(APIENTRY) void,
    glGetFramebufferParameterivEXT: ?*const fn (framebuffer: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glNamedCopyBufferSubDataEXT: ?*const fn (readBuffer: c_uint, writeBuffer: c_uint, readOffset: c_long, writeOffset: c_long, size: c_ulong) callconv(APIENTRY) void,
    glNamedFramebufferTextureEXT: ?*const fn (framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int) callconv(APIENTRY) void,
    glNamedFramebufferTextureLayerEXT: ?*const fn (framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int, layer: c_int) callconv(APIENTRY) void,
    glNamedFramebufferTextureFaceEXT: ?*const fn (framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int, face: @"enum") callconv(APIENTRY) void,
    glTextureRenderbufferEXT: ?*const fn (texture: c_uint, target: @"enum", renderbuffer: c_uint) callconv(APIENTRY) void,
    glMultiTexRenderbufferEXT: ?*const fn (texunit: @"enum", target: @"enum", renderbuffer: c_uint) callconv(APIENTRY) void,
    glVertexArrayVertexOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArrayColorOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArrayEdgeFlagOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArrayIndexOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArrayNormalOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArrayTexCoordOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArrayMultiTexCoordOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, texunit: @"enum", size: c_int, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArrayFogCoordOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArraySecondaryColorOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArrayVertexAttribOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, index: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glVertexArrayVertexAttribIOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, index: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glEnableVertexArrayEXT: ?*const fn (vaobj: c_uint, array: @"enum") callconv(APIENTRY) void,
    glDisableVertexArrayEXT: ?*const fn (vaobj: c_uint, array: @"enum") callconv(APIENTRY) void,
    glEnableVertexArrayAttribEXT: ?*const fn (vaobj: c_uint, index: c_uint) callconv(APIENTRY) void,
    glDisableVertexArrayAttribEXT: ?*const fn (vaobj: c_uint, index: c_uint) callconv(APIENTRY) void,
    glGetVertexArrayIntegervEXT: ?*const fn (vaobj: c_uint, pname: @"enum", param: [*c]c_int) callconv(APIENTRY) void,
    glGetVertexArrayPointervEXT: ?*const fn (vaobj: c_uint, pname: @"enum", param: [*c]?*anyopaque) callconv(APIENTRY) void,
    glGetVertexArrayIntegeri_vEXT: ?*const fn (vaobj: c_uint, index: c_uint, pname: @"enum", param: [*c]c_int) callconv(APIENTRY) void,
    glGetVertexArrayPointeri_vEXT: ?*const fn (vaobj: c_uint, index: c_uint, pname: @"enum", param: [*c]?*anyopaque) callconv(APIENTRY) void,
    glMapNamedBufferRangeEXT: ?*const fn (buffer: c_uint, offset: c_long, length: c_ulong, access: Bitfield) callconv(APIENTRY) ?*anyopaque,
    glFlushMappedNamedBufferRangeEXT: ?*const fn (buffer: c_uint, offset: c_long, length: c_ulong) callconv(APIENTRY) void,
    glNamedBufferStorageEXT: ?*const fn (buffer: c_uint, size: c_ulong, data: ?*const anyopaque, flags: Bitfield) callconv(APIENTRY) void,
    glClearNamedBufferDataEXT: ?*const fn (buffer: c_uint, internalformat: @"enum", format: @"enum", @"type": @"enum", data: ?*const anyopaque) callconv(APIENTRY) void,
    glClearNamedBufferSubDataEXT: ?*const fn (buffer: c_uint, internalformat: @"enum", offset: c_ulong, size: c_ulong, format: @"enum", @"type": @"enum", data: ?*const anyopaque) callconv(APIENTRY) void,
    glNamedFramebufferParameteriEXT: ?*const fn (framebuffer: c_uint, pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glGetNamedFramebufferParameterivEXT: ?*const fn (framebuffer: c_uint, pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glProgramUniform1dEXT: ?*const fn (program: c_uint, location: c_int, x: f64) callconv(APIENTRY) void,
    glProgramUniform2dEXT: ?*const fn (program: c_uint, location: c_int, x: f64, y: f64) callconv(APIENTRY) void,
    glProgramUniform3dEXT: ?*const fn (program: c_uint, location: c_int, x: f64, y: f64, z: f64) callconv(APIENTRY) void,
    glProgramUniform4dEXT: ?*const fn (program: c_uint, location: c_int, x: f64, y: f64, z: f64, w: f64) callconv(APIENTRY) void,
    glProgramUniform1dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniform2dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniform3dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniform4dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix2dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix3dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix4dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix2x3dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix2x4dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix3x2dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix3x4dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix4x2dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glProgramUniformMatrix4x3dvEXT: ?*const fn (program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) callconv(APIENTRY) void,
    glTextureBufferRangeEXT: ?*const fn (texture: c_uint, target: @"enum", internalformat: @"enum", buffer: c_uint, offset: c_long, size: c_ulong) callconv(APIENTRY) void,
    glTextureStorage1DEXT: ?*const fn (texture: c_uint, target: @"enum", levels: c_int, internalformat: @"enum", width: c_int) callconv(APIENTRY) void,
    glTextureStorage2DEXT: ?*const fn (texture: c_uint, target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glTextureStorage3DEXT: ?*const fn (texture: c_uint, target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int) callconv(APIENTRY) void,
    glTextureStorage2DMultisampleEXT: ?*const fn (texture: c_uint, target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, fixedsamplelocations: @"bool") callconv(APIENTRY) void,
    glTextureStorage3DMultisampleEXT: ?*const fn (texture: c_uint, target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, fixedsamplelocations: @"bool") callconv(APIENTRY) void,
    glVertexArrayBindVertexBufferEXT: ?*const fn (vaobj: c_uint, binding_index: c_uint, buffer: c_uint, offset: c_long, stride: c_int) callconv(APIENTRY) void,
    glVertexArrayVertexAttribFormatEXT: ?*const fn (vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", relative_offset: c_uint) callconv(APIENTRY) void,
    glVertexArrayVertexAttribIFormatEXT: ?*const fn (vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) callconv(APIENTRY) void,
    glVertexArrayVertexAttribLFormatEXT: ?*const fn (vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) callconv(APIENTRY) void,
    glVertexArrayVertexAttribBindingEXT: ?*const fn (vaobj: c_uint, attribindex: c_uint, binding_index: c_uint) callconv(APIENTRY) void,
    glVertexArrayVertexBindingDivisorEXT: ?*const fn (vaobj: c_uint, binding_index: c_uint, divisor: c_uint) callconv(APIENTRY) void,
    glVertexArrayVertexAttribLOffsetEXT: ?*const fn (vaobj: c_uint, buffer: c_uint, index: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) callconv(APIENTRY) void,
    glTexturePageCommitmentEXT: ?*const fn (texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, commit: @"bool") callconv(APIENTRY) void,
    glVertexArrayVertexAttribDivisorEXT: ?*const fn (vaobj: c_uint, index: c_uint, divisor: c_uint) callconv(APIENTRY) void,
    glDrawArraysInstancedEXT: ?*const fn (mode: @"enum", start: c_int, count: c_int, primcount: c_int) callconv(APIENTRY) void,
    glDrawElementsInstancedEXT: ?*const fn (mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, primcount: c_int) callconv(APIENTRY) void,
    glPolygonOffsetClampEXT: ?*const fn (factor: f32, units: f32, clamp: f32) callconv(APIENTRY) void,
    glRasterSamplesEXT: ?*const fn (samples: c_uint, fixedsamplelocations: @"bool") callconv(APIENTRY) void,
    glUseShaderProgramEXT: ?*const fn (@"type": @"enum", program: c_uint) callconv(APIENTRY) void,
    glActiveProgramEXT: ?*const fn (program: c_uint) callconv(APIENTRY) void,
    glCreateShaderProgramEXT: ?*const fn (@"type": @"enum", string: [*c]const u8) callconv(APIENTRY) c_uint,
    glFramebufferFetchBarrierEXT: ?*const fn () callconv(APIENTRY) void,
    glTexStorage1DEXT: ?*const fn (target: @"enum", levels: c_int, internalformat: @"enum", width: c_int) callconv(APIENTRY) void,
    glTexStorage2DEXT: ?*const fn (target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glTexStorage3DEXT: ?*const fn (target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int) callconv(APIENTRY) void,
    glWindowRectanglesEXT: ?*const fn (mode: @"enum", count: c_int, box: [*c]const c_int) callconv(APIENTRY) void,
    glApplyFramebufferAttachmentCMAAINTEL: ?*const fn () callconv(APIENTRY) void,
    glBeginPerfQueryINTEL: ?*const fn (queryHandle: c_uint) callconv(APIENTRY) void,
    glCreatePerfQueryINTEL: ?*const fn (queryId: c_uint, queryHandle: [*c]c_uint) callconv(APIENTRY) void,
    glDeletePerfQueryINTEL: ?*const fn (queryHandle: c_uint) callconv(APIENTRY) void,
    glEndPerfQueryINTEL: ?*const fn (queryHandle: c_uint) callconv(APIENTRY) void,
    glGetFirstPerfQueryIdINTEL: ?*const fn (queryId: [*c]c_uint) callconv(APIENTRY) void,
    glGetNextPerfQueryIdINTEL: ?*const fn (queryId: c_uint, nextQueryId: [*c]c_uint) callconv(APIENTRY) void,
    glGetPerfCounterInfoINTEL: ?*const fn (queryId: c_uint, counterId: c_uint, counterNameLength: c_uint, counterName: [*c]u8, counterDescLength: c_uint, counterDesc: [*c]u8, counterOffset: [*c]c_uint, counterDataSize: [*c]c_uint, counterTypeEnum: [*c]c_uint, counterDataTypeEnum: [*c]c_uint, rawCounterMaxValue: [*c]u64) callconv(APIENTRY) void,
    glGetPerfQueryDataINTEL: ?*const fn (queryHandle: c_uint, flags: c_uint, dataSize: c_int, data: ?*anyopaque, bytesWritten: [*c]c_uint) callconv(APIENTRY) void,
    glGetPerfQueryIdByNameINTEL: ?*const fn (queryName: [*c]u8, queryId: [*c]c_uint) callconv(APIENTRY) void,
    glGetPerfQueryInfoINTEL: ?*const fn (queryId: c_uint, queryNameLength: c_uint, queryName: [*c]u8, dataSize: [*c]c_uint, noCounters: [*c]c_uint, noInstances: [*c]c_uint, capsMask: [*c]c_uint) callconv(APIENTRY) void,
    glFramebufferParameteriMESA: ?*const fn (target: @"enum", pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glGetFramebufferParameterivMESA: ?*const fn (target: @"enum", pname: @"enum", params: [*c]c_int) callconv(APIENTRY) void,
    glMultiDrawArraysIndirectBindlessNV: ?*const fn (mode: @"enum", indirect: ?*const anyopaque, drawCount: c_int, stride: c_int, vertexBufferCount: c_int) callconv(APIENTRY) void,
    glMultiDrawElementsIndirectBindlessNV: ?*const fn (mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawCount: c_int, stride: c_int, vertexBufferCount: c_int) callconv(APIENTRY) void,
    glMultiDrawArraysIndirectBindlessCountNV: ?*const fn (mode: @"enum", indirect: ?*const anyopaque, drawCount: c_int, maxDrawCount: c_int, stride: c_int, vertexBufferCount: c_int) callconv(APIENTRY) void,
    glMultiDrawElementsIndirectBindlessCountNV: ?*const fn (mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawCount: c_int, maxDrawCount: c_int, stride: c_int, vertexBufferCount: c_int) callconv(APIENTRY) void,
    glGetTextureHandleNV: ?*const fn (texture: c_uint) callconv(APIENTRY) u64,
    glGetTextureSamplerHandleNV: ?*const fn (texture: c_uint, sampler: c_uint) callconv(APIENTRY) u64,
    glMakeTextureHandleResidentNV: ?*const fn (handle: u64) callconv(APIENTRY) void,
    glMakeTextureHandleNonResidentNV: ?*const fn (handle: u64) callconv(APIENTRY) void,
    glGetImageHandleNV: ?*const fn (texture: c_uint, level: c_int, layered: @"bool", layer: c_int, format: @"enum") callconv(APIENTRY) u64,
    glMakeImageHandleResidentNV: ?*const fn (handle: u64, access: @"enum") callconv(APIENTRY) void,
    glMakeImageHandleNonResidentNV: ?*const fn (handle: u64) callconv(APIENTRY) void,
    glUniformHandleui64NV: ?*const fn (location: c_int, value: u64) callconv(APIENTRY) void,
    glUniformHandleui64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glProgramUniformHandleui64NV: ?*const fn (program: c_uint, location: c_int, value: u64) callconv(APIENTRY) void,
    glProgramUniformHandleui64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, values: [*c]const u64) callconv(APIENTRY) void,
    glIsTextureHandleResidentNV: ?*const fn (handle: u64) callconv(APIENTRY) @"bool",
    glIsImageHandleResidentNV: ?*const fn (handle: u64) callconv(APIENTRY) @"bool",
    glBlendParameteriNV: ?*const fn (pname: @"enum", value: c_int) callconv(APIENTRY) void,
    glBlendBarrierNV: ?*const fn () callconv(APIENTRY) void,
    glViewportPositionWScaleNV: ?*const fn (index: c_uint, xcoeff: f32, ycoeff: f32) callconv(APIENTRY) void,
    glCreateStatesNV: ?*const fn (n: c_int, states: [*c]c_uint) callconv(APIENTRY) void,
    glDeleteStatesNV: ?*const fn (n: c_int, states: [*c]const c_uint) callconv(APIENTRY) void,
    glIsStateNV: ?*const fn (state: c_uint) callconv(APIENTRY) @"bool",
    glStateCaptureNV: ?*const fn (state: c_uint, mode: @"enum") callconv(APIENTRY) void,
    glGetCommandHeaderNV: ?*const fn (tokenID: @"enum", size: c_uint) callconv(APIENTRY) c_uint,
    glGetStageIndexNV: ?*const fn (shadertype: @"enum") callconv(APIENTRY) c_ushort,
    glDrawCommandsNV: ?*const fn (primitiveMode: @"enum", buffer: c_uint, indirects: [*c]const c_long, sizes: [*c]const c_int, count: c_uint) callconv(APIENTRY) void,
    glDrawCommandsAddressNV: ?*const fn (primitiveMode: @"enum", indirects: [*c]const u64, sizes: [*c]const c_int, count: c_uint) callconv(APIENTRY) void,
    glDrawCommandsStatesNV: ?*const fn (buffer: c_uint, indirects: [*c]const c_long, sizes: [*c]const c_int, states: [*c]const c_uint, fbos: [*c]const c_uint, count: c_uint) callconv(APIENTRY) void,
    glDrawCommandsStatesAddressNV: ?*const fn (indirects: [*c]const u64, sizes: [*c]const c_int, states: [*c]const c_uint, fbos: [*c]const c_uint, count: c_uint) callconv(APIENTRY) void,
    glCreateCommandListsNV: ?*const fn (n: c_int, lists: [*c]c_uint) callconv(APIENTRY) void,
    glDeleteCommandListsNV: ?*const fn (n: c_int, lists: [*c]const c_uint) callconv(APIENTRY) void,
    glIsCommandListNV: ?*const fn (list: c_uint) callconv(APIENTRY) @"bool",
    glListDrawCommandsStatesClientNV: ?*const fn (list: c_uint, segment: c_uint, indirects: [*c]?*const anyopaque, sizes: [*c]const c_int, states: [*c]const c_uint, fbos: [*c]const c_uint, count: c_uint) callconv(APIENTRY) void,
    glCommandListSegmentsNV: ?*const fn (list: c_uint, segments: c_uint) callconv(APIENTRY) void,
    glCompileCommandListNV: ?*const fn (list: c_uint) callconv(APIENTRY) void,
    glCallCommandListNV: ?*const fn (list: c_uint) callconv(APIENTRY) void,
    glBeginConditionalRenderNV: ?*const fn (id: c_uint, mode: @"enum") callconv(APIENTRY) void,
    glEndConditionalRenderNV: ?*const fn () callconv(APIENTRY) void,
    glSubpixelPrecisionBiasNV: ?*const fn (xbits: c_uint, ybits: c_uint) callconv(APIENTRY) void,
    glConservativeRasterParameterfNV: ?*const fn (pname: @"enum", value: f32) callconv(APIENTRY) void,
    glConservativeRasterParameteriNV: ?*const fn (pname: @"enum", param: c_int) callconv(APIENTRY) void,
    glDepthRangedNV: ?*const fn (zNear: f64, zFar: f64) callconv(APIENTRY) void,
    glClearDepthdNV: ?*const fn (depth: f64) callconv(APIENTRY) void,
    glDepthBoundsdNV: ?*const fn (zmin: f64, zmax: f64) callconv(APIENTRY) void,
    glDrawVkImageNV: ?*const fn (vkImage: u64, sampler: c_uint, x0: f32, y0: f32, x1: f32, y1: f32, z: f32, s0: f32, t0: f32, s1: f32, t1: f32) callconv(APIENTRY) void,
    glGetVkProcAddrNV: ?*const fn (name: [*c]const u8) callconv(APIENTRY) GLVULKANPROCNV,
    glWaitVkSemaphoreNV: ?*const fn (vkSemaphore: u64) callconv(APIENTRY) void,
    glSignalVkSemaphoreNV: ?*const fn (vkSemaphore: u64) callconv(APIENTRY) void,
    glSignalVkFenceNV: ?*const fn (vkFence: u64) callconv(APIENTRY) void,
    glFragmentCoverageColorNV: ?*const fn (color: c_uint) callconv(APIENTRY) void,
    glCoverageModulationTableNV: ?*const fn (n: c_int, v: [*c]const f32) callconv(APIENTRY) void,
    glGetCoverageModulationTableNV: ?*const fn (bufSize: c_int, v: [*c]f32) callconv(APIENTRY) void,
    glCoverageModulationNV: ?*const fn (components: @"enum") callconv(APIENTRY) void,
    glRenderbufferStorageMultisampleCoverageNV: ?*const fn (target: @"enum", coverageSamples: c_int, colorSamples: c_int, internalformat: @"enum", width: c_int, height: c_int) callconv(APIENTRY) void,
    glUniform1i64NV: ?*const fn (location: c_int, x: i64) callconv(APIENTRY) void,
    glUniform2i64NV: ?*const fn (location: c_int, x: i64, y: i64) callconv(APIENTRY) void,
    glUniform3i64NV: ?*const fn (location: c_int, x: i64, y: i64, z: i64) callconv(APIENTRY) void,
    glUniform4i64NV: ?*const fn (location: c_int, x: i64, y: i64, z: i64, w: i64) callconv(APIENTRY) void,
    glUniform1i64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glUniform2i64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glUniform3i64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glUniform4i64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glUniform1ui64NV: ?*const fn (location: c_int, x: u64) callconv(APIENTRY) void,
    glUniform2ui64NV: ?*const fn (location: c_int, x: u64, y: u64) callconv(APIENTRY) void,
    glUniform3ui64NV: ?*const fn (location: c_int, x: u64, y: u64, z: u64) callconv(APIENTRY) void,
    glUniform4ui64NV: ?*const fn (location: c_int, x: u64, y: u64, z: u64, w: u64) callconv(APIENTRY) void,
    glUniform1ui64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glUniform2ui64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glUniform3ui64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glUniform4ui64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glGetUniformi64vNV: ?*const fn (program: c_uint, location: c_int, params: [*c]i64) callconv(APIENTRY) void,
    glProgramUniform1i64NV: ?*const fn (program: c_uint, location: c_int, x: i64) callconv(APIENTRY) void,
    glProgramUniform2i64NV: ?*const fn (program: c_uint, location: c_int, x: i64, y: i64) callconv(APIENTRY) void,
    glProgramUniform3i64NV: ?*const fn (program: c_uint, location: c_int, x: i64, y: i64, z: i64) callconv(APIENTRY) void,
    glProgramUniform4i64NV: ?*const fn (program: c_uint, location: c_int, x: i64, y: i64, z: i64, w: i64) callconv(APIENTRY) void,
    glProgramUniform1i64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glProgramUniform2i64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glProgramUniform3i64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glProgramUniform4i64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const i64) callconv(APIENTRY) void,
    glProgramUniform1ui64NV: ?*const fn (program: c_uint, location: c_int, x: u64) callconv(APIENTRY) void,
    glProgramUniform2ui64NV: ?*const fn (program: c_uint, location: c_int, x: u64, y: u64) callconv(APIENTRY) void,
    glProgramUniform3ui64NV: ?*const fn (program: c_uint, location: c_int, x: u64, y: u64, z: u64) callconv(APIENTRY) void,
    glProgramUniform4ui64NV: ?*const fn (program: c_uint, location: c_int, x: u64, y: u64, z: u64, w: u64) callconv(APIENTRY) void,
    glProgramUniform1ui64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glProgramUniform2ui64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glProgramUniform3ui64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glProgramUniform4ui64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glGetInternalformatSampleivNV: ?*const fn (target: @"enum", internalformat: @"enum", samples: c_int, pname: @"enum", count: c_int, params: [*c]c_int) callconv(APIENTRY) void,
    glGetMemoryObjectDetachedResourcesuivNV: ?*const fn (memory: c_uint, pname: @"enum", first: c_int, count: c_int, params: [*c]c_uint) callconv(APIENTRY) void,
    glResetMemoryObjectParameterNV: ?*const fn (memory: c_uint, pname: @"enum") callconv(APIENTRY) void,
    glTexAttachMemoryNV: ?*const fn (target: @"enum", memory: c_uint, offset: u64) callconv(APIENTRY) void,
    glBufferAttachMemoryNV: ?*const fn (target: @"enum", memory: c_uint, offset: u64) callconv(APIENTRY) void,
    glTextureAttachMemoryNV: ?*const fn (texture: c_uint, memory: c_uint, offset: u64) callconv(APIENTRY) void,
    glNamedBufferAttachMemoryNV: ?*const fn (buffer: c_uint, memory: c_uint, offset: u64) callconv(APIENTRY) void,
    glBufferPageCommitmentMemNV: ?*const fn (target: @"enum", offset: c_long, size: c_ulong, memory: c_uint, memOffset: u64, commit: @"bool") callconv(APIENTRY) void,
    glTexPageCommitmentMemNV: ?*const fn (target: @"enum", layer: c_int, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, memory: c_uint, offset: u64, commit: @"bool") callconv(APIENTRY) void,
    glNamedBufferPageCommitmentMemNV: ?*const fn (buffer: c_uint, offset: c_long, size: c_ulong, memory: c_uint, memOffset: u64, commit: @"bool") callconv(APIENTRY) void,
    glTexturePageCommitmentMemNV: ?*const fn (texture: c_uint, layer: c_int, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, memory: c_uint, offset: u64, commit: @"bool") callconv(APIENTRY) void,
    glDrawMeshTasksNV: ?*const fn (first: c_uint, count: c_uint) callconv(APIENTRY) void,
    glDrawMeshTasksIndirectNV: ?*const fn (indirect: c_long) callconv(APIENTRY) void,
    glMultiDrawMeshTasksIndirectNV: ?*const fn (indirect: c_long, drawcount: c_int, stride: c_int) callconv(APIENTRY) void,
    glMultiDrawMeshTasksIndirectCountNV: ?*const fn (indirect: c_long, drawcount: c_long, maxdrawcount: c_int, stride: c_int) callconv(APIENTRY) void,
    glGenPathsNV: ?*const fn (range: c_int) callconv(APIENTRY) c_uint,
    glDeletePathsNV: ?*const fn (path: c_uint, range: c_int) callconv(APIENTRY) void,
    glIsPathNV: ?*const fn (path: c_uint) callconv(APIENTRY) @"bool",
    glPathCommandsNV: ?*const fn (path: c_uint, numCommands: c_int, commands: [*c]const u8, numCoords: c_int, coordType: @"enum", coords: ?*const anyopaque) callconv(APIENTRY) void,
    glPathCoordsNV: ?*const fn (path: c_uint, numCoords: c_int, coordType: @"enum", coords: ?*const anyopaque) callconv(APIENTRY) void,
    glPathSubCommandsNV: ?*const fn (path: c_uint, commandStart: c_int, commandsToDelete: c_int, numCommands: c_int, commands: [*c]const u8, numCoords: c_int, coordType: @"enum", coords: ?*const anyopaque) callconv(APIENTRY) void,
    glPathSubCoordsNV: ?*const fn (path: c_uint, coordStart: c_int, numCoords: c_int, coordType: @"enum", coords: ?*const anyopaque) callconv(APIENTRY) void,
    glPathStringNV: ?*const fn (path: c_uint, format: @"enum", length: c_int, pathString: ?*const anyopaque) callconv(APIENTRY) void,
    glPathGlyphsNV: ?*const fn (firstPathName: c_uint, fontTarget: @"enum", fontName: ?*const anyopaque, fontStyle: Bitfield, numGlyphs: c_int, @"type": @"enum", charcodes: ?*const anyopaque, handleMissingGlyphs: @"enum", pathParameterTemplate: c_uint, emScale: f32) callconv(APIENTRY) void,
    glPathGlyphRangeNV: ?*const fn (firstPathName: c_uint, fontTarget: @"enum", fontName: ?*const anyopaque, fontStyle: Bitfield, firstGlyph: c_uint, numGlyphs: c_int, handleMissingGlyphs: @"enum", pathParameterTemplate: c_uint, emScale: f32) callconv(APIENTRY) void,
    glWeightPathsNV: ?*const fn (resultPath: c_uint, numPaths: c_int, paths: [*c]const c_uint, weights: [*c]const f32) callconv(APIENTRY) void,
    glCopyPathNV: ?*const fn (resultPath: c_uint, srcPath: c_uint) callconv(APIENTRY) void,
    glInterpolatePathsNV: ?*const fn (resultPath: c_uint, pathA: c_uint, pathB: c_uint, weight: f32) callconv(APIENTRY) void,
    glTransformPathNV: ?*const fn (resultPath: c_uint, srcPath: c_uint, transformType: @"enum", transformValues: [*c]const f32) callconv(APIENTRY) void,
    glPathParameterivNV: ?*const fn (path: c_uint, pname: @"enum", value: [*c]const c_int) callconv(APIENTRY) void,
    glPathParameteriNV: ?*const fn (path: c_uint, pname: @"enum", value: c_int) callconv(APIENTRY) void,
    glPathParameterfvNV: ?*const fn (path: c_uint, pname: @"enum", value: [*c]const f32) callconv(APIENTRY) void,
    glPathParameterfNV: ?*const fn (path: c_uint, pname: @"enum", value: f32) callconv(APIENTRY) void,
    glPathDashArrayNV: ?*const fn (path: c_uint, dashCount: c_int, dashArray: [*c]const f32) callconv(APIENTRY) void,
    glPathStencilFuncNV: ?*const fn (func: @"enum", ref: c_int, mask: c_uint) callconv(APIENTRY) void,
    glPathStencilDepthOffsetNV: ?*const fn (factor: f32, units: f32) callconv(APIENTRY) void,
    glStencilFillPathNV: ?*const fn (path: c_uint, fillMode: @"enum", mask: c_uint) callconv(APIENTRY) void,
    glStencilStrokePathNV: ?*const fn (path: c_uint, reference: c_int, mask: c_uint) callconv(APIENTRY) void,
    glStencilFillPathInstancedNV: ?*const fn (numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, fillMode: @"enum", mask: c_uint, transformType: @"enum", transformValues: [*c]const f32) callconv(APIENTRY) void,
    glStencilStrokePathInstancedNV: ?*const fn (numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, reference: c_int, mask: c_uint, transformType: @"enum", transformValues: [*c]const f32) callconv(APIENTRY) void,
    glPathCoverDepthFuncNV: ?*const fn (func: @"enum") callconv(APIENTRY) void,
    glCoverFillPathNV: ?*const fn (path: c_uint, coverMode: @"enum") callconv(APIENTRY) void,
    glCoverStrokePathNV: ?*const fn (path: c_uint, coverMode: @"enum") callconv(APIENTRY) void,
    glCoverFillPathInstancedNV: ?*const fn (numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, coverMode: @"enum", transformType: @"enum", transformValues: [*c]const f32) callconv(APIENTRY) void,
    glCoverStrokePathInstancedNV: ?*const fn (numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, coverMode: @"enum", transformType: @"enum", transformValues: [*c]const f32) callconv(APIENTRY) void,
    glGetPathParameterivNV: ?*const fn (path: c_uint, pname: @"enum", value: [*c]c_int) callconv(APIENTRY) void,
    glGetPathParameterfvNV: ?*const fn (path: c_uint, pname: @"enum", value: [*c]f32) callconv(APIENTRY) void,
    glGetPathCommandsNV: ?*const fn (path: c_uint, commands: [*c]u8) callconv(APIENTRY) void,
    glGetPathCoordsNV: ?*const fn (path: c_uint, coords: [*c]f32) callconv(APIENTRY) void,
    glGetPathDashArrayNV: ?*const fn (path: c_uint, dashArray: [*c]f32) callconv(APIENTRY) void,
    glGetPathMetricsNV: ?*const fn (metricQueryMask: Bitfield, numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, stride: c_int, metrics: [*c]f32) callconv(APIENTRY) void,
    glGetPathMetricRangeNV: ?*const fn (metricQueryMask: Bitfield, firstPathName: c_uint, numPaths: c_int, stride: c_int, metrics: [*c]f32) callconv(APIENTRY) void,
    glGetPathSpacingNV: ?*const fn (pathListMode: @"enum", numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, advanceScale: f32, kerningScale: f32, transformType: @"enum", returnedSpacing: [*c]f32) callconv(APIENTRY) void,
    glIsPointInFillPathNV: ?*const fn (path: c_uint, mask: c_uint, x: f32, y: f32) callconv(APIENTRY) @"bool",
    glIsPointInStrokePathNV: ?*const fn (path: c_uint, x: f32, y: f32) callconv(APIENTRY) @"bool",
    glGetPathLengthNV: ?*const fn (path: c_uint, startSegment: c_int, numSegments: c_int) callconv(APIENTRY) f32,
    glPointAlongPathNV: ?*const fn (path: c_uint, startSegment: c_int, numSegments: c_int, distance: f32, x: [*c]f32, y: [*c]f32, tangentX: [*c]f32, tangentY: [*c]f32) callconv(APIENTRY) @"bool",
    glMatrixLoad3x2fNV: ?*const fn (matrixMode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glMatrixLoad3x3fNV: ?*const fn (matrixMode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glMatrixLoadTranspose3x3fNV: ?*const fn (matrixMode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glMatrixMult3x2fNV: ?*const fn (matrixMode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glMatrixMult3x3fNV: ?*const fn (matrixMode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glMatrixMultTranspose3x3fNV: ?*const fn (matrixMode: @"enum", m: [*c]const f32) callconv(APIENTRY) void,
    glStencilThenCoverFillPathNV: ?*const fn (path: c_uint, fillMode: @"enum", mask: c_uint, coverMode: @"enum") callconv(APIENTRY) void,
    glStencilThenCoverStrokePathNV: ?*const fn (path: c_uint, reference: c_int, mask: c_uint, coverMode: @"enum") callconv(APIENTRY) void,
    glStencilThenCoverFillPathInstancedNV: ?*const fn (numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, fillMode: @"enum", mask: c_uint, coverMode: @"enum", transformType: @"enum", transformValues: [*c]const f32) callconv(APIENTRY) void,
    glStencilThenCoverStrokePathInstancedNV: ?*const fn (numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, reference: c_int, mask: c_uint, coverMode: @"enum", transformType: @"enum", transformValues: [*c]const f32) callconv(APIENTRY) void,
    glPathGlyphIndexRangeNV: ?*const fn (fontTarget: @"enum", fontName: ?*const anyopaque, fontStyle: Bitfield, pathParameterTemplate: c_uint, emScale: f32, baseAndCount: [*c]c_uint) callconv(APIENTRY) @"enum",
    glPathGlyphIndexArrayNV: ?*const fn (firstPathName: c_uint, fontTarget: @"enum", fontName: ?*const anyopaque, fontStyle: Bitfield, firstGlyphIndex: c_uint, numGlyphs: c_int, pathParameterTemplate: c_uint, emScale: f32) callconv(APIENTRY) @"enum",
    glPathMemoryGlyphIndexArrayNV: ?*const fn (firstPathName: c_uint, fontTarget: @"enum", fontSize: c_ulong, fontData: ?*const anyopaque, faceIndex: c_int, firstGlyphIndex: c_uint, numGlyphs: c_int, pathParameterTemplate: c_uint, emScale: f32) callconv(APIENTRY) @"enum",
    glProgramPathFragmentInputGenNV: ?*const fn (program: c_uint, location: c_int, genMode: @"enum", components: c_int, coeffs: [*c]const f32) callconv(APIENTRY) void,
    glGetProgramResourcefvNV: ?*const fn (program: c_uint, programInterface: @"enum", index: c_uint, propCount: c_int, props: [*c]const @"enum", count: c_int, length: [*c]c_int, params: [*c]f32) callconv(APIENTRY) void,
    glFramebufferSampleLocationsfvNV: ?*const fn (target: @"enum", start: c_uint, count: c_int, v: [*c]const f32) callconv(APIENTRY) void,
    glNamedFramebufferSampleLocationsfvNV: ?*const fn (framebuffer: c_uint, start: c_uint, count: c_int, v: [*c]const f32) callconv(APIENTRY) void,
    glResolveDepthValuesNV: ?*const fn () callconv(APIENTRY) void,
    glScissorExclusiveNV: ?*const fn (x: c_int, y: c_int, width: c_int, height: c_int) callconv(APIENTRY) void,
    glScissorExclusiveArrayvNV: ?*const fn (first: c_uint, count: c_int, v: [*c]const c_int) callconv(APIENTRY) void,
    glMakeBufferResidentNV: ?*const fn (target: @"enum", access: @"enum") callconv(APIENTRY) void,
    glMakeBufferNonResidentNV: ?*const fn (target: @"enum") callconv(APIENTRY) void,
    glIsBufferResidentNV: ?*const fn (target: @"enum") callconv(APIENTRY) @"bool",
    glMakeNamedBufferResidentNV: ?*const fn (buffer: c_uint, access: @"enum") callconv(APIENTRY) void,
    glMakeNamedBufferNonResidentNV: ?*const fn (buffer: c_uint) callconv(APIENTRY) void,
    glIsNamedBufferResidentNV: ?*const fn (buffer: c_uint) callconv(APIENTRY) @"bool",
    glGetBufferParameterui64vNV: ?*const fn (target: @"enum", pname: @"enum", params: [*c]u64) callconv(APIENTRY) void,
    glGetNamedBufferParameterui64vNV: ?*const fn (buffer: c_uint, pname: @"enum", params: [*c]u64) callconv(APIENTRY) void,
    glGetIntegerui64vNV: ?*const fn (value: @"enum", result: [*c]u64) callconv(APIENTRY) void,
    glUniformui64NV: ?*const fn (location: c_int, value: u64) callconv(APIENTRY) void,
    glUniformui64vNV: ?*const fn (location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glGetUniformui64vNV: ?*const fn (program: c_uint, location: c_int, params: [*c]u64) callconv(APIENTRY) void,
    glProgramUniformui64NV: ?*const fn (program: c_uint, location: c_int, value: u64) callconv(APIENTRY) void,
    glProgramUniformui64vNV: ?*const fn (program: c_uint, location: c_int, count: c_int, value: [*c]const u64) callconv(APIENTRY) void,
    glBindShadingRateImageNV: ?*const fn (texture: c_uint) callconv(APIENTRY) void,
    glGetShadingRateImagePaletteNV: ?*const fn (viewport: c_uint, entry: c_uint, rate: [*c]@"enum") callconv(APIENTRY) void,
    glGetShadingRateSampleLocationivNV: ?*const fn (rate: @"enum", samples: c_uint, index: c_uint, location: [*c]c_int) callconv(APIENTRY) void,
    glShadingRateImageBarrierNV: ?*const fn (synchronize: @"bool") callconv(APIENTRY) void,
    glShadingRateImagePaletteNV: ?*const fn (viewport: c_uint, first: c_uint, count: c_int, rates: [*c]const @"enum") callconv(APIENTRY) void,
    glShadingRateSampleOrderNV: ?*const fn (order: @"enum") callconv(APIENTRY) void,
    glShadingRateSampleOrderCustomNV: ?*const fn (rate: @"enum", samples: c_uint, locations: [*c]const c_int) callconv(APIENTRY) void,
    glTextureBarrierNV: ?*const fn () callconv(APIENTRY) void,
    glVertexAttribL1i64NV: ?*const fn (index: c_uint, x: i64) callconv(APIENTRY) void,
    glVertexAttribL2i64NV: ?*const fn (index: c_uint, x: i64, y: i64) callconv(APIENTRY) void,
    glVertexAttribL3i64NV: ?*const fn (index: c_uint, x: i64, y: i64, z: i64) callconv(APIENTRY) void,
    glVertexAttribL4i64NV: ?*const fn (index: c_uint, x: i64, y: i64, z: i64, w: i64) callconv(APIENTRY) void,
    glVertexAttribL1i64vNV: ?*const fn (index: c_uint, v: [*c]const i64) callconv(APIENTRY) void,
    glVertexAttribL2i64vNV: ?*const fn (index: c_uint, v: [*c]const i64) callconv(APIENTRY) void,
    glVertexAttribL3i64vNV: ?*const fn (index: c_uint, v: [*c]const i64) callconv(APIENTRY) void,
    glVertexAttribL4i64vNV: ?*const fn (index: c_uint, v: [*c]const i64) callconv(APIENTRY) void,
    glVertexAttribL1ui64NV: ?*const fn (index: c_uint, x: u64) callconv(APIENTRY) void,
    glVertexAttribL2ui64NV: ?*const fn (index: c_uint, x: u64, y: u64) callconv(APIENTRY) void,
    glVertexAttribL3ui64NV: ?*const fn (index: c_uint, x: u64, y: u64, z: u64) callconv(APIENTRY) void,
    glVertexAttribL4ui64NV: ?*const fn (index: c_uint, x: u64, y: u64, z: u64, w: u64) callconv(APIENTRY) void,
    glVertexAttribL1ui64vNV: ?*const fn (index: c_uint, v: [*c]const u64) callconv(APIENTRY) void,
    glVertexAttribL2ui64vNV: ?*const fn (index: c_uint, v: [*c]const u64) callconv(APIENTRY) void,
    glVertexAttribL3ui64vNV: ?*const fn (index: c_uint, v: [*c]const u64) callconv(APIENTRY) void,
    glVertexAttribL4ui64vNV: ?*const fn (index: c_uint, v: [*c]const u64) callconv(APIENTRY) void,
    glGetVertexAttribLi64vNV: ?*const fn (index: c_uint, pname: @"enum", params: [*c]i64) callconv(APIENTRY) void,
    glGetVertexAttribLui64vNV: ?*const fn (index: c_uint, pname: @"enum", params: [*c]u64) callconv(APIENTRY) void,
    glVertexAttribLFormatNV: ?*const fn (index: c_uint, size: c_int, @"type": @"enum", stride: c_int) callconv(APIENTRY) void,
    glBufferAddressRangeNV: ?*const fn (pname: @"enum", index: c_uint, address: u64, length: c_ulong) callconv(APIENTRY) void,
    glVertexFormatNV: ?*const fn (size: c_int, @"type": @"enum", stride: c_int) callconv(APIENTRY) void,
    glNormalFormatNV: ?*const fn (@"type": @"enum", stride: c_int) callconv(APIENTRY) void,
    glColorFormatNV: ?*const fn (size: c_int, @"type": @"enum", stride: c_int) callconv(APIENTRY) void,
    glIndexFormatNV: ?*const fn (@"type": @"enum", stride: c_int) callconv(APIENTRY) void,
    glTexCoordFormatNV: ?*const fn (size: c_int, @"type": @"enum", stride: c_int) callconv(APIENTRY) void,
    glEdgeFlagFormatNV: ?*const fn (stride: c_int) callconv(APIENTRY) void,
    glSecondaryColorFormatNV: ?*const fn (size: c_int, @"type": @"enum", stride: c_int) callconv(APIENTRY) void,
    glFogCoordFormatNV: ?*const fn (@"type": @"enum", stride: c_int) callconv(APIENTRY) void,
    glVertexAttribFormatNV: ?*const fn (index: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", stride: c_int) callconv(APIENTRY) void,
    glVertexAttribIFormatNV: ?*const fn (index: c_uint, size: c_int, @"type": @"enum", stride: c_int) callconv(APIENTRY) void,
    glGetIntegerui64i_vNV: ?*const fn (value: @"enum", index: c_uint, result: [*c]u64) callconv(APIENTRY) void,
    glViewportSwizzleNV: ?*const fn (index: c_uint, swizzlex: @"enum", swizzley: @"enum", swizzlez: @"enum", swizzlew: @"enum") callconv(APIENTRY) void,
    glFramebufferTextureMultiviewOVR: ?*const fn (target: @"enum", attachment: @"enum", texture: c_uint, level: c_int, baseViewIndex: c_int, numViews: c_int) callconv(APIENTRY) void,
    glNamedFramebufferTextureMultiviewOVR: ?*const fn (framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int, baseViewIndex: c_int, numViews: c_int) void,

    pub fn load(loader: anytype, log: ?bool) void {
        const fields = @typeInfo(@TypeOf(procs)).@"struct".fields;
        @setEvalBranchQuota(fields.len);
        inline for (fields) |proc| {
            @field(procs, proc.name) = @as(proc.type, @ptrCast(loader(proc.name))) orelse proc: {
                if (log orelse (builtin.mode == .Debug)) std.log.err("Proc '{s}' not found", .{proc.name});
                break :proc null;
            };
        }
    }
};

pub const load = Procs.load;

pub const GL_FALSE: c_int = 0;
pub const GL_TRUE: c_int = 1;
pub const GL_DEPTH_BUFFER_BIT: c_int = 0x00000100;
pub const GL_STENCIL_BUFFER_BIT: c_int = 0x00000400;
pub const GL_COLOR_BUFFER_BIT: c_int = 0x00004000;
pub const GL_POINTS: c_int = 0x0000;
pub const GL_LINES: c_int = 0x0001;
pub const GL_LINE_LOOP: c_int = 0x0002;
pub const GL_LINE_STRIP: c_int = 0x0003;
pub const GL_TRIANGLES: c_int = 0x0004;
pub const GL_TRIANGLE_STRIP: c_int = 0x0005;
pub const GL_TRIANGLE_FAN: c_int = 0x0006;
pub const GL_QUADS: c_int = 0x0007;
pub const GL_NEVER: c_int = 0x0200;
pub const GL_LESS: c_int = 0x0201;
pub const GL_EQUAL: c_int = 0x0202;
pub const GL_LEQUAL: c_int = 0x0203;
pub const GL_GREATER: c_int = 0x0204;
pub const GL_NOTEQUAL: c_int = 0x0205;
pub const GL_GEQUAL: c_int = 0x0206;
pub const GL_ALWAYS: c_int = 0x0207;
pub const GL_ZERO: c_int = 0;
pub const GL_ONE: c_int = 1;
pub const GL_SRC_COLOR: c_int = 0x0300;
pub const GL_ONE_MINUS_SRC_COLOR: c_int = 0x0301;
pub const GL_SRC_ALPHA: c_int = 0x0302;
pub const GL_ONE_MINUS_SRC_ALPHA: c_int = 0x0303;
pub const GL_DST_ALPHA: c_int = 0x0304;
pub const GL_ONE_MINUS_DST_ALPHA: c_int = 0x0305;
pub const GL_DST_COLOR: c_int = 0x0306;
pub const GL_ONE_MINUS_DST_COLOR: c_int = 0x0307;
pub const GL_SRC_ALPHA_SATURATE: c_int = 0x0308;
pub const GL_NONE: c_int = 0;
pub const GL_FRONT_LEFT: c_int = 0x0400;
pub const GL_FRONT_RIGHT: c_int = 0x0401;
pub const GL_BACK_LEFT: c_int = 0x0402;
pub const GL_BACK_RIGHT: c_int = 0x0403;
pub const GL_FRONT: c_int = 0x0404;
pub const GL_BACK: c_int = 0x0405;
pub const GL_LEFT: c_int = 0x0406;
pub const GL_RIGHT: c_int = 0x0407;
pub const GL_FRONT_AND_BACK: c_int = 0x0408;
pub const GL_NO_ERROR: c_int = 0;
pub const GL_INVALID_ENUM: c_int = 0x0500;
pub const GL_INVALID_VALUE: c_int = 0x0501;
pub const GL_INVALID_OPERATION: c_int = 0x0502;
pub const GL_OUT_OF_MEMORY: c_int = 0x0505;
pub const GL_CW: c_int = 0x0900;
pub const GL_CCW: c_int = 0x0901;
pub const GL_POINT_SIZE: c_int = 0x0B11;
pub const GL_POINT_SIZE_RANGE: c_int = 0x0B12;
pub const GL_POINT_SIZE_GRANULARITY: c_int = 0x0B13;
pub const GL_LINE_SMOOTH: c_int = 0x0B20;
pub const GL_LINE_WIDTH: c_int = 0x0B21;
pub const GL_LINE_WIDTH_RANGE: c_int = 0x0B22;
pub const GL_LINE_WIDTH_GRANULARITY: c_int = 0x0B23;
pub const GL_POLYGON_MODE: c_int = 0x0B40;
pub const GL_POLYGON_SMOOTH: c_int = 0x0B41;
pub const GL_CULL_FACE: c_int = 0x0B44;
pub const GL_CULL_FACE_MODE: c_int = 0x0B45;
pub const GL_FRONT_FACE: c_int = 0x0B46;
pub const GL_DEPTH_RANGE: c_int = 0x0B70;
pub const GL_DEPTH_TEST: c_int = 0x0B71;
pub const GL_DEPTH_WRITEMASK: c_int = 0x0B72;
pub const GL_DEPTH_CLEAR_VALUE: c_int = 0x0B73;
pub const GL_DEPTH_FUNC: c_int = 0x0B74;
pub const GL_STENCIL_TEST: c_int = 0x0B90;
pub const GL_STENCIL_CLEAR_VALUE: c_int = 0x0B91;
pub const GL_STENCIL_FUNC: c_int = 0x0B92;
pub const GL_STENCIL_VALUE_MASK: c_int = 0x0B93;
pub const GL_STENCIL_FAIL: c_int = 0x0B94;
pub const GL_STENCIL_PASS_DEPTH_FAIL: c_int = 0x0B95;
pub const GL_STENCIL_PASS_DEPTH_PASS: c_int = 0x0B96;
pub const GL_STENCIL_REF: c_int = 0x0B97;
pub const GL_STENCIL_WRITEMASK: c_int = 0x0B98;
pub const GL_VIEWPORT: c_int = 0x0BA2;
pub const GL_DITHER: c_int = 0x0BD0;
pub const GL_BLEND_DST: c_int = 0x0BE0;
pub const GL_BLEND_SRC: c_int = 0x0BE1;
pub const GL_BLEND: c_int = 0x0BE2;
pub const GL_LOGIC_OP_MODE: c_int = 0x0BF0;
pub const GL_DRAW_BUFFER: c_int = 0x0C01;
pub const GL_READ_BUFFER: c_int = 0x0C02;
pub const GL_SCISSOR_BOX: c_int = 0x0C10;
pub const GL_SCISSOR_TEST: c_int = 0x0C11;
pub const GL_COLOR_CLEAR_VALUE: c_int = 0x0C22;
pub const GL_COLOR_WRITEMASK: c_int = 0x0C23;
pub const GL_DOUBLEBUFFER: c_int = 0x0C32;
pub const GL_STEREO: c_int = 0x0C33;
pub const GL_LINE_SMOOTH_HINT: c_int = 0x0C52;
pub const GL_POLYGON_SMOOTH_HINT: c_int = 0x0C53;
pub const GL_UNPACK_SWAP_BYTES: c_int = 0x0CF0;
pub const GL_UNPACK_LSB_FIRST: c_int = 0x0CF1;
pub const GL_UNPACK_ROW_LENGTH: c_int = 0x0CF2;
pub const GL_UNPACK_SKIP_ROWS: c_int = 0x0CF3;
pub const GL_UNPACK_SKIP_PIXELS: c_int = 0x0CF4;
pub const GL_UNPACK_ALIGNMENT: c_int = 0x0CF5;
pub const GL_PACK_SWAP_BYTES: c_int = 0x0D00;
pub const GL_PACK_LSB_FIRST: c_int = 0x0D01;
pub const GL_PACK_ROW_LENGTH: c_int = 0x0D02;
pub const GL_PACK_SKIP_ROWS: c_int = 0x0D03;
pub const GL_PACK_SKIP_PIXELS: c_int = 0x0D04;
pub const GL_PACK_ALIGNMENT: c_int = 0x0D05;
pub const GL_MAX_TEXTURE_SIZE: c_int = 0x0D33;
pub const GL_MAX_VIEWPORT_DIMS: c_int = 0x0D3A;
pub const GL_SUBPIXEL_BITS: c_int = 0x0D50;
pub const GL_TEXTURE_1D: c_int = 0x0DE0;
pub const GL_TEXTURE_2D: c_int = 0x0DE1;
pub const GL_TEXTURE_WIDTH: c_int = 0x1000;
pub const GL_TEXTURE_HEIGHT: c_int = 0x1001;
pub const GL_TEXTURE_BORDER_COLOR: c_int = 0x1004;
pub const GL_DONT_CARE: c_int = 0x1100;
pub const GL_FASTEST: c_int = 0x1101;
pub const GL_NICEST: c_int = 0x1102;
pub const GL_BYTE: c_int = 0x1400;
pub const GL_UNSIGNED_BYTE: c_int = 0x1401;
pub const GL_SHORT: c_int = 0x1402;
pub const GL_UNSIGNED_SHORT: c_int = 0x1403;
pub const GL_INT: c_int = 0x1404;
pub const GL_UNSIGNED_INT: c_int = 0x1405;
pub const GL_FLOAT: c_int = 0x1406;
pub const GL_STACK_OVERFLOW: c_int = 0x0503;
pub const GL_STACK_UNDERFLOW: c_int = 0x0504;
pub const GL_CLEAR: c_int = 0x1500;
pub const GL_AND: c_int = 0x1501;
pub const GL_AND_REVERSE: c_int = 0x1502;
pub const GL_COPY: c_int = 0x1503;
pub const GL_AND_INVERTED: c_int = 0x1504;
pub const GL_NOOP: c_int = 0x1505;
pub const GL_XOR: c_int = 0x1506;
pub const GL_OR: c_int = 0x1507;
pub const GL_NOR: c_int = 0x1508;
pub const GL_EQUIV: c_int = 0x1509;
pub const GL_INVERT: c_int = 0x150A;
pub const GL_OR_REVERSE: c_int = 0x150B;
pub const GL_COPY_INVERTED: c_int = 0x150C;
pub const GL_OR_INVERTED: c_int = 0x150D;
pub const GL_NAND: c_int = 0x150E;
pub const GL_SET: c_int = 0x150F;
pub const GL_TEXTURE: c_int = 0x1702;
pub const GL_COLOR: c_int = 0x1800;
pub const GL_DEPTH: c_int = 0x1801;
pub const GL_STENCIL: c_int = 0x1802;
pub const GL_STENCIL_INDEX: c_int = 0x1901;
pub const GL_DEPTH_COMPONENT: c_int = 0x1902;
pub const GL_RED: c_int = 0x1903;
pub const GL_GREEN: c_int = 0x1904;
pub const GL_BLUE: c_int = 0x1905;
pub const GL_ALPHA: c_int = 0x1906;
pub const GL_RGB: c_int = 0x1907;
pub const GL_RGBA: c_int = 0x1908;
pub const GL_POINT: c_int = 0x1B00;
pub const GL_LINE: c_int = 0x1B01;
pub const GL_FILL: c_int = 0x1B02;
pub const GL_KEEP: c_int = 0x1E00;
pub const GL_REPLACE: c_int = 0x1E01;
pub const GL_INCR: c_int = 0x1E02;
pub const GL_DECR: c_int = 0x1E03;
pub const GL_VENDOR: c_int = 0x1F00;
pub const GL_RENDERER: c_int = 0x1F01;
pub const GL_VERSION: c_int = 0x1F02;
pub const GL_EXTENSIONS: c_int = 0x1F03;
pub const GL_NEAREST: c_int = 0x2600;
pub const GL_LINEAR: c_int = 0x2601;
pub const GL_NEAREST_MIPMAP_NEAREST: c_int = 0x2700;
pub const GL_LINEAR_MIPMAP_NEAREST: c_int = 0x2701;
pub const GL_NEAREST_MIPMAP_LINEAR: c_int = 0x2702;
pub const GL_LINEAR_MIPMAP_LINEAR: c_int = 0x2703;
pub const GL_TEXTURE_MAG_FILTER: c_int = 0x2800;
pub const GL_TEXTURE_MIN_FILTER: c_int = 0x2801;
pub const GL_TEXTURE_WRAP_S: c_int = 0x2802;
pub const GL_TEXTURE_WRAP_T: c_int = 0x2803;
pub const GL_REPEAT: c_int = 0x2901;
pub const GL_COLOR_LOGIC_OP: c_int = 0x0BF2;
pub const GL_POLYGON_OFFSET_UNITS: c_int = 0x2A00;
pub const GL_POLYGON_OFFSET_POINT: c_int = 0x2A01;
pub const GL_POLYGON_OFFSET_LINE: c_int = 0x2A02;
pub const GL_POLYGON_OFFSET_FILL: c_int = 0x8037;
pub const GL_POLYGON_OFFSET_FACTOR: c_int = 0x8038;
pub const GL_TEXTURE_BINDING_1D: c_int = 0x8068;
pub const GL_TEXTURE_BINDING_2D: c_int = 0x8069;
pub const GL_TEXTURE_INTERNAL_FORMAT: c_int = 0x1003;
pub const GL_TEXTURE_RED_SIZE: c_int = 0x805C;
pub const GL_TEXTURE_GREEN_SIZE: c_int = 0x805D;
pub const GL_TEXTURE_BLUE_SIZE: c_int = 0x805E;
pub const GL_TEXTURE_ALPHA_SIZE: c_int = 0x805F;
pub const GL_DOUBLE: c_int = 0x140A;
pub const GL_PROXY_TEXTURE_1D: c_int = 0x8063;
pub const GL_PROXY_TEXTURE_2D: c_int = 0x8064;
pub const GL_R3_G3_B2: c_int = 0x2A10;
pub const GL_RGB4: c_int = 0x804F;
pub const GL_RGB5: c_int = 0x8050;
pub const GL_RGB8: c_int = 0x8051;
pub const GL_RGB10: c_int = 0x8052;
pub const GL_RGB12: c_int = 0x8053;
pub const GL_RGB16: c_int = 0x8054;
pub const GL_RGBA2: c_int = 0x8055;
pub const GL_RGBA4: c_int = 0x8056;
pub const GL_RGB5_A1: c_int = 0x8057;
pub const GL_RGBA8: c_int = 0x8058;
pub const GL_RGB10_A2: c_int = 0x8059;
pub const GL_RGBA12: c_int = 0x805A;
pub const GL_RGBA16: c_int = 0x805B;
pub const GL_VERTEX_ARRAY: c_int = 0x8074;
pub const GL_UNSIGNED_BYTE_3_3_2: c_int = 0x8032;
pub const GL_UNSIGNED_SHORT_4_4_4_4: c_int = 0x8033;
pub const GL_UNSIGNED_SHORT_5_5_5_1: c_int = 0x8034;
pub const GL_UNSIGNED_INT_8_8_8_8: c_int = 0x8035;
pub const GL_UNSIGNED_INT_10_10_10_2: c_int = 0x8036;
pub const GL_TEXTURE_BINDING_3D: c_int = 0x806A;
pub const GL_PACK_SKIP_IMAGES: c_int = 0x806B;
pub const GL_PACK_IMAGE_HEIGHT: c_int = 0x806C;
pub const GL_UNPACK_SKIP_IMAGES: c_int = 0x806D;
pub const GL_UNPACK_IMAGE_HEIGHT: c_int = 0x806E;
pub const GL_TEXTURE_3D: c_int = 0x806F;
pub const GL_PROXY_TEXTURE_3D: c_int = 0x8070;
pub const GL_TEXTURE_DEPTH: c_int = 0x8071;
pub const GL_TEXTURE_WRAP_R: c_int = 0x8072;
pub const GL_MAX_3D_TEXTURE_SIZE: c_int = 0x8073;
pub const GL_UNSIGNED_BYTE_2_3_3_REV: c_int = 0x8362;
pub const GL_UNSIGNED_SHORT_5_6_5: c_int = 0x8363;
pub const GL_UNSIGNED_SHORT_5_6_5_REV: c_int = 0x8364;
pub const GL_UNSIGNED_SHORT_4_4_4_4_REV: c_int = 0x8365;
pub const GL_UNSIGNED_SHORT_1_5_5_5_REV: c_int = 0x8366;
pub const GL_UNSIGNED_INT_8_8_8_8_REV: c_int = 0x8367;
pub const GL_UNSIGNED_INT_2_10_10_10_REV: c_int = 0x8368;
pub const GL_BGR: c_int = 0x80E0;
pub const GL_BGRA: c_int = 0x80E1;
pub const GL_MAX_ELEMENTS_VERTICES: c_int = 0x80E8;
pub const GL_MAX_ELEMENTS_INDICES: c_int = 0x80E9;
pub const GL_CLAMP_TO_EDGE: c_int = 0x812F;
pub const GL_TEXTURE_MIN_LOD: c_int = 0x813A;
pub const GL_TEXTURE_MAX_LOD: c_int = 0x813B;
pub const GL_TEXTURE_BASE_LEVEL: c_int = 0x813C;
pub const GL_TEXTURE_MAX_LEVEL: c_int = 0x813D;
pub const GL_SMOOTH_POINT_SIZE_RANGE: c_int = 0x0B12;
pub const GL_SMOOTH_POINT_SIZE_GRANULARITY: c_int = 0x0B13;
pub const GL_SMOOTH_LINE_WIDTH_RANGE: c_int = 0x0B22;
pub const GL_SMOOTH_LINE_WIDTH_GRANULARITY: c_int = 0x0B23;
pub const GL_ALIASED_LINE_WIDTH_RANGE: c_int = 0x846E;
pub const GL_TEXTURE0: c_int = 0x84C0;
pub const GL_TEXTURE1: c_int = 0x84C1;
pub const GL_TEXTURE2: c_int = 0x84C2;
pub const GL_TEXTURE3: c_int = 0x84C3;
pub const GL_TEXTURE4: c_int = 0x84C4;
pub const GL_TEXTURE5: c_int = 0x84C5;
pub const GL_TEXTURE6: c_int = 0x84C6;
pub const GL_TEXTURE7: c_int = 0x84C7;
pub const GL_TEXTURE8: c_int = 0x84C8;
pub const GL_TEXTURE9: c_int = 0x84C9;
pub const GL_TEXTURE10: c_int = 0x84CA;
pub const GL_TEXTURE11: c_int = 0x84CB;
pub const GL_TEXTURE12: c_int = 0x84CC;
pub const GL_TEXTURE13: c_int = 0x84CD;
pub const GL_TEXTURE14: c_int = 0x84CE;
pub const GL_TEXTURE15: c_int = 0x84CF;
pub const GL_TEXTURE16: c_int = 0x84D0;
pub const GL_TEXTURE17: c_int = 0x84D1;
pub const GL_TEXTURE18: c_int = 0x84D2;
pub const GL_TEXTURE19: c_int = 0x84D3;
pub const GL_TEXTURE20: c_int = 0x84D4;
pub const GL_TEXTURE21: c_int = 0x84D5;
pub const GL_TEXTURE22: c_int = 0x84D6;
pub const GL_TEXTURE23: c_int = 0x84D7;
pub const GL_TEXTURE24: c_int = 0x84D8;
pub const GL_TEXTURE25: c_int = 0x84D9;
pub const GL_TEXTURE26: c_int = 0x84DA;
pub const GL_TEXTURE27: c_int = 0x84DB;
pub const GL_TEXTURE28: c_int = 0x84DC;
pub const GL_TEXTURE29: c_int = 0x84DD;
pub const GL_TEXTURE30: c_int = 0x84DE;
pub const GL_TEXTURE31: c_int = 0x84DF;
pub const GL_ACTIVE_TEXTURE: c_int = 0x84E0;
pub const GL_MULTISAMPLE: c_int = 0x809D;
pub const GL_SAMPLE_ALPHA_TO_COVERAGE: c_int = 0x809E;
pub const GL_SAMPLE_ALPHA_TO_ONE: c_int = 0x809F;
pub const GL_SAMPLE_COVERAGE: c_int = 0x80A0;
pub const GL_SAMPLE_BUFFERS: c_int = 0x80A8;
pub const GL_SAMPLES: c_int = 0x80A9;
pub const GL_SAMPLE_COVERAGE_VALUE: c_int = 0x80AA;
pub const GL_SAMPLE_COVERAGE_INVERT: c_int = 0x80AB;
pub const GL_TEXTURE_CUBE_MAP: c_int = 0x8513;
pub const GL_TEXTURE_BINDING_CUBE_MAP: c_int = 0x8514;
pub const GL_TEXTURE_CUBE_MAP_POSITIVE_X: c_int = 0x8515;
pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_X: c_int = 0x8516;
pub const GL_TEXTURE_CUBE_MAP_POSITIVE_Y: c_int = 0x8517;
pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y: c_int = 0x8518;
pub const GL_TEXTURE_CUBE_MAP_POSITIVE_Z: c_int = 0x8519;
pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z: c_int = 0x851A;
pub const GL_PROXY_TEXTURE_CUBE_MAP: c_int = 0x851B;
pub const GL_MAX_CUBE_MAP_TEXTURE_SIZE: c_int = 0x851C;
pub const GL_COMPRESSED_RGB: c_int = 0x84ED;
pub const GL_COMPRESSED_RGBA: c_int = 0x84EE;
pub const GL_TEXTURE_COMPRESSION_HINT: c_int = 0x84EF;
pub const GL_TEXTURE_COMPRESSED_IMAGE_SIZE: c_int = 0x86A0;
pub const GL_TEXTURE_COMPRESSED: c_int = 0x86A1;
pub const GL_NUM_COMPRESSED_TEXTURE_FORMATS: c_int = 0x86A2;
pub const GL_COMPRESSED_TEXTURE_FORMATS: c_int = 0x86A3;
pub const GL_CLAMP_TO_BORDER: c_int = 0x812D;
pub const GL_BLEND_DST_RGB: c_int = 0x80C8;
pub const GL_BLEND_SRC_RGB: c_int = 0x80C9;
pub const GL_BLEND_DST_ALPHA: c_int = 0x80CA;
pub const GL_BLEND_SRC_ALPHA: c_int = 0x80CB;
pub const GL_POINT_FADE_THRESHOLD_SIZE: c_int = 0x8128;
pub const GL_DEPTH_COMPONENT16: c_int = 0x81A5;
pub const GL_DEPTH_COMPONENT24: c_int = 0x81A6;
pub const GL_DEPTH_COMPONENT32: c_int = 0x81A7;
pub const GL_MIRRORED_REPEAT: c_int = 0x8370;
pub const GL_MAX_TEXTURE_LOD_BIAS: c_int = 0x84FD;
pub const GL_TEXTURE_LOD_BIAS: c_int = 0x8501;
pub const GL_INCR_WRAP: c_int = 0x8507;
pub const GL_DECR_WRAP: c_int = 0x8508;
pub const GL_TEXTURE_DEPTH_SIZE: c_int = 0x884A;
pub const GL_TEXTURE_COMPARE_MODE: c_int = 0x884C;
pub const GL_TEXTURE_COMPARE_FUNC: c_int = 0x884D;
pub const GL_BLEND_COLOR: c_int = 0x8005;
pub const GL_BLEND_EQUATION: c_int = 0x8009;
pub const GL_CONSTANT_COLOR: c_int = 0x8001;
pub const GL_ONE_MINUS_CONSTANT_COLOR: c_int = 0x8002;
pub const GL_CONSTANT_ALPHA: c_int = 0x8003;
pub const GL_ONE_MINUS_CONSTANT_ALPHA: c_int = 0x8004;
pub const GL_FUNC_ADD: c_int = 0x8006;
pub const GL_FUNC_REVERSE_SUBTRACT: c_int = 0x800B;
pub const GL_FUNC_SUBTRACT: c_int = 0x800A;
pub const GL_MIN: c_int = 0x8007;
pub const GL_MAX: c_int = 0x8008;
pub const GL_BUFFER_SIZE: c_int = 0x8764;
pub const GL_BUFFER_USAGE: c_int = 0x8765;
pub const GL_QUERY_COUNTER_BITS: c_int = 0x8864;
pub const GL_CURRENT_QUERY: c_int = 0x8865;
pub const GL_QUERY_RESULT: c_int = 0x8866;
pub const GL_QUERY_RESULT_AVAILABLE: c_int = 0x8867;
pub const GL_ARRAY_BUFFER: c_int = 0x8892;
pub const GL_ELEMENT_ARRAY_BUFFER: c_int = 0x8893;
pub const GL_ARRAY_BUFFER_BINDING: c_int = 0x8894;
pub const GL_ELEMENT_ARRAY_BUFFER_BINDING: c_int = 0x8895;
pub const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: c_int = 0x889F;
pub const GL_READ_ONLY: c_int = 0x88B8;
pub const GL_WRITE_ONLY: c_int = 0x88B9;
pub const GL_READ_WRITE: c_int = 0x88BA;
pub const GL_BUFFER_ACCESS: c_int = 0x88BB;
pub const GL_BUFFER_MAPPED: c_int = 0x88BC;
pub const GL_BUFFER_MAP_POINTER: c_int = 0x88BD;
pub const GL_STREAM_DRAW: c_int = 0x88E0;
pub const GL_STREAM_READ: c_int = 0x88E1;
pub const GL_STREAM_COPY: c_int = 0x88E2;
pub const GL_STATIC_DRAW: c_int = 0x88E4;
pub const GL_STATIC_READ: c_int = 0x88E5;
pub const GL_STATIC_COPY: c_int = 0x88E6;
pub const GL_DYNAMIC_DRAW: c_int = 0x88E8;
pub const GL_DYNAMIC_READ: c_int = 0x88E9;
pub const GL_DYNAMIC_COPY: c_int = 0x88EA;
pub const GL_SAMPLES_PASSED: c_int = 0x8914;
pub const GL_SRC1_ALPHA: c_int = 0x8589;
pub const GL_BLEND_EQUATION_RGB: c_int = 0x8009;
pub const GL_VERTEX_ATTRIB_ARRAY_ENABLED: c_int = 0x8622;
pub const GL_VERTEX_ATTRIB_ARRAY_SIZE: c_int = 0x8623;
pub const GL_VERTEX_ATTRIB_ARRAY_STRIDE: c_int = 0x8624;
pub const GL_VERTEX_ATTRIB_ARRAY_TYPE: c_int = 0x8625;
pub const GL_CURRENT_VERTEX_ATTRIB: c_int = 0x8626;
pub const GL_VERTEX_PROGRAM_POINT_SIZE: c_int = 0x8642;
pub const GL_VERTEX_ATTRIB_ARRAY_POINTER: c_int = 0x8645;
pub const GL_STENCIL_BACK_FUNC: c_int = 0x8800;
pub const GL_STENCIL_BACK_FAIL: c_int = 0x8801;
pub const GL_STENCIL_BACK_PASS_DEPTH_FAIL: c_int = 0x8802;
pub const GL_STENCIL_BACK_PASS_DEPTH_PASS: c_int = 0x8803;
pub const GL_MAX_DRAW_BUFFERS: c_int = 0x8824;
pub const GL_DRAW_BUFFER0: c_int = 0x8825;
pub const GL_DRAW_BUFFER1: c_int = 0x8826;
pub const GL_DRAW_BUFFER2: c_int = 0x8827;
pub const GL_DRAW_BUFFER3: c_int = 0x8828;
pub const GL_DRAW_BUFFER4: c_int = 0x8829;
pub const GL_DRAW_BUFFER5: c_int = 0x882A;
pub const GL_DRAW_BUFFER6: c_int = 0x882B;
pub const GL_DRAW_BUFFER7: c_int = 0x882C;
pub const GL_DRAW_BUFFER8: c_int = 0x882D;
pub const GL_DRAW_BUFFER9: c_int = 0x882E;
pub const GL_DRAW_BUFFER10: c_int = 0x882F;
pub const GL_DRAW_BUFFER11: c_int = 0x8830;
pub const GL_DRAW_BUFFER12: c_int = 0x8831;
pub const GL_DRAW_BUFFER13: c_int = 0x8832;
pub const GL_DRAW_BUFFER14: c_int = 0x8833;
pub const GL_DRAW_BUFFER15: c_int = 0x8834;
pub const GL_BLEND_EQUATION_ALPHA: c_int = 0x883D;
pub const GL_MAX_VERTEX_ATTRIBS: c_int = 0x8869;
pub const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED: c_int = 0x886A;
pub const GL_MAX_TEXTURE_IMAGE_UNITS: c_int = 0x8872;
pub const GL_FRAGMENT_SHADER: c_int = 0x8B30;
pub const GL_VERTEX_SHADER: c_int = 0x8B31;
pub const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS: c_int = 0x8B49;
pub const GL_MAX_VERTEX_UNIFORM_COMPONENTS: c_int = 0x8B4A;
pub const GL_MAX_VARYING_FLOATS: c_int = 0x8B4B;
pub const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS: c_int = 0x8B4C;
pub const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS: c_int = 0x8B4D;
pub const GL_SHADER_TYPE: c_int = 0x8B4F;
pub const GL_FLOAT_VEC2: c_int = 0x8B50;
pub const GL_FLOAT_VEC3: c_int = 0x8B51;
pub const GL_FLOAT_VEC4: c_int = 0x8B52;
pub const GL_INT_VEC2: c_int = 0x8B53;
pub const GL_INT_VEC3: c_int = 0x8B54;
pub const GL_INT_VEC4: c_int = 0x8B55;
pub const GL_BOOL: c_int = 0x8B56;
pub const GL_BOOL_VEC2: c_int = 0x8B57;
pub const GL_BOOL_VEC3: c_int = 0x8B58;
pub const GL_BOOL_VEC4: c_int = 0x8B59;
pub const GL_FLOAT_MAT2: c_int = 0x8B5A;
pub const GL_FLOAT_MAT3: c_int = 0x8B5B;
pub const GL_FLOAT_MAT4: c_int = 0x8B5C;
pub const GL_SAMPLER_1D: c_int = 0x8B5D;
pub const GL_SAMPLER_2D: c_int = 0x8B5E;
pub const GL_SAMPLER_3D: c_int = 0x8B5F;
pub const GL_SAMPLER_CUBE: c_int = 0x8B60;
pub const GL_SAMPLER_1D_SHADOW: c_int = 0x8B61;
pub const GL_SAMPLER_2D_SHADOW: c_int = 0x8B62;
pub const GL_DELETE_STATUS: c_int = 0x8B80;
pub const GL_COMPILE_STATUS: c_int = 0x8B81;
pub const GL_LINK_STATUS: c_int = 0x8B82;
pub const GL_VALIDATE_STATUS: c_int = 0x8B83;
pub const GL_INFO_LOG_LENGTH: c_int = 0x8B84;
pub const GL_ATTACHED_SHADERS: c_int = 0x8B85;
pub const GL_ACTIVE_UNIFORMS: c_int = 0x8B86;
pub const GL_ACTIVE_UNIFORM_MAX_LENGTH: c_int = 0x8B87;
pub const GL_SHADER_SOURCE_LENGTH: c_int = 0x8B88;
pub const GL_ACTIVE_ATTRIBUTES: c_int = 0x8B89;
pub const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH: c_int = 0x8B8A;
pub const GL_FRAGMENT_SHADER_DERIVATIVE_HINT: c_int = 0x8B8B;
pub const GL_SHADING_LANGUAGE_VERSION: c_int = 0x8B8C;
pub const GL_CURRENT_PROGRAM: c_int = 0x8B8D;
pub const GL_POINT_SPRITE_COORD_ORIGIN: c_int = 0x8CA0;
pub const GL_LOWER_LEFT: c_int = 0x8CA1;
pub const GL_UPPER_LEFT: c_int = 0x8CA2;
pub const GL_STENCIL_BACK_REF: c_int = 0x8CA3;
pub const GL_STENCIL_BACK_VALUE_MASK: c_int = 0x8CA4;
pub const GL_STENCIL_BACK_WRITEMASK: c_int = 0x8CA5;
pub const GL_PIXEL_PACK_BUFFER: c_int = 0x88EB;
pub const GL_PIXEL_UNPACK_BUFFER: c_int = 0x88EC;
pub const GL_PIXEL_PACK_BUFFER_BINDING: c_int = 0x88ED;
pub const GL_PIXEL_UNPACK_BUFFER_BINDING: c_int = 0x88EF;
pub const GL_FLOAT_MAT2x3: c_int = 0x8B65;
pub const GL_FLOAT_MAT2x4: c_int = 0x8B66;
pub const GL_FLOAT_MAT3x2: c_int = 0x8B67;
pub const GL_FLOAT_MAT3x4: c_int = 0x8B68;
pub const GL_FLOAT_MAT4x2: c_int = 0x8B69;
pub const GL_FLOAT_MAT4x3: c_int = 0x8B6A;
pub const GL_SRGB: c_int = 0x8C40;
pub const GL_SRGB8: c_int = 0x8C41;
pub const GL_SRGB_ALPHA: c_int = 0x8C42;
pub const GL_SRGB8_ALPHA8: c_int = 0x8C43;
pub const GL_COMPRESSED_SRGB: c_int = 0x8C48;
pub const GL_COMPRESSED_SRGB_ALPHA: c_int = 0x8C49;
pub const GL_COMPARE_REF_TO_TEXTURE: c_int = 0x884E;
pub const GL_CLIP_DISTANCE0: c_int = 0x3000;
pub const GL_CLIP_DISTANCE1: c_int = 0x3001;
pub const GL_CLIP_DISTANCE2: c_int = 0x3002;
pub const GL_CLIP_DISTANCE3: c_int = 0x3003;
pub const GL_CLIP_DISTANCE4: c_int = 0x3004;
pub const GL_CLIP_DISTANCE5: c_int = 0x3005;
pub const GL_CLIP_DISTANCE6: c_int = 0x3006;
pub const GL_CLIP_DISTANCE7: c_int = 0x3007;
pub const GL_MAX_CLIP_DISTANCES: c_int = 0x0D32;
pub const GL_MAJOR_VERSION: c_int = 0x821B;
pub const GL_MINOR_VERSION: c_int = 0x821C;
pub const GL_NUM_EXTENSIONS: c_int = 0x821D;
pub const GL_CONTEXT_FLAGS: c_int = 0x821E;
pub const GL_COMPRESSED_RED: c_int = 0x8225;
pub const GL_COMPRESSED_RG: c_int = 0x8226;
pub const GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT: c_int = 0x00000001;
pub const GL_RGBA32F: c_int = 0x8814;
pub const GL_RGB32F: c_int = 0x8815;
pub const GL_RGBA16F: c_int = 0x881A;
pub const GL_RGB16F: c_int = 0x881B;
pub const GL_VERTEX_ATTRIB_ARRAY_INTEGER: c_int = 0x88FD;
pub const GL_MAX_ARRAY_TEXTURE_LAYERS: c_int = 0x88FF;
pub const GL_MIN_PROGRAM_TEXEL_OFFSET: c_int = 0x8904;
pub const GL_MAX_PROGRAM_TEXEL_OFFSET: c_int = 0x8905;
pub const GL_CLAMP_READ_COLOR: c_int = 0x891C;
pub const GL_FIXED_ONLY: c_int = 0x891D;
pub const GL_MAX_VARYING_COMPONENTS: c_int = 0x8B4B;
pub const GL_TEXTURE_1D_ARRAY: c_int = 0x8C18;
pub const GL_PROXY_TEXTURE_1D_ARRAY: c_int = 0x8C19;
pub const GL_TEXTURE_2D_ARRAY: c_int = 0x8C1A;
pub const GL_PROXY_TEXTURE_2D_ARRAY: c_int = 0x8C1B;
pub const GL_TEXTURE_BINDING_1D_ARRAY: c_int = 0x8C1C;
pub const GL_TEXTURE_BINDING_2D_ARRAY: c_int = 0x8C1D;
pub const GL_R11F_G11F_B10F: c_int = 0x8C3A;
pub const GL_UNSIGNED_INT_10F_11F_11F_REV: c_int = 0x8C3B;
pub const GL_RGB9_E5: c_int = 0x8C3D;
pub const GL_UNSIGNED_INT_5_9_9_9_REV: c_int = 0x8C3E;
pub const GL_TEXTURE_SHARED_SIZE: c_int = 0x8C3F;
pub const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH: c_int = 0x8C76;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_MODE: c_int = 0x8C7F;
pub const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS: c_int = 0x8C80;
pub const GL_TRANSFORM_FEEDBACK_VARYINGS: c_int = 0x8C83;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_START: c_int = 0x8C84;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE: c_int = 0x8C85;
pub const GL_PRIMITIVES_GENERATED: c_int = 0x8C87;
pub const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN: c_int = 0x8C88;
pub const GL_RASTERIZER_DISCARD: c_int = 0x8C89;
pub const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS: c_int = 0x8C8A;
pub const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS: c_int = 0x8C8B;
pub const GL_INTERLEAVED_ATTRIBS: c_int = 0x8C8C;
pub const GL_SEPARATE_ATTRIBS: c_int = 0x8C8D;
pub const GL_TRANSFORM_FEEDBACK_BUFFER: c_int = 0x8C8E;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING: c_int = 0x8C8F;
pub const GL_RGBA32UI: c_int = 0x8D70;
pub const GL_RGB32UI: c_int = 0x8D71;
pub const GL_RGBA16UI: c_int = 0x8D76;
pub const GL_RGB16UI: c_int = 0x8D77;
pub const GL_RGBA8UI: c_int = 0x8D7C;
pub const GL_RGB8UI: c_int = 0x8D7D;
pub const GL_RGBA32I: c_int = 0x8D82;
pub const GL_RGB32I: c_int = 0x8D83;
pub const GL_RGBA16I: c_int = 0x8D88;
pub const GL_RGB16I: c_int = 0x8D89;
pub const GL_RGBA8I: c_int = 0x8D8E;
pub const GL_RGB8I: c_int = 0x8D8F;
pub const GL_RED_INTEGER: c_int = 0x8D94;
pub const GL_GREEN_INTEGER: c_int = 0x8D95;
pub const GL_BLUE_INTEGER: c_int = 0x8D96;
pub const GL_RGB_INTEGER: c_int = 0x8D98;
pub const GL_RGBA_INTEGER: c_int = 0x8D99;
pub const GL_BGR_INTEGER: c_int = 0x8D9A;
pub const GL_BGRA_INTEGER: c_int = 0x8D9B;
pub const GL_SAMPLER_1D_ARRAY: c_int = 0x8DC0;
pub const GL_SAMPLER_2D_ARRAY: c_int = 0x8DC1;
pub const GL_SAMPLER_1D_ARRAY_SHADOW: c_int = 0x8DC3;
pub const GL_SAMPLER_2D_ARRAY_SHADOW: c_int = 0x8DC4;
pub const GL_SAMPLER_CUBE_SHADOW: c_int = 0x8DC5;
pub const GL_UNSIGNED_INT_VEC2: c_int = 0x8DC6;
pub const GL_UNSIGNED_INT_VEC3: c_int = 0x8DC7;
pub const GL_UNSIGNED_INT_VEC4: c_int = 0x8DC8;
pub const GL_INT_SAMPLER_1D: c_int = 0x8DC9;
pub const GL_INT_SAMPLER_2D: c_int = 0x8DCA;
pub const GL_INT_SAMPLER_3D: c_int = 0x8DCB;
pub const GL_INT_SAMPLER_CUBE: c_int = 0x8DCC;
pub const GL_INT_SAMPLER_1D_ARRAY: c_int = 0x8DCE;
pub const GL_INT_SAMPLER_2D_ARRAY: c_int = 0x8DCF;
pub const GL_UNSIGNED_INT_SAMPLER_1D: c_int = 0x8DD1;
pub const GL_UNSIGNED_INT_SAMPLER_2D: c_int = 0x8DD2;
pub const GL_UNSIGNED_INT_SAMPLER_3D: c_int = 0x8DD3;
pub const GL_UNSIGNED_INT_SAMPLER_CUBE: c_int = 0x8DD4;
pub const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY: c_int = 0x8DD6;
pub const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY: c_int = 0x8DD7;
pub const GL_QUERY_WAIT: c_int = 0x8E13;
pub const GL_QUERY_NO_WAIT: c_int = 0x8E14;
pub const GL_QUERY_BY_REGION_WAIT: c_int = 0x8E15;
pub const GL_QUERY_BY_REGION_NO_WAIT: c_int = 0x8E16;
pub const GL_BUFFER_ACCESS_FLAGS: c_int = 0x911F;
pub const GL_BUFFER_MAP_LENGTH: c_int = 0x9120;
pub const GL_BUFFER_MAP_OFFSET: c_int = 0x9121;
pub const GL_DEPTH_COMPONENT32F: c_int = 0x8CAC;
pub const GL_DEPTH32F_STENCIL8: c_int = 0x8CAD;
pub const GL_FLOAT_32_UNSIGNED_INT_24_8_REV: c_int = 0x8DAD;
pub const GL_INVALID_FRAMEBUFFER_OPERATION: c_int = 0x0506;
pub const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING: c_int = 0x8210;
pub const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE: c_int = 0x8211;
pub const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE: c_int = 0x8212;
pub const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE: c_int = 0x8213;
pub const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE: c_int = 0x8214;
pub const GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE: c_int = 0x8215;
pub const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE: c_int = 0x8216;
pub const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE: c_int = 0x8217;
pub const GL_FRAMEBUFFER_DEFAULT: c_int = 0x8218;
pub const GL_FRAMEBUFFER_UNDEFINED: c_int = 0x8219;
pub const GL_DEPTH_STENCIL_ATTACHMENT: c_int = 0x821A;
pub const GL_MAX_RENDERBUFFER_SIZE: c_int = 0x84E8;
pub const GL_DEPTH_STENCIL: c_int = 0x84F9;
pub const GL_UNSIGNED_INT_24_8: c_int = 0x84FA;
pub const GL_DEPTH24_STENCIL8: c_int = 0x88F0;
pub const GL_TEXTURE_STENCIL_SIZE: c_int = 0x88F1;
pub const GL_TEXTURE_RED_TYPE: c_int = 0x8C10;
pub const GL_TEXTURE_GREEN_TYPE: c_int = 0x8C11;
pub const GL_TEXTURE_BLUE_TYPE: c_int = 0x8C12;
pub const GL_TEXTURE_ALPHA_TYPE: c_int = 0x8C13;
pub const GL_TEXTURE_DEPTH_TYPE: c_int = 0x8C16;
pub const GL_UNSIGNED_NORMALIZED: c_int = 0x8C17;
pub const GL_FRAMEBUFFER_BINDING: c_int = 0x8CA6;
pub const GL_DRAW_FRAMEBUFFER_BINDING: c_int = 0x8CA6;
pub const GL_RENDERBUFFER_BINDING: c_int = 0x8CA7;
pub const GL_READ_FRAMEBUFFER: c_int = 0x8CA8;
pub const GL_DRAW_FRAMEBUFFER: c_int = 0x8CA9;
pub const GL_READ_FRAMEBUFFER_BINDING: c_int = 0x8CAA;
pub const GL_RENDERBUFFER_SAMPLES: c_int = 0x8CAB;
pub const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE: c_int = 0x8CD0;
pub const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME: c_int = 0x8CD1;
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL: c_int = 0x8CD2;
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE: c_int = 0x8CD3;
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER: c_int = 0x8CD4;
pub const GL_FRAMEBUFFER_COMPLETE: c_int = 0x8CD5;
pub const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT: c_int = 0x8CD6;
pub const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: c_int = 0x8CD7;
pub const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER: c_int = 0x8CDB;
pub const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER: c_int = 0x8CDC;
pub const GL_FRAMEBUFFER_UNSUPPORTED: c_int = 0x8CDD;
pub const GL_MAX_COLOR_ATTACHMENTS: c_int = 0x8CDF;
pub const GL_COLOR_ATTACHMENT0: c_int = 0x8CE0;
pub const GL_COLOR_ATTACHMENT1: c_int = 0x8CE1;
pub const GL_COLOR_ATTACHMENT2: c_int = 0x8CE2;
pub const GL_COLOR_ATTACHMENT3: c_int = 0x8CE3;
pub const GL_COLOR_ATTACHMENT4: c_int = 0x8CE4;
pub const GL_COLOR_ATTACHMENT5: c_int = 0x8CE5;
pub const GL_COLOR_ATTACHMENT6: c_int = 0x8CE6;
pub const GL_COLOR_ATTACHMENT7: c_int = 0x8CE7;
pub const GL_COLOR_ATTACHMENT8: c_int = 0x8CE8;
pub const GL_COLOR_ATTACHMENT9: c_int = 0x8CE9;
pub const GL_COLOR_ATTACHMENT10: c_int = 0x8CEA;
pub const GL_COLOR_ATTACHMENT11: c_int = 0x8CEB;
pub const GL_COLOR_ATTACHMENT12: c_int = 0x8CEC;
pub const GL_COLOR_ATTACHMENT13: c_int = 0x8CED;
pub const GL_COLOR_ATTACHMENT14: c_int = 0x8CEE;
pub const GL_COLOR_ATTACHMENT15: c_int = 0x8CEF;
pub const GL_COLOR_ATTACHMENT16: c_int = 0x8CF0;
pub const GL_COLOR_ATTACHMENT17: c_int = 0x8CF1;
pub const GL_COLOR_ATTACHMENT18: c_int = 0x8CF2;
pub const GL_COLOR_ATTACHMENT19: c_int = 0x8CF3;
pub const GL_COLOR_ATTACHMENT20: c_int = 0x8CF4;
pub const GL_COLOR_ATTACHMENT21: c_int = 0x8CF5;
pub const GL_COLOR_ATTACHMENT22: c_int = 0x8CF6;
pub const GL_COLOR_ATTACHMENT23: c_int = 0x8CF7;
pub const GL_COLOR_ATTACHMENT24: c_int = 0x8CF8;
pub const GL_COLOR_ATTACHMENT25: c_int = 0x8CF9;
pub const GL_COLOR_ATTACHMENT26: c_int = 0x8CFA;
pub const GL_COLOR_ATTACHMENT27: c_int = 0x8CFB;
pub const GL_COLOR_ATTACHMENT28: c_int = 0x8CFC;
pub const GL_COLOR_ATTACHMENT29: c_int = 0x8CFD;
pub const GL_COLOR_ATTACHMENT30: c_int = 0x8CFE;
pub const GL_COLOR_ATTACHMENT31: c_int = 0x8CFF;
pub const GL_DEPTH_ATTACHMENT: c_int = 0x8D00;
pub const GL_STENCIL_ATTACHMENT: c_int = 0x8D20;
pub const GL_FRAMEBUFFER: c_int = 0x8D40;
pub const GL_RENDERBUFFER: c_int = 0x8D41;
pub const GL_RENDERBUFFER_WIDTH: c_int = 0x8D42;
pub const GL_RENDERBUFFER_HEIGHT: c_int = 0x8D43;
pub const GL_RENDERBUFFER_INTERNAL_FORMAT: c_int = 0x8D44;
pub const GL_STENCIL_INDEX1: c_int = 0x8D46;
pub const GL_STENCIL_INDEX4: c_int = 0x8D47;
pub const GL_STENCIL_INDEX8: c_int = 0x8D48;
pub const GL_STENCIL_INDEX16: c_int = 0x8D49;
pub const GL_RENDERBUFFER_RED_SIZE: c_int = 0x8D50;
pub const GL_RENDERBUFFER_GREEN_SIZE: c_int = 0x8D51;
pub const GL_RENDERBUFFER_BLUE_SIZE: c_int = 0x8D52;
pub const GL_RENDERBUFFER_ALPHA_SIZE: c_int = 0x8D53;
pub const GL_RENDERBUFFER_DEPTH_SIZE: c_int = 0x8D54;
pub const GL_RENDERBUFFER_STENCIL_SIZE: c_int = 0x8D55;
pub const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE: c_int = 0x8D56;
pub const GL_MAX_SAMPLES: c_int = 0x8D57;
pub const GL_FRAMEBUFFER_SRGB: c_int = 0x8DB9;
pub const GL_HALF_FLOAT: c_int = 0x140B;
pub const GL_MAP_READ_BIT: c_int = 0x0001;
pub const GL_MAP_WRITE_BIT: c_int = 0x0002;
pub const GL_MAP_INVALIDATE_RANGE_BIT: c_int = 0x0004;
pub const GL_MAP_INVALIDATE_BUFFER_BIT: c_int = 0x0008;
pub const GL_MAP_FLUSH_EXPLICIT_BIT: c_int = 0x0010;
pub const GL_MAP_UNSYNCHRONIZED_BIT: c_int = 0x0020;
pub const GL_COMPRESSED_RED_RGTC1: c_int = 0x8DBB;
pub const GL_COMPRESSED_SIGNED_RED_RGTC1: c_int = 0x8DBC;
pub const GL_COMPRESSED_RG_RGTC2: c_int = 0x8DBD;
pub const GL_COMPRESSED_SIGNED_RG_RGTC2: c_int = 0x8DBE;
pub const GL_RG: c_int = 0x8227;
pub const GL_RG_INTEGER: c_int = 0x8228;
pub const GL_R8: c_int = 0x8229;
pub const GL_R16: c_int = 0x822A;
pub const GL_RG8: c_int = 0x822B;
pub const GL_RG16: c_int = 0x822C;
pub const GL_R16F: c_int = 0x822D;
pub const GL_R32F: c_int = 0x822E;
pub const GL_RG16F: c_int = 0x822F;
pub const GL_RG32F: c_int = 0x8230;
pub const GL_R8I: c_int = 0x8231;
pub const GL_R8UI: c_int = 0x8232;
pub const GL_R16I: c_int = 0x8233;
pub const GL_R16UI: c_int = 0x8234;
pub const GL_R32I: c_int = 0x8235;
pub const GL_R32UI: c_int = 0x8236;
pub const GL_RG8I: c_int = 0x8237;
pub const GL_RG8UI: c_int = 0x8238;
pub const GL_RG16I: c_int = 0x8239;
pub const GL_RG16UI: c_int = 0x823A;
pub const GL_RG32I: c_int = 0x823B;
pub const GL_RG32UI: c_int = 0x823C;
pub const GL_VERTEX_ARRAY_BINDING: c_int = 0x85B5;
pub const GL_SAMPLER_2D_RECT: c_int = 0x8B63;
pub const GL_SAMPLER_2D_RECT_SHADOW: c_int = 0x8B64;
pub const GL_SAMPLER_BUFFER: c_int = 0x8DC2;
pub const GL_INT_SAMPLER_2D_RECT: c_int = 0x8DCD;
pub const GL_INT_SAMPLER_BUFFER: c_int = 0x8DD0;
pub const GL_UNSIGNED_INT_SAMPLER_2D_RECT: c_int = 0x8DD5;
pub const GL_UNSIGNED_INT_SAMPLER_BUFFER: c_int = 0x8DD8;
pub const GL_TEXTURE_BUFFER: c_int = 0x8C2A;
pub const GL_MAX_TEXTURE_BUFFER_SIZE: c_int = 0x8C2B;
pub const GL_TEXTURE_BINDING_BUFFER: c_int = 0x8C2C;
pub const GL_TEXTURE_BUFFER_DATA_STORE_BINDING: c_int = 0x8C2D;
pub const GL_TEXTURE_RECTANGLE: c_int = 0x84F5;
pub const GL_TEXTURE_BINDING_RECTANGLE: c_int = 0x84F6;
pub const GL_PROXY_TEXTURE_RECTANGLE: c_int = 0x84F7;
pub const GL_MAX_RECTANGLE_TEXTURE_SIZE: c_int = 0x84F8;
pub const GL_R8_SNORM: c_int = 0x8F94;
pub const GL_RG8_SNORM: c_int = 0x8F95;
pub const GL_RGB8_SNORM: c_int = 0x8F96;
pub const GL_RGBA8_SNORM: c_int = 0x8F97;
pub const GL_R16_SNORM: c_int = 0x8F98;
pub const GL_RG16_SNORM: c_int = 0x8F99;
pub const GL_RGB16_SNORM: c_int = 0x8F9A;
pub const GL_RGBA16_SNORM: c_int = 0x8F9B;
pub const GL_SIGNED_NORMALIZED: c_int = 0x8F9C;
pub const GL_PRIMITIVE_RESTART: c_int = 0x8F9D;
pub const GL_PRIMITIVE_RESTART_INDEX: c_int = 0x8F9E;
pub const GL_COPY_READ_BUFFER: c_int = 0x8F36;
pub const GL_COPY_WRITE_BUFFER: c_int = 0x8F37;
pub const GL_UNIFORM_BUFFER: c_int = 0x8A11;
pub const GL_UNIFORM_BUFFER_BINDING: c_int = 0x8A28;
pub const GL_UNIFORM_BUFFER_START: c_int = 0x8A29;
pub const GL_UNIFORM_BUFFER_SIZE: c_int = 0x8A2A;
pub const GL_MAX_VERTEX_UNIFORM_BLOCKS: c_int = 0x8A2B;
pub const GL_MAX_GEOMETRY_UNIFORM_BLOCKS: c_int = 0x8A2C;
pub const GL_MAX_FRAGMENT_UNIFORM_BLOCKS: c_int = 0x8A2D;
pub const GL_MAX_COMBINED_UNIFORM_BLOCKS: c_int = 0x8A2E;
pub const GL_MAX_UNIFORM_BUFFER_BINDINGS: c_int = 0x8A2F;
pub const GL_MAX_UNIFORM_BLOCK_SIZE: c_int = 0x8A30;
pub const GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS: c_int = 0x8A31;
pub const GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS: c_int = 0x8A32;
pub const GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS: c_int = 0x8A33;
pub const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT: c_int = 0x8A34;
pub const GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH: c_int = 0x8A35;
pub const GL_ACTIVE_UNIFORM_BLOCKS: c_int = 0x8A36;
pub const GL_UNIFORM_TYPE: c_int = 0x8A37;
pub const GL_UNIFORM_SIZE: c_int = 0x8A38;
pub const GL_UNIFORM_NAME_LENGTH: c_int = 0x8A39;
pub const GL_UNIFORM_BLOCK_INDEX: c_int = 0x8A3A;
pub const GL_UNIFORM_OFFSET: c_int = 0x8A3B;
pub const GL_UNIFORM_ARRAY_STRIDE: c_int = 0x8A3C;
pub const GL_UNIFORM_MATRIX_STRIDE: c_int = 0x8A3D;
pub const GL_UNIFORM_IS_ROW_MAJOR: c_int = 0x8A3E;
pub const GL_UNIFORM_BLOCK_BINDING: c_int = 0x8A3F;
pub const GL_UNIFORM_BLOCK_DATA_SIZE: c_int = 0x8A40;
pub const GL_UNIFORM_BLOCK_NAME_LENGTH: c_int = 0x8A41;
pub const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS: c_int = 0x8A42;
pub const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES: c_int = 0x8A43;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER: c_int = 0x8A44;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER: c_int = 0x8A45;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER: c_int = 0x8A46;
pub const GL_INVALID_INDEX: c_int = 0xFFFFFFFF;
pub const GL_CONTEXT_CORE_PROFILE_BIT: c_int = 0x00000001;
pub const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT: c_int = 0x00000002;
pub const GL_LINES_ADJACENCY: c_int = 0x000A;
pub const GL_LINE_STRIP_ADJACENCY: c_int = 0x000B;
pub const GL_TRIANGLES_ADJACENCY: c_int = 0x000C;
pub const GL_TRIANGLE_STRIP_ADJACENCY: c_int = 0x000D;
pub const GL_PROGRAM_POINT_SIZE: c_int = 0x8642;
pub const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS: c_int = 0x8C29;
pub const GL_FRAMEBUFFER_ATTACHMENT_LAYERED: c_int = 0x8DA7;
pub const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS: c_int = 0x8DA8;
pub const GL_GEOMETRY_SHADER: c_int = 0x8DD9;
pub const GL_GEOMETRY_VERTICES_OUT: c_int = 0x8916;
pub const GL_GEOMETRY_INPUT_TYPE: c_int = 0x8917;
pub const GL_GEOMETRY_OUTPUT_TYPE: c_int = 0x8918;
pub const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS: c_int = 0x8DDF;
pub const GL_MAX_GEOMETRY_OUTPUT_VERTICES: c_int = 0x8DE0;
pub const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS: c_int = 0x8DE1;
pub const GL_MAX_VERTEX_OUTPUT_COMPONENTS: c_int = 0x9122;
pub const GL_MAX_GEOMETRY_INPUT_COMPONENTS: c_int = 0x9123;
pub const GL_MAX_GEOMETRY_OUTPUT_COMPONENTS: c_int = 0x9124;
pub const GL_MAX_FRAGMENT_INPUT_COMPONENTS: c_int = 0x9125;
pub const GL_CONTEXT_PROFILE_MASK: c_int = 0x9126;
pub const GL_DEPTH_CLAMP: c_int = 0x864F;
pub const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION: c_int = 0x8E4C;
pub const GL_FIRST_VERTEX_CONVENTION: c_int = 0x8E4D;
pub const GL_LAST_VERTEX_CONVENTION: c_int = 0x8E4E;
pub const GL_PROVOKING_VERTEX: c_int = 0x8E4F;
pub const GL_TEXTURE_CUBE_MAP_SEAMLESS: c_int = 0x884F;
pub const GL_MAX_SERVER_WAIT_TIMEOUT: c_int = 0x9111;
pub const GL_OBJECT_TYPE: c_int = 0x9112;
pub const GL_SYNC_CONDITION: c_int = 0x9113;
pub const GL_SYNC_STATUS: c_int = 0x9114;
pub const GL_SYNC_FLAGS: c_int = 0x9115;
pub const GL_SYNC_FENCE: c_int = 0x9116;
pub const GL_SYNC_GPU_COMMANDS_COMPLETE: c_int = 0x9117;
pub const GL_UNSIGNALED: c_int = 0x9118;
pub const GL_SIGNALED: c_int = 0x9119;
pub const GL_ALREADY_SIGNALED: c_int = 0x911A;
pub const GL_TIMEOUT_EXPIRED: c_int = 0x911B;
pub const GL_CONDITION_SATISFIED: c_int = 0x911C;
pub const GL_WAIT_FAILED: c_int = 0x911D;
pub const GL_TIMEOUT_IGNORED: c_int = 0xFFFFFFFFFFFFFFFF;
pub const GL_SYNC_FLUSH_COMMANDS_BIT: c_int = 0x00000001;
pub const GL_SAMPLE_POSITION: c_int = 0x8E50;
pub const GL_SAMPLE_MASK: c_int = 0x8E51;
pub const GL_SAMPLE_MASK_VALUE: c_int = 0x8E52;
pub const GL_MAX_SAMPLE_MASK_WORDS: c_int = 0x8E59;
pub const GL_TEXTURE_2D_MULTISAMPLE: c_int = 0x9100;
pub const GL_PROXY_TEXTURE_2D_MULTISAMPLE: c_int = 0x9101;
pub const GL_TEXTURE_2D_MULTISAMPLE_ARRAY: c_int = 0x9102;
pub const GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY: c_int = 0x9103;
pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE: c_int = 0x9104;
pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY: c_int = 0x9105;
pub const GL_TEXTURE_SAMPLES: c_int = 0x9106;
pub const GL_TEXTURE_FIXED_SAMPLE_LOCATIONS: c_int = 0x9107;
pub const GL_SAMPLER_2D_MULTISAMPLE: c_int = 0x9108;
pub const GL_INT_SAMPLER_2D_MULTISAMPLE: c_int = 0x9109;
pub const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE: c_int = 0x910A;
pub const GL_SAMPLER_2D_MULTISAMPLE_ARRAY: c_int = 0x910B;
pub const GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY: c_int = 0x910C;
pub const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY: c_int = 0x910D;
pub const GL_MAX_COLOR_TEXTURE_SAMPLES: c_int = 0x910E;
pub const GL_MAX_DEPTH_TEXTURE_SAMPLES: c_int = 0x910F;
pub const GL_MAX_INTEGER_SAMPLES: c_int = 0x9110;
pub const GL_VERTEX_ATTRIB_ARRAY_DIVISOR: c_int = 0x88FE;
pub const GL_SRC1_COLOR: c_int = 0x88F9;
pub const GL_ONE_MINUS_SRC1_COLOR: c_int = 0x88FA;
pub const GL_ONE_MINUS_SRC1_ALPHA: c_int = 0x88FB;
pub const GL_MAX_DUAL_SOURCE_DRAW_BUFFERS: c_int = 0x88FC;
pub const GL_ANY_SAMPLES_PASSED: c_int = 0x8C2F;
pub const GL_SAMPLER_BINDING: c_int = 0x8919;
pub const GL_RGB10_A2UI: c_int = 0x906F;
pub const GL_TEXTURE_SWIZZLE_R: c_int = 0x8E42;
pub const GL_TEXTURE_SWIZZLE_G: c_int = 0x8E43;
pub const GL_TEXTURE_SWIZZLE_B: c_int = 0x8E44;
pub const GL_TEXTURE_SWIZZLE_A: c_int = 0x8E45;
pub const GL_TEXTURE_SWIZZLE_RGBA: c_int = 0x8E46;
pub const GL_TIME_ELAPSED: c_int = 0x88BF;
pub const GL_TIMESTAMP: c_int = 0x8E28;
pub const GL_INT_2_10_10_10_REV: c_int = 0x8D9F;
pub const GL_SAMPLE_SHADING: c_int = 0x8C36;
pub const GL_MIN_SAMPLE_SHADING_VALUE: c_int = 0x8C37;
pub const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET: c_int = 0x8E5E;
pub const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET: c_int = 0x8E5F;
pub const GL_TEXTURE_CUBE_MAP_ARRAY: c_int = 0x9009;
pub const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY: c_int = 0x900A;
pub const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY: c_int = 0x900B;
pub const GL_SAMPLER_CUBE_MAP_ARRAY: c_int = 0x900C;
pub const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW: c_int = 0x900D;
pub const GL_INT_SAMPLER_CUBE_MAP_ARRAY: c_int = 0x900E;
pub const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY: c_int = 0x900F;
pub const GL_DRAW_INDIRECT_BUFFER: c_int = 0x8F3F;
pub const GL_DRAW_INDIRECT_BUFFER_BINDING: c_int = 0x8F43;
pub const GL_GEOMETRY_SHADER_INVOCATIONS: c_int = 0x887F;
pub const GL_MAX_GEOMETRY_SHADER_INVOCATIONS: c_int = 0x8E5A;
pub const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET: c_int = 0x8E5B;
pub const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET: c_int = 0x8E5C;
pub const GL_FRAGMENT_INTERPOLATION_OFFSET_BITS: c_int = 0x8E5D;
pub const GL_MAX_VERTEX_STREAMS: c_int = 0x8E71;
pub const GL_DOUBLE_VEC2: c_int = 0x8FFC;
pub const GL_DOUBLE_VEC3: c_int = 0x8FFD;
pub const GL_DOUBLE_VEC4: c_int = 0x8FFE;
pub const GL_DOUBLE_MAT2: c_int = 0x8F46;
pub const GL_DOUBLE_MAT3: c_int = 0x8F47;
pub const GL_DOUBLE_MAT4: c_int = 0x8F48;
pub const GL_DOUBLE_MAT2x3: c_int = 0x8F49;
pub const GL_DOUBLE_MAT2x4: c_int = 0x8F4A;
pub const GL_DOUBLE_MAT3x2: c_int = 0x8F4B;
pub const GL_DOUBLE_MAT3x4: c_int = 0x8F4C;
pub const GL_DOUBLE_MAT4x2: c_int = 0x8F4D;
pub const GL_DOUBLE_MAT4x3: c_int = 0x8F4E;
pub const GL_ACTIVE_SUBROUTINES: c_int = 0x8DE5;
pub const GL_ACTIVE_SUBROUTINE_UNIFORMS: c_int = 0x8DE6;
pub const GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS: c_int = 0x8E47;
pub const GL_ACTIVE_SUBROUTINE_MAX_LENGTH: c_int = 0x8E48;
pub const GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH: c_int = 0x8E49;
pub const GL_MAX_SUBROUTINES: c_int = 0x8DE7;
pub const GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS: c_int = 0x8DE8;
pub const GL_NUM_COMPATIBLE_SUBROUTINES: c_int = 0x8E4A;
pub const GL_COMPATIBLE_SUBROUTINES: c_int = 0x8E4B;
pub const GL_PATCHES: c_int = 0x000E;
pub const GL_PATCH_VERTICES: c_int = 0x8E72;
pub const GL_PATCH_DEFAULT_INNER_LEVEL: c_int = 0x8E73;
pub const GL_PATCH_DEFAULT_OUTER_LEVEL: c_int = 0x8E74;
pub const GL_TESS_CONTROL_OUTPUT_VERTICES: c_int = 0x8E75;
pub const GL_TESS_GEN_MODE: c_int = 0x8E76;
pub const GL_TESS_GEN_SPACING: c_int = 0x8E77;
pub const GL_TESS_GEN_VERTEX_ORDER: c_int = 0x8E78;
pub const GL_TESS_GEN_POINT_MODE: c_int = 0x8E79;
pub const GL_ISOLINES: c_int = 0x8E7A;
pub const GL_FRACTIONAL_ODD: c_int = 0x8E7B;
pub const GL_FRACTIONAL_EVEN: c_int = 0x8E7C;
pub const GL_MAX_PATCH_VERTICES: c_int = 0x8E7D;
pub const GL_MAX_TESS_GEN_LEVEL: c_int = 0x8E7E;
pub const GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS: c_int = 0x8E7F;
pub const GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS: c_int = 0x8E80;
pub const GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS: c_int = 0x8E81;
pub const GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS: c_int = 0x8E82;
pub const GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS: c_int = 0x8E83;
pub const GL_MAX_TESS_PATCH_COMPONENTS: c_int = 0x8E84;
pub const GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS: c_int = 0x8E85;
pub const GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS: c_int = 0x8E86;
pub const GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS: c_int = 0x8E89;
pub const GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS: c_int = 0x8E8A;
pub const GL_MAX_TESS_CONTROL_INPUT_COMPONENTS: c_int = 0x886C;
pub const GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS: c_int = 0x886D;
pub const GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS: c_int = 0x8E1E;
pub const GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS: c_int = 0x8E1F;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER: c_int = 0x84F0;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER: c_int = 0x84F1;
pub const GL_TESS_EVALUATION_SHADER: c_int = 0x8E87;
pub const GL_TESS_CONTROL_SHADER: c_int = 0x8E88;
pub const GL_TRANSFORM_FEEDBACK: c_int = 0x8E22;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED: c_int = 0x8E23;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE: c_int = 0x8E24;
pub const GL_TRANSFORM_FEEDBACK_BINDING: c_int = 0x8E25;
pub const GL_MAX_TRANSFORM_FEEDBACK_BUFFERS: c_int = 0x8E70;
pub const GL_FIXED: c_int = 0x140C;
pub const GL_IMPLEMENTATION_COLOR_READ_TYPE: c_int = 0x8B9A;
pub const GL_IMPLEMENTATION_COLOR_READ_FORMAT: c_int = 0x8B9B;
pub const GL_LOW_FLOAT: c_int = 0x8DF0;
pub const GL_MEDIUM_FLOAT: c_int = 0x8DF1;
pub const GL_HIGH_FLOAT: c_int = 0x8DF2;
pub const GL_LOW_INT: c_int = 0x8DF3;
pub const GL_MEDIUM_INT: c_int = 0x8DF4;
pub const GL_HIGH_INT: c_int = 0x8DF5;
pub const GL_SHADER_COMPILER: c_int = 0x8DFA;
pub const GL_SHADER_BINARY_FORMATS: c_int = 0x8DF8;
pub const GL_NUM_SHADER_BINARY_FORMATS: c_int = 0x8DF9;
pub const GL_MAX_VERTEX_UNIFORM_VECTORS: c_int = 0x8DFB;
pub const GL_MAX_VARYING_VECTORS: c_int = 0x8DFC;
pub const GL_MAX_FRAGMENT_UNIFORM_VECTORS: c_int = 0x8DFD;
pub const GL_RGB565: c_int = 0x8D62;
pub const GL_PROGRAM_BINARY_RETRIEVABLE_HINT: c_int = 0x8257;
pub const GL_PROGRAM_BINARY_LENGTH: c_int = 0x8741;
pub const GL_NUM_PROGRAM_BINARY_FORMATS: c_int = 0x87FE;
pub const GL_PROGRAM_BINARY_FORMATS: c_int = 0x87FF;
pub const GL_VERTEX_SHADER_BIT: c_int = 0x00000001;
pub const GL_FRAGMENT_SHADER_BIT: c_int = 0x00000002;
pub const GL_GEOMETRY_SHADER_BIT: c_int = 0x00000004;
pub const GL_TESS_CONTROL_SHADER_BIT: c_int = 0x00000008;
pub const GL_TESS_EVALUATION_SHADER_BIT: c_int = 0x00000010;
pub const GL_ALL_SHADER_BITS: c_int = 0xFFFFFFFF;
pub const GL_PROGRAM_SEPARABLE: c_int = 0x8258;
pub const GL_ACTIVE_PROGRAM: c_int = 0x8259;
pub const GL_PROGRAM_PIPELINE_BINDING: c_int = 0x825A;
pub const GL_MAX_VIEWPORTS: c_int = 0x825B;
pub const GL_VIEWPORT_SUBPIXEL_BITS: c_int = 0x825C;
pub const GL_VIEWPORT_BOUNDS_RANGE: c_int = 0x825D;
pub const GL_LAYER_PROVOKING_VERTEX: c_int = 0x825E;
pub const GL_VIEWPORT_INDEX_PROVOKING_VERTEX: c_int = 0x825F;
pub const GL_UNDEFINED_VERTEX: c_int = 0x8260;
pub const GL_COPY_READ_BUFFER_BINDING: c_int = 0x8F36;
pub const GL_COPY_WRITE_BUFFER_BINDING: c_int = 0x8F37;
pub const GL_TRANSFORM_FEEDBACK_ACTIVE: c_int = 0x8E24;
pub const GL_TRANSFORM_FEEDBACK_PAUSED: c_int = 0x8E23;
pub const GL_UNPACK_COMPRESSED_BLOCK_WIDTH: c_int = 0x9127;
pub const GL_UNPACK_COMPRESSED_BLOCK_HEIGHT: c_int = 0x9128;
pub const GL_UNPACK_COMPRESSED_BLOCK_DEPTH: c_int = 0x9129;
pub const GL_UNPACK_COMPRESSED_BLOCK_SIZE: c_int = 0x912A;
pub const GL_PACK_COMPRESSED_BLOCK_WIDTH: c_int = 0x912B;
pub const GL_PACK_COMPRESSED_BLOCK_HEIGHT: c_int = 0x912C;
pub const GL_PACK_COMPRESSED_BLOCK_DEPTH: c_int = 0x912D;
pub const GL_PACK_COMPRESSED_BLOCK_SIZE: c_int = 0x912E;
pub const GL_NUM_SAMPLE_COUNTS: c_int = 0x9380;
pub const GL_MIN_MAP_BUFFER_ALIGNMENT: c_int = 0x90BC;
pub const GL_ATOMIC_COUNTER_BUFFER: c_int = 0x92C0;
pub const GL_ATOMIC_COUNTER_BUFFER_BINDING: c_int = 0x92C1;
pub const GL_ATOMIC_COUNTER_BUFFER_START: c_int = 0x92C2;
pub const GL_ATOMIC_COUNTER_BUFFER_SIZE: c_int = 0x92C3;
pub const GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE: c_int = 0x92C4;
pub const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS: c_int = 0x92C5;
pub const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES: c_int = 0x92C6;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER: c_int = 0x92C7;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER: c_int = 0x92C8;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER: c_int = 0x92C9;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER: c_int = 0x92CA;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER: c_int = 0x92CB;
pub const GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS: c_int = 0x92CC;
pub const GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS: c_int = 0x92CD;
pub const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS: c_int = 0x92CE;
pub const GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS: c_int = 0x92CF;
pub const GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS: c_int = 0x92D0;
pub const GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS: c_int = 0x92D1;
pub const GL_MAX_VERTEX_ATOMIC_COUNTERS: c_int = 0x92D2;
pub const GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS: c_int = 0x92D3;
pub const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS: c_int = 0x92D4;
pub const GL_MAX_GEOMETRY_ATOMIC_COUNTERS: c_int = 0x92D5;
pub const GL_MAX_FRAGMENT_ATOMIC_COUNTERS: c_int = 0x92D6;
pub const GL_MAX_COMBINED_ATOMIC_COUNTERS: c_int = 0x92D7;
pub const GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE: c_int = 0x92D8;
pub const GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS: c_int = 0x92DC;
pub const GL_ACTIVE_ATOMIC_COUNTER_BUFFERS: c_int = 0x92D9;
pub const GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX: c_int = 0x92DA;
pub const GL_UNSIGNED_INT_ATOMIC_COUNTER: c_int = 0x92DB;
pub const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT: c_int = 0x00000001;
pub const GL_ELEMENT_ARRAY_BARRIER_BIT: c_int = 0x00000002;
pub const GL_UNIFORM_BARRIER_BIT: c_int = 0x00000004;
pub const GL_TEXTURE_FETCH_BARRIER_BIT: c_int = 0x00000008;
pub const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT: c_int = 0x00000020;
pub const GL_COMMAND_BARRIER_BIT: c_int = 0x00000040;
pub const GL_PIXEL_BUFFER_BARRIER_BIT: c_int = 0x00000080;
pub const GL_TEXTURE_UPDATE_BARRIER_BIT: c_int = 0x00000100;
pub const GL_BUFFER_UPDATE_BARRIER_BIT: c_int = 0x00000200;
pub const GL_FRAMEBUFFER_BARRIER_BIT: c_int = 0x00000400;
pub const GL_TRANSFORM_FEEDBACK_BARRIER_BIT: c_int = 0x00000800;
pub const GL_ATOMIC_COUNTER_BARRIER_BIT: c_int = 0x00001000;
pub const GL_ALL_BARRIER_BITS: c_int = 0xFFFFFFFF;
pub const GL_MAX_IMAGE_UNITS: c_int = 0x8F38;
pub const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS: c_int = 0x8F39;
pub const GL_IMAGE_BINDING_NAME: c_int = 0x8F3A;
pub const GL_IMAGE_BINDING_LEVEL: c_int = 0x8F3B;
pub const GL_IMAGE_BINDING_LAYERED: c_int = 0x8F3C;
pub const GL_IMAGE_BINDING_LAYER: c_int = 0x8F3D;
pub const GL_IMAGE_BINDING_ACCESS: c_int = 0x8F3E;
pub const GL_IMAGE_1D: c_int = 0x904C;
pub const GL_IMAGE_2D: c_int = 0x904D;
pub const GL_IMAGE_3D: c_int = 0x904E;
pub const GL_IMAGE_2D_RECT: c_int = 0x904F;
pub const GL_IMAGE_CUBE: c_int = 0x9050;
pub const GL_IMAGE_BUFFER: c_int = 0x9051;
pub const GL_IMAGE_1D_ARRAY: c_int = 0x9052;
pub const GL_IMAGE_2D_ARRAY: c_int = 0x9053;
pub const GL_IMAGE_CUBE_MAP_ARRAY: c_int = 0x9054;
pub const GL_IMAGE_2D_MULTISAMPLE: c_int = 0x9055;
pub const GL_IMAGE_2D_MULTISAMPLE_ARRAY: c_int = 0x9056;
pub const GL_INT_IMAGE_1D: c_int = 0x9057;
pub const GL_INT_IMAGE_2D: c_int = 0x9058;
pub const GL_INT_IMAGE_3D: c_int = 0x9059;
pub const GL_INT_IMAGE_2D_RECT: c_int = 0x905A;
pub const GL_INT_IMAGE_CUBE: c_int = 0x905B;
pub const GL_INT_IMAGE_BUFFER: c_int = 0x905C;
pub const GL_INT_IMAGE_1D_ARRAY: c_int = 0x905D;
pub const GL_INT_IMAGE_2D_ARRAY: c_int = 0x905E;
pub const GL_INT_IMAGE_CUBE_MAP_ARRAY: c_int = 0x905F;
pub const GL_INT_IMAGE_2D_MULTISAMPLE: c_int = 0x9060;
pub const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY: c_int = 0x9061;
pub const GL_UNSIGNED_INT_IMAGE_1D: c_int = 0x9062;
pub const GL_UNSIGNED_INT_IMAGE_2D: c_int = 0x9063;
pub const GL_UNSIGNED_INT_IMAGE_3D: c_int = 0x9064;
pub const GL_UNSIGNED_INT_IMAGE_2D_RECT: c_int = 0x9065;
pub const GL_UNSIGNED_INT_IMAGE_CUBE: c_int = 0x9066;
pub const GL_UNSIGNED_INT_IMAGE_BUFFER: c_int = 0x9067;
pub const GL_UNSIGNED_INT_IMAGE_1D_ARRAY: c_int = 0x9068;
pub const GL_UNSIGNED_INT_IMAGE_2D_ARRAY: c_int = 0x9069;
pub const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY: c_int = 0x906A;
pub const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE: c_int = 0x906B;
pub const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY: c_int = 0x906C;
pub const GL_MAX_IMAGE_SAMPLES: c_int = 0x906D;
pub const GL_IMAGE_BINDING_FORMAT: c_int = 0x906E;
pub const GL_IMAGE_FORMAT_COMPATIBILITY_TYPE: c_int = 0x90C7;
pub const GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE: c_int = 0x90C8;
pub const GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS: c_int = 0x90C9;
pub const GL_MAX_VERTEX_IMAGE_UNIFORMS: c_int = 0x90CA;
pub const GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS: c_int = 0x90CB;
pub const GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS: c_int = 0x90CC;
pub const GL_MAX_GEOMETRY_IMAGE_UNIFORMS: c_int = 0x90CD;
pub const GL_MAX_FRAGMENT_IMAGE_UNIFORMS: c_int = 0x90CE;
pub const GL_MAX_COMBINED_IMAGE_UNIFORMS: c_int = 0x90CF;
pub const GL_COMPRESSED_RGBA_BPTC_UNORM: c_int = 0x8E8C;
pub const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM: c_int = 0x8E8D;
pub const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT: c_int = 0x8E8E;
pub const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT: c_int = 0x8E8F;
pub const GL_TEXTURE_IMMUTABLE_FORMAT: c_int = 0x912F;
pub const GL_NUM_SHADING_LANGUAGE_VERSIONS: c_int = 0x82E9;
pub const GL_VERTEX_ATTRIB_ARRAY_LONG: c_int = 0x874E;
pub const GL_COMPRESSED_RGB8_ETC2: c_int = 0x9274;
pub const GL_COMPRESSED_SRGB8_ETC2: c_int = 0x9275;
pub const GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2: c_int = 0x9276;
pub const GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2: c_int = 0x9277;
pub const GL_COMPRESSED_RGBA8_ETC2_EAC: c_int = 0x9278;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC: c_int = 0x9279;
pub const GL_COMPRESSED_R11_EAC: c_int = 0x9270;
pub const GL_COMPRESSED_SIGNED_R11_EAC: c_int = 0x9271;
pub const GL_COMPRESSED_RG11_EAC: c_int = 0x9272;
pub const GL_COMPRESSED_SIGNED_RG11_EAC: c_int = 0x9273;
pub const GL_PRIMITIVE_RESTART_FIXED_INDEX: c_int = 0x8D69;
pub const GL_ANY_SAMPLES_PASSED_CONSERVATIVE: c_int = 0x8D6A;
pub const GL_MAX_ELEMENT_INDEX: c_int = 0x8D6B;
pub const GL_COMPUTE_SHADER: c_int = 0x91B9;
pub const GL_MAX_COMPUTE_UNIFORM_BLOCKS: c_int = 0x91BB;
pub const GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS: c_int = 0x91BC;
pub const GL_MAX_COMPUTE_IMAGE_UNIFORMS: c_int = 0x91BD;
pub const GL_MAX_COMPUTE_SHARED_MEMORY_SIZE: c_int = 0x8262;
pub const GL_MAX_COMPUTE_UNIFORM_COMPONENTS: c_int = 0x8263;
pub const GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS: c_int = 0x8264;
pub const GL_MAX_COMPUTE_ATOMIC_COUNTERS: c_int = 0x8265;
pub const GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS: c_int = 0x8266;
pub const GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS: c_int = 0x90EB;
pub const GL_MAX_COMPUTE_WORK_GROUP_COUNT: c_int = 0x91BE;
pub const GL_MAX_COMPUTE_WORK_GROUP_SIZE: c_int = 0x91BF;
pub const GL_COMPUTE_WORK_GROUP_SIZE: c_int = 0x8267;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER: c_int = 0x90EC;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER: c_int = 0x90ED;
pub const GL_DISPATCH_INDIRECT_BUFFER: c_int = 0x90EE;
pub const GL_DISPATCH_INDIRECT_BUFFER_BINDING: c_int = 0x90EF;
pub const GL_COMPUTE_SHADER_BIT: c_int = 0x00000020;
pub const GL_DEBUG_OUTPUT_SYNCHRONOUS: c_int = 0x8242;
pub const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH: c_int = 0x8243;
pub const GL_DEBUG_CALLBACK_FUNCTION: c_int = 0x8244;
pub const GL_DEBUG_CALLBACK_USER_PARAM: c_int = 0x8245;
pub const GL_DEBUG_SOURCE_API: c_int = 0x8246;
pub const GL_DEBUG_SOURCE_WINDOW_SYSTEM: c_int = 0x8247;
pub const GL_DEBUG_SOURCE_SHADER_COMPILER: c_int = 0x8248;
pub const GL_DEBUG_SOURCE_THIRD_PARTY: c_int = 0x8249;
pub const GL_DEBUG_SOURCE_APPLICATION: c_int = 0x824A;
pub const GL_DEBUG_SOURCE_OTHER: c_int = 0x824B;
pub const GL_DEBUG_TYPE_ERROR: c_int = 0x824C;
pub const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR: c_int = 0x824D;
pub const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR: c_int = 0x824E;
pub const GL_DEBUG_TYPE_PORTABILITY: c_int = 0x824F;
pub const GL_DEBUG_TYPE_PERFORMANCE: c_int = 0x8250;
pub const GL_DEBUG_TYPE_OTHER: c_int = 0x8251;
pub const GL_MAX_DEBUG_MESSAGE_LENGTH: c_int = 0x9143;
pub const GL_MAX_DEBUG_LOGGED_MESSAGES: c_int = 0x9144;
pub const GL_DEBUG_LOGGED_MESSAGES: c_int = 0x9145;
pub const GL_DEBUG_SEVERITY_HIGH: c_int = 0x9146;
pub const GL_DEBUG_SEVERITY_MEDIUM: c_int = 0x9147;
pub const GL_DEBUG_SEVERITY_LOW: c_int = 0x9148;
pub const GL_DEBUG_TYPE_MARKER: c_int = 0x8268;
pub const GL_DEBUG_TYPE_PUSH_GROUP: c_int = 0x8269;
pub const GL_DEBUG_TYPE_POP_GROUP: c_int = 0x826A;
pub const GL_DEBUG_SEVERITY_NOTIFICATION: c_int = 0x826B;
pub const GL_MAX_DEBUG_GROUP_STACK_DEPTH: c_int = 0x826C;
pub const GL_DEBUG_GROUP_STACK_DEPTH: c_int = 0x826D;
pub const GL_BUFFER: c_int = 0x82E0;
pub const GL_SHADER: c_int = 0x82E1;
pub const GL_PROGRAM: c_int = 0x82E2;
pub const GL_QUERY: c_int = 0x82E3;
pub const GL_PROGRAM_PIPELINE: c_int = 0x82E4;
pub const GL_SAMPLER: c_int = 0x82E6;
pub const GL_MAX_LABEL_LENGTH: c_int = 0x82E8;
pub const GL_DEBUG_OUTPUT: c_int = 0x92E0;
pub const GL_CONTEXT_FLAG_DEBUG_BIT: c_int = 0x00000002;
pub const GL_MAX_UNIFORM_LOCATIONS: c_int = 0x826E;
pub const GL_FRAMEBUFFER_DEFAULT_WIDTH: c_int = 0x9310;
pub const GL_FRAMEBUFFER_DEFAULT_HEIGHT: c_int = 0x9311;
pub const GL_FRAMEBUFFER_DEFAULT_LAYERS: c_int = 0x9312;
pub const GL_FRAMEBUFFER_DEFAULT_SAMPLES: c_int = 0x9313;
pub const GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS: c_int = 0x9314;
pub const GL_MAX_FRAMEBUFFER_WIDTH: c_int = 0x9315;
pub const GL_MAX_FRAMEBUFFER_HEIGHT: c_int = 0x9316;
pub const GL_MAX_FRAMEBUFFER_LAYERS: c_int = 0x9317;
pub const GL_MAX_FRAMEBUFFER_SAMPLES: c_int = 0x9318;
pub const GL_INTERNALFORMAT_SUPPORTED: c_int = 0x826F;
pub const GL_INTERNALFORMAT_PREFERRED: c_int = 0x8270;
pub const GL_INTERNALFORMAT_RED_SIZE: c_int = 0x8271;
pub const GL_INTERNALFORMAT_GREEN_SIZE: c_int = 0x8272;
pub const GL_INTERNALFORMAT_BLUE_SIZE: c_int = 0x8273;
pub const GL_INTERNALFORMAT_ALPHA_SIZE: c_int = 0x8274;
pub const GL_INTERNALFORMAT_DEPTH_SIZE: c_int = 0x8275;
pub const GL_INTERNALFORMAT_STENCIL_SIZE: c_int = 0x8276;
pub const GL_INTERNALFORMAT_SHARED_SIZE: c_int = 0x8277;
pub const GL_INTERNALFORMAT_RED_TYPE: c_int = 0x8278;
pub const GL_INTERNALFORMAT_GREEN_TYPE: c_int = 0x8279;
pub const GL_INTERNALFORMAT_BLUE_TYPE: c_int = 0x827A;
pub const GL_INTERNALFORMAT_ALPHA_TYPE: c_int = 0x827B;
pub const GL_INTERNALFORMAT_DEPTH_TYPE: c_int = 0x827C;
pub const GL_INTERNALFORMAT_STENCIL_TYPE: c_int = 0x827D;
pub const GL_MAX_WIDTH: c_int = 0x827E;
pub const GL_MAX_HEIGHT: c_int = 0x827F;
pub const GL_MAX_DEPTH: c_int = 0x8280;
pub const GL_MAX_LAYERS: c_int = 0x8281;
pub const GL_MAX_COMBINED_DIMENSIONS: c_int = 0x8282;
pub const GL_COLOR_COMPONENTS: c_int = 0x8283;
pub const GL_DEPTH_COMPONENTS: c_int = 0x8284;
pub const GL_STENCIL_COMPONENTS: c_int = 0x8285;
pub const GL_COLOR_RENDERABLE: c_int = 0x8286;
pub const GL_DEPTH_RENDERABLE: c_int = 0x8287;
pub const GL_STENCIL_RENDERABLE: c_int = 0x8288;
pub const GL_FRAMEBUFFER_RENDERABLE: c_int = 0x8289;
pub const GL_FRAMEBUFFER_RENDERABLE_LAYERED: c_int = 0x828A;
pub const GL_FRAMEBUFFER_BLEND: c_int = 0x828B;
pub const GL_READ_PIXELS: c_int = 0x828C;
pub const GL_READ_PIXELS_FORMAT: c_int = 0x828D;
pub const GL_READ_PIXELS_TYPE: c_int = 0x828E;
pub const GL_TEXTURE_IMAGE_FORMAT: c_int = 0x828F;
pub const GL_TEXTURE_IMAGE_TYPE: c_int = 0x8290;
pub const GL_GET_TEXTURE_IMAGE_FORMAT: c_int = 0x8291;
pub const GL_GET_TEXTURE_IMAGE_TYPE: c_int = 0x8292;
pub const GL_MIPMAP: c_int = 0x8293;
pub const GL_MANUAL_GENERATE_MIPMAP: c_int = 0x8294;
pub const GL_AUTO_GENERATE_MIPMAP: c_int = 0x8295;
pub const GL_COLOR_ENCODING: c_int = 0x8296;
pub const GL_SRGB_READ: c_int = 0x8297;
pub const GL_SRGB_WRITE: c_int = 0x8298;
pub const GL_FILTER: c_int = 0x829A;
pub const GL_VERTEX_TEXTURE: c_int = 0x829B;
pub const GL_TESS_CONTROL_TEXTURE: c_int = 0x829C;
pub const GL_TESS_EVALUATION_TEXTURE: c_int = 0x829D;
pub const GL_GEOMETRY_TEXTURE: c_int = 0x829E;
pub const GL_FRAGMENT_TEXTURE: c_int = 0x829F;
pub const GL_COMPUTE_TEXTURE: c_int = 0x82A0;
pub const GL_TEXTURE_SHADOW: c_int = 0x82A1;
pub const GL_TEXTURE_GATHER: c_int = 0x82A2;
pub const GL_TEXTURE_GATHER_SHADOW: c_int = 0x82A3;
pub const GL_SHADER_IMAGE_LOAD: c_int = 0x82A4;
pub const GL_SHADER_IMAGE_STORE: c_int = 0x82A5;
pub const GL_SHADER_IMAGE_ATOMIC: c_int = 0x82A6;
pub const GL_IMAGE_TEXEL_SIZE: c_int = 0x82A7;
pub const GL_IMAGE_COMPATIBILITY_CLASS: c_int = 0x82A8;
pub const GL_IMAGE_PIXEL_FORMAT: c_int = 0x82A9;
pub const GL_IMAGE_PIXEL_TYPE: c_int = 0x82AA;
pub const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST: c_int = 0x82AC;
pub const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST: c_int = 0x82AD;
pub const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE: c_int = 0x82AE;
pub const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE: c_int = 0x82AF;
pub const GL_TEXTURE_COMPRESSED_BLOCK_WIDTH: c_int = 0x82B1;
pub const GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT: c_int = 0x82B2;
pub const GL_TEXTURE_COMPRESSED_BLOCK_SIZE: c_int = 0x82B3;
pub const GL_CLEAR_BUFFER: c_int = 0x82B4;
pub const GL_TEXTURE_VIEW: c_int = 0x82B5;
pub const GL_VIEW_COMPATIBILITY_CLASS: c_int = 0x82B6;
pub const GL_FULL_SUPPORT: c_int = 0x82B7;
pub const GL_CAVEAT_SUPPORT: c_int = 0x82B8;
pub const GL_IMAGE_CLASS_4_X_32: c_int = 0x82B9;
pub const GL_IMAGE_CLASS_2_X_32: c_int = 0x82BA;
pub const GL_IMAGE_CLASS_1_X_32: c_int = 0x82BB;
pub const GL_IMAGE_CLASS_4_X_16: c_int = 0x82BC;
pub const GL_IMAGE_CLASS_2_X_16: c_int = 0x82BD;
pub const GL_IMAGE_CLASS_1_X_16: c_int = 0x82BE;
pub const GL_IMAGE_CLASS_4_X_8: c_int = 0x82BF;
pub const GL_IMAGE_CLASS_2_X_8: c_int = 0x82C0;
pub const GL_IMAGE_CLASS_1_X_8: c_int = 0x82C1;
pub const GL_IMAGE_CLASS_11_11_10: c_int = 0x82C2;
pub const GL_IMAGE_CLASS_10_10_10_2: c_int = 0x82C3;
pub const GL_VIEW_CLASS_128_BITS: c_int = 0x82C4;
pub const GL_VIEW_CLASS_96_BITS: c_int = 0x82C5;
pub const GL_VIEW_CLASS_64_BITS: c_int = 0x82C6;
pub const GL_VIEW_CLASS_48_BITS: c_int = 0x82C7;
pub const GL_VIEW_CLASS_32_BITS: c_int = 0x82C8;
pub const GL_VIEW_CLASS_24_BITS: c_int = 0x82C9;
pub const GL_VIEW_CLASS_16_BITS: c_int = 0x82CA;
pub const GL_VIEW_CLASS_8_BITS: c_int = 0x82CB;
pub const GL_VIEW_CLASS_S3TC_DXT1_RGB: c_int = 0x82CC;
pub const GL_VIEW_CLASS_S3TC_DXT1_RGBA: c_int = 0x82CD;
pub const GL_VIEW_CLASS_S3TC_DXT3_RGBA: c_int = 0x82CE;
pub const GL_VIEW_CLASS_S3TC_DXT5_RGBA: c_int = 0x82CF;
pub const GL_VIEW_CLASS_RGTC1_RED: c_int = 0x82D0;
pub const GL_VIEW_CLASS_RGTC2_RG: c_int = 0x82D1;
pub const GL_VIEW_CLASS_BPTC_UNORM: c_int = 0x82D2;
pub const GL_VIEW_CLASS_BPTC_FLOAT: c_int = 0x82D3;
pub const GL_UNIFORM: c_int = 0x92E1;
pub const GL_UNIFORM_BLOCK: c_int = 0x92E2;
pub const GL_PROGRAM_INPUT: c_int = 0x92E3;
pub const GL_PROGRAM_OUTPUT: c_int = 0x92E4;
pub const GL_BUFFER_VARIABLE: c_int = 0x92E5;
pub const GL_SHADER_STORAGE_BLOCK: c_int = 0x92E6;
pub const GL_VERTEX_SUBROUTINE: c_int = 0x92E8;
pub const GL_TESS_CONTROL_SUBROUTINE: c_int = 0x92E9;
pub const GL_TESS_EVALUATION_SUBROUTINE: c_int = 0x92EA;
pub const GL_GEOMETRY_SUBROUTINE: c_int = 0x92EB;
pub const GL_FRAGMENT_SUBROUTINE: c_int = 0x92EC;
pub const GL_COMPUTE_SUBROUTINE: c_int = 0x92ED;
pub const GL_VERTEX_SUBROUTINE_UNIFORM: c_int = 0x92EE;
pub const GL_TESS_CONTROL_SUBROUTINE_UNIFORM: c_int = 0x92EF;
pub const GL_TESS_EVALUATION_SUBROUTINE_UNIFORM: c_int = 0x92F0;
pub const GL_GEOMETRY_SUBROUTINE_UNIFORM: c_int = 0x92F1;
pub const GL_FRAGMENT_SUBROUTINE_UNIFORM: c_int = 0x92F2;
pub const GL_COMPUTE_SUBROUTINE_UNIFORM: c_int = 0x92F3;
pub const GL_TRANSFORM_FEEDBACK_VARYING: c_int = 0x92F4;
pub const GL_ACTIVE_RESOURCES: c_int = 0x92F5;
pub const GL_MAX_NAME_LENGTH: c_int = 0x92F6;
pub const GL_MAX_NUM_ACTIVE_VARIABLES: c_int = 0x92F7;
pub const GL_MAX_NUM_COMPATIBLE_SUBROUTINES: c_int = 0x92F8;
pub const GL_NAME_LENGTH: c_int = 0x92F9;
pub const GL_TYPE: c_int = 0x92FA;
pub const GL_ARRAY_SIZE: c_int = 0x92FB;
pub const GL_OFFSET: c_int = 0x92FC;
pub const GL_BLOCK_INDEX: c_int = 0x92FD;
pub const GL_ARRAY_STRIDE: c_int = 0x92FE;
pub const GL_MATRIX_STRIDE: c_int = 0x92FF;
pub const GL_IS_ROW_MAJOR: c_int = 0x9300;
pub const GL_ATOMIC_COUNTER_BUFFER_INDEX: c_int = 0x9301;
pub const GL_BUFFER_BINDING: c_int = 0x9302;
pub const GL_BUFFER_DATA_SIZE: c_int = 0x9303;
pub const GL_NUM_ACTIVE_VARIABLES: c_int = 0x9304;
pub const GL_ACTIVE_VARIABLES: c_int = 0x9305;
pub const GL_REFERENCED_BY_VERTEX_SHADER: c_int = 0x9306;
pub const GL_REFERENCED_BY_TESS_CONTROL_SHADER: c_int = 0x9307;
pub const GL_REFERENCED_BY_TESS_EVALUATION_SHADER: c_int = 0x9308;
pub const GL_REFERENCED_BY_GEOMETRY_SHADER: c_int = 0x9309;
pub const GL_REFERENCED_BY_FRAGMENT_SHADER: c_int = 0x930A;
pub const GL_REFERENCED_BY_COMPUTE_SHADER: c_int = 0x930B;
pub const GL_TOP_LEVEL_ARRAY_SIZE: c_int = 0x930C;
pub const GL_TOP_LEVEL_ARRAY_STRIDE: c_int = 0x930D;
pub const GL_LOCATION: c_int = 0x930E;
pub const GL_LOCATION_INDEX: c_int = 0x930F;
pub const GL_IS_PER_PATCH: c_int = 0x92E7;
pub const GL_SHADER_STORAGE_BUFFER: c_int = 0x90D2;
pub const GL_SHADER_STORAGE_BUFFER_BINDING: c_int = 0x90D3;
pub const GL_SHADER_STORAGE_BUFFER_START: c_int = 0x90D4;
pub const GL_SHADER_STORAGE_BUFFER_SIZE: c_int = 0x90D5;
pub const GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS: c_int = 0x90D6;
pub const GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS: c_int = 0x90D7;
pub const GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS: c_int = 0x90D8;
pub const GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS: c_int = 0x90D9;
pub const GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS: c_int = 0x90DA;
pub const GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS: c_int = 0x90DB;
pub const GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS: c_int = 0x90DC;
pub const GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS: c_int = 0x90DD;
pub const GL_MAX_SHADER_STORAGE_BLOCK_SIZE: c_int = 0x90DE;
pub const GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT: c_int = 0x90DF;
pub const GL_SHADER_STORAGE_BARRIER_BIT: c_int = 0x00002000;
pub const GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES: c_int = 0x8F39;
pub const GL_DEPTH_STENCIL_TEXTURE_MODE: c_int = 0x90EA;
pub const GL_TEXTURE_BUFFER_OFFSET: c_int = 0x919D;
pub const GL_TEXTURE_BUFFER_SIZE: c_int = 0x919E;
pub const GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT: c_int = 0x919F;
pub const GL_TEXTURE_VIEW_MIN_LEVEL: c_int = 0x82DB;
pub const GL_TEXTURE_VIEW_NUM_LEVELS: c_int = 0x82DC;
pub const GL_TEXTURE_VIEW_MIN_LAYER: c_int = 0x82DD;
pub const GL_TEXTURE_VIEW_NUM_LAYERS: c_int = 0x82DE;
pub const GL_TEXTURE_IMMUTABLE_LEVELS: c_int = 0x82DF;
pub const GL_VERTEX_ATTRIB_BINDING: c_int = 0x82D4;
pub const GL_VERTEX_ATTRIB_RELATIVE_OFFSET: c_int = 0x82D5;
pub const GL_VERTEX_BINDING_DIVISOR: c_int = 0x82D6;
pub const GL_VERTEX_BINDING_OFFSET: c_int = 0x82D7;
pub const GL_VERTEX_BINDING_STRIDE: c_int = 0x82D8;
pub const GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET: c_int = 0x82D9;
pub const GL_MAX_VERTEX_ATTRIB_BINDINGS: c_int = 0x82DA;
pub const GL_VERTEX_BINDING_BUFFER: c_int = 0x8F4F;
pub const GL_MAX_VERTEX_ATTRIB_STRIDE: c_int = 0x82E5;
pub const GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED: c_int = 0x8221;
pub const GL_TEXTURE_BUFFER_BINDING: c_int = 0x8C2A;
pub const GL_MAP_PERSISTENT_BIT: c_int = 0x0040;
pub const GL_MAP_COHERENT_BIT: c_int = 0x0080;
pub const GL_DYNAMIC_STORAGE_BIT: c_int = 0x0100;
pub const GL_CLIENT_STORAGE_BIT: c_int = 0x0200;
pub const GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT: c_int = 0x00004000;
pub const GL_BUFFER_IMMUTABLE_STORAGE: c_int = 0x821F;
pub const GL_BUFFER_STORAGE_FLAGS: c_int = 0x8220;
pub const GL_CLEAR_TEXTURE: c_int = 0x9365;
pub const GL_LOCATION_COMPONENT: c_int = 0x934A;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_INDEX: c_int = 0x934B;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE: c_int = 0x934C;
pub const GL_QUERY_BUFFER: c_int = 0x9192;
pub const GL_QUERY_BUFFER_BARRIER_BIT: c_int = 0x00008000;
pub const GL_QUERY_BUFFER_BINDING: c_int = 0x9193;
pub const GL_QUERY_RESULT_NO_WAIT: c_int = 0x9194;
pub const GL_MIRROR_CLAMP_TO_EDGE: c_int = 0x8743;
pub const GL_CONTEXT_LOST: c_int = 0x0507;
pub const GL_NEGATIVE_ONE_TO_ONE: c_int = 0x935E;
pub const GL_ZERO_TO_ONE: c_int = 0x935F;
pub const GL_CLIP_ORIGIN: c_int = 0x935C;
pub const GL_CLIP_DEPTH_MODE: c_int = 0x935D;
pub const GL_QUERY_WAIT_INVERTED: c_int = 0x8E17;
pub const GL_QUERY_NO_WAIT_INVERTED: c_int = 0x8E18;
pub const GL_QUERY_BY_REGION_WAIT_INVERTED: c_int = 0x8E19;
pub const GL_QUERY_BY_REGION_NO_WAIT_INVERTED: c_int = 0x8E1A;
pub const GL_MAX_CULL_DISTANCES: c_int = 0x82F9;
pub const GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES: c_int = 0x82FA;
pub const GL_TEXTURE_TARGET: c_int = 0x1006;
pub const GL_QUERY_TARGET: c_int = 0x82EA;
pub const GL_GUILTY_CONTEXT_RESET: c_int = 0x8253;
pub const GL_INNOCENT_CONTEXT_RESET: c_int = 0x8254;
pub const GL_UNKNOWN_CONTEXT_RESET: c_int = 0x8255;
pub const GL_RESET_NOTIFICATION_STRATEGY: c_int = 0x8256;
pub const GL_LOSE_CONTEXT_ON_RESET: c_int = 0x8252;
pub const GL_NO_RESET_NOTIFICATION: c_int = 0x8261;
pub const GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT: c_int = 0x00000004;
pub const GL_CONTEXT_RELEASE_BEHAVIOR: c_int = 0x82FB;
pub const GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH: c_int = 0x82FC;
pub const GL_SHADER_BINARY_FORMAT_SPIR_V: c_int = 0x9551;
pub const GL_SPIR_V_BINARY: c_int = 0x9552;
pub const GL_PARAMETER_BUFFER: c_int = 0x80EE;
pub const GL_PARAMETER_BUFFER_BINDING: c_int = 0x80EF;
pub const GL_CONTEXT_FLAG_NO_ERROR_BIT: c_int = 0x00000008;
pub const GL_VERTICES_SUBMITTED: c_int = 0x82EE;
pub const GL_PRIMITIVES_SUBMITTED: c_int = 0x82EF;
pub const GL_VERTEX_SHADER_INVOCATIONS: c_int = 0x82F0;
pub const GL_TESS_CONTROL_SHADER_PATCHES: c_int = 0x82F1;
pub const GL_TESS_EVALUATION_SHADER_INVOCATIONS: c_int = 0x82F2;
pub const GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED: c_int = 0x82F3;
pub const GL_FRAGMENT_SHADER_INVOCATIONS: c_int = 0x82F4;
pub const GL_COMPUTE_SHADER_INVOCATIONS: c_int = 0x82F5;
pub const GL_CLIPPING_INPUT_PRIMITIVES: c_int = 0x82F6;
pub const GL_CLIPPING_OUTPUT_PRIMITIVES: c_int = 0x82F7;
pub const GL_POLYGON_OFFSET_CLAMP: c_int = 0x8E1B;
pub const GL_SPIR_V_EXTENSIONS: c_int = 0x9553;
pub const GL_NUM_SPIR_V_EXTENSIONS: c_int = 0x9554;
pub const GL_TEXTURE_MAX_ANISOTROPY: c_int = 0x84FE;
pub const GL_MAX_TEXTURE_MAX_ANISOTROPY: c_int = 0x84FF;
pub const GL_TRANSFORM_FEEDBACK_OVERFLOW: c_int = 0x82EC;
pub const GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW: c_int = 0x82ED;
pub const GL_ARB_ES2_compatibility: c_int = 1;
pub const GL_ARB_ES3_1_compatibility: c_int = 1;
pub const GL_ARB_ES3_2_compatibility: c_int = 1;
pub const GL_PRIMITIVE_BOUNDING_BOX_ARB: c_int = 0x92BE;
pub const GL_MULTISAMPLE_LINE_WIDTH_RANGE_ARB: c_int = 0x9381;
pub const GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY_ARB: c_int = 0x9382;
pub const GL_ARB_ES3_compatibility: c_int = 1;
pub const GL_ARB_arrays_of_arrays: c_int = 1;
pub const GL_ARB_base_instance: c_int = 1;
pub const GL_ARB_bindless_texture: c_int = 1;
pub const GL_UNSIGNED_INT64_ARB: c_int = 0x140F;
pub const GL_ARB_blend_func_extended: c_int = 1;
pub const GL_ARB_buffer_storage: c_int = 1;
pub const GL_ARB_cl_event: c_int = 1;
pub const GL_SYNC_CL_EVENT_ARB: c_int = 0x8240;
pub const GL_SYNC_CL_EVENT_COMPLETE_ARB: c_int = 0x8241;
pub const GL_ARB_clear_buffer_object: c_int = 1;
pub const GL_ARB_clear_texture: c_int = 1;
pub const GL_ARB_clip_control: c_int = 1;
pub const GL_ARB_compressed_texture_pixel_storage: c_int = 1;
pub const GL_ARB_compute_shader: c_int = 1;
pub const GL_ARB_compute_variable_group_size: c_int = 1;
pub const GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB: c_int = 0x9344;
pub const GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB: c_int = 0x90EB;
pub const GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB: c_int = 0x9345;
pub const GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB: c_int = 0x91BF;
pub const GL_ARB_conditional_render_inverted: c_int = 1;
pub const GL_ARB_conservative_depth: c_int = 1;
pub const GL_ARB_copy_buffer: c_int = 1;
pub const GL_ARB_copy_image: c_int = 1;
pub const GL_ARB_cull_distance: c_int = 1;
pub const GL_ARB_debug_output: c_int = 1;
pub const GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB: c_int = 0x8242;
pub const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB: c_int = 0x8243;
pub const GL_DEBUG_CALLBACK_FUNCTION_ARB: c_int = 0x8244;
pub const GL_DEBUG_CALLBACK_USER_PARAM_ARB: c_int = 0x8245;
pub const GL_DEBUG_SOURCE_API_ARB: c_int = 0x8246;
pub const GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB: c_int = 0x8247;
pub const GL_DEBUG_SOURCE_SHADER_COMPILER_ARB: c_int = 0x8248;
pub const GL_DEBUG_SOURCE_THIRD_PARTY_ARB: c_int = 0x8249;
pub const GL_DEBUG_SOURCE_APPLICATION_ARB: c_int = 0x824A;
pub const GL_DEBUG_SOURCE_OTHER_ARB: c_int = 0x824B;
pub const GL_DEBUG_TYPE_ERROR_ARB: c_int = 0x824C;
pub const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB: c_int = 0x824D;
pub const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB: c_int = 0x824E;
pub const GL_DEBUG_TYPE_PORTABILITY_ARB: c_int = 0x824F;
pub const GL_DEBUG_TYPE_PERFORMANCE_ARB: c_int = 0x8250;
pub const GL_DEBUG_TYPE_OTHER_ARB: c_int = 0x8251;
pub const GL_MAX_DEBUG_MESSAGE_LENGTH_ARB: c_int = 0x9143;
pub const GL_MAX_DEBUG_LOGGED_MESSAGES_ARB: c_int = 0x9144;
pub const GL_DEBUG_LOGGED_MESSAGES_ARB: c_int = 0x9145;
pub const GL_DEBUG_SEVERITY_HIGH_ARB: c_int = 0x9146;
pub const GL_DEBUG_SEVERITY_MEDIUM_ARB: c_int = 0x9147;
pub const GL_DEBUG_SEVERITY_LOW_ARB: c_int = 0x9148;
pub const GL_ARB_depth_buffer_float: c_int = 1;
pub const GL_ARB_depth_clamp: c_int = 1;
pub const GL_ARB_derivative_control: c_int = 1;
pub const GL_ARB_direct_state_access: c_int = 1;
pub const GL_ARB_draw_buffers_blend: c_int = 1;
pub const GL_ARB_draw_elements_base_vertex: c_int = 1;
pub const GL_ARB_draw_indirect: c_int = 1;
pub const GL_ARB_draw_instanced: c_int = 1;
pub const GL_ARB_enhanced_layouts: c_int = 1;
pub const GL_ARB_explicit_attrib_location: c_int = 1;
pub const GL_ARB_explicit_uniform_location: c_int = 1;
pub const GL_ARB_fragment_coord_conventions: c_int = 1;
pub const GL_ARB_fragment_layer_viewport: c_int = 1;
pub const GL_ARB_fragment_shader_interlock: c_int = 1;
pub const GL_ARB_framebuffer_no_attachments: c_int = 1;
pub const GL_ARB_framebuffer_object: c_int = 1;
pub const GL_ARB_framebuffer_sRGB: c_int = 1;
pub const GL_ARB_geometry_shader4: c_int = 1;
pub const GL_LINES_ADJACENCY_ARB: c_int = 0x000A;
pub const GL_LINE_STRIP_ADJACENCY_ARB: c_int = 0x000B;
pub const GL_TRIANGLES_ADJACENCY_ARB: c_int = 0x000C;
pub const GL_TRIANGLE_STRIP_ADJACENCY_ARB: c_int = 0x000D;
pub const GL_PROGRAM_POINT_SIZE_ARB: c_int = 0x8642;
pub const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB: c_int = 0x8C29;
pub const GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB: c_int = 0x8DA7;
pub const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB: c_int = 0x8DA8;
pub const GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB: c_int = 0x8DA9;
pub const GL_GEOMETRY_SHADER_ARB: c_int = 0x8DD9;
pub const GL_GEOMETRY_VERTICES_OUT_ARB: c_int = 0x8DDA;
pub const GL_GEOMETRY_INPUT_TYPE_ARB: c_int = 0x8DDB;
pub const GL_GEOMETRY_OUTPUT_TYPE_ARB: c_int = 0x8DDC;
pub const GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB: c_int = 0x8DDD;
pub const GL_MAX_VERTEX_VARYING_COMPONENTS_ARB: c_int = 0x8DDE;
pub const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB: c_int = 0x8DDF;
pub const GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB: c_int = 0x8DE0;
pub const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB: c_int = 0x8DE1;
pub const GL_ARB_get_program_binary: c_int = 1;
pub const GL_ARB_get_texture_sub_image: c_int = 1;
pub const GL_ARB_gl_spirv: c_int = 1;
pub const GL_SHADER_BINARY_FORMAT_SPIR_V_ARB: c_int = 0x9551;
pub const GL_SPIR_V_BINARY_ARB: c_int = 0x9552;
pub const GL_ARB_gpu_shader5: c_int = 1;
pub const GL_ARB_gpu_shader_fp64: c_int = 1;
pub const GL_ARB_gpu_shader_int64: c_int = 1;
pub const GL_INT64_ARB: c_int = 0x140E;
pub const GL_INT64_VEC2_ARB: c_int = 0x8FE9;
pub const GL_INT64_VEC3_ARB: c_int = 0x8FEA;
pub const GL_INT64_VEC4_ARB: c_int = 0x8FEB;
pub const GL_UNSIGNED_INT64_VEC2_ARB: c_int = 0x8FF5;
pub const GL_UNSIGNED_INT64_VEC3_ARB: c_int = 0x8FF6;
pub const GL_UNSIGNED_INT64_VEC4_ARB: c_int = 0x8FF7;
pub const GL_ARB_half_float_vertex: c_int = 1;
pub const GL_ARB_imaging: c_int = 1;
pub const GL_ARB_indirect_parameters: c_int = 1;
pub const GL_PARAMETER_BUFFER_ARB: c_int = 0x80EE;
pub const GL_PARAMETER_BUFFER_BINDING_ARB: c_int = 0x80EF;
pub const GL_ARB_instanced_arrays: c_int = 1;
pub const GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB: c_int = 0x88FE;
pub const GL_ARB_internalformat_query: c_int = 1;
pub const GL_ARB_internalformat_query2: c_int = 1;
pub const GL_SRGB_DECODE_ARB: c_int = 0x8299;
pub const GL_VIEW_CLASS_EAC_R11: c_int = 0x9383;
pub const GL_VIEW_CLASS_EAC_RG11: c_int = 0x9384;
pub const GL_VIEW_CLASS_ETC2_RGB: c_int = 0x9385;
pub const GL_VIEW_CLASS_ETC2_RGBA: c_int = 0x9386;
pub const GL_VIEW_CLASS_ETC2_EAC_RGBA: c_int = 0x9387;
pub const GL_VIEW_CLASS_ASTC_4x4_RGBA: c_int = 0x9388;
pub const GL_VIEW_CLASS_ASTC_5x4_RGBA: c_int = 0x9389;
pub const GL_VIEW_CLASS_ASTC_5x5_RGBA: c_int = 0x938A;
pub const GL_VIEW_CLASS_ASTC_6x5_RGBA: c_int = 0x938B;
pub const GL_VIEW_CLASS_ASTC_6x6_RGBA: c_int = 0x938C;
pub const GL_VIEW_CLASS_ASTC_8x5_RGBA: c_int = 0x938D;
pub const GL_VIEW_CLASS_ASTC_8x6_RGBA: c_int = 0x938E;
pub const GL_VIEW_CLASS_ASTC_8x8_RGBA: c_int = 0x938F;
pub const GL_VIEW_CLASS_ASTC_10x5_RGBA: c_int = 0x9390;
pub const GL_VIEW_CLASS_ASTC_10x6_RGBA: c_int = 0x9391;
pub const GL_VIEW_CLASS_ASTC_10x8_RGBA: c_int = 0x9392;
pub const GL_VIEW_CLASS_ASTC_10x10_RGBA: c_int = 0x9393;
pub const GL_VIEW_CLASS_ASTC_12x10_RGBA: c_int = 0x9394;
pub const GL_VIEW_CLASS_ASTC_12x12_RGBA: c_int = 0x9395;
pub const GL_ARB_invalidate_subdata: c_int = 1;
pub const GL_ARB_map_buffer_alignment: c_int = 1;
pub const GL_ARB_map_buffer_range: c_int = 1;
pub const GL_ARB_multi_bind: c_int = 1;
pub const GL_ARB_multi_draw_indirect: c_int = 1;
pub const GL_ARB_occlusion_query2: c_int = 1;
pub const GL_ARB_parallel_shader_compile: c_int = 1;
pub const GL_MAX_SHADER_COMPILER_THREADS_ARB: c_int = 0x91B0;
pub const GL_COMPLETION_STATUS_ARB: c_int = 0x91B1;
pub const GL_ARB_pipeline_statistics_query: c_int = 1;
pub const GL_VERTICES_SUBMITTED_ARB: c_int = 0x82EE;
pub const GL_PRIMITIVES_SUBMITTED_ARB: c_int = 0x82EF;
pub const GL_VERTEX_SHADER_INVOCATIONS_ARB: c_int = 0x82F0;
pub const GL_TESS_CONTROL_SHADER_PATCHES_ARB: c_int = 0x82F1;
pub const GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB: c_int = 0x82F2;
pub const GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB: c_int = 0x82F3;
pub const GL_FRAGMENT_SHADER_INVOCATIONS_ARB: c_int = 0x82F4;
pub const GL_COMPUTE_SHADER_INVOCATIONS_ARB: c_int = 0x82F5;
pub const GL_CLIPPING_INPUT_PRIMITIVES_ARB: c_int = 0x82F6;
pub const GL_CLIPPING_OUTPUT_PRIMITIVES_ARB: c_int = 0x82F7;
pub const GL_ARB_pixel_buffer_object: c_int = 1;
pub const GL_PIXEL_PACK_BUFFER_ARB: c_int = 0x88EB;
pub const GL_PIXEL_UNPACK_BUFFER_ARB: c_int = 0x88EC;
pub const GL_PIXEL_PACK_BUFFER_BINDING_ARB: c_int = 0x88ED;
pub const GL_PIXEL_UNPACK_BUFFER_BINDING_ARB: c_int = 0x88EF;
pub const GL_ARB_polygon_offset_clamp: c_int = 1;
pub const GL_ARB_post_depth_coverage: c_int = 1;
pub const GL_ARB_program_interface_query: c_int = 1;
pub const GL_ARB_provoking_vertex: c_int = 1;
pub const GL_ARB_query_buffer_object: c_int = 1;
pub const GL_ARB_robust_buffer_access_behavior: c_int = 1;
pub const GL_ARB_robustness: c_int = 1;
pub const GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB: c_int = 0x00000004;
pub const GL_LOSE_CONTEXT_ON_RESET_ARB: c_int = 0x8252;
pub const GL_GUILTY_CONTEXT_RESET_ARB: c_int = 0x8253;
pub const GL_INNOCENT_CONTEXT_RESET_ARB: c_int = 0x8254;
pub const GL_UNKNOWN_CONTEXT_RESET_ARB: c_int = 0x8255;
pub const GL_RESET_NOTIFICATION_STRATEGY_ARB: c_int = 0x8256;
pub const GL_NO_RESET_NOTIFICATION_ARB: c_int = 0x8261;
pub const GL_ARB_robustness_isolation: c_int = 1;
pub const GL_ARB_sample_locations: c_int = 1;
pub const GL_SAMPLE_LOCATION_SUBPIXEL_BITS_ARB: c_int = 0x933D;
pub const GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_ARB: c_int = 0x933E;
pub const GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_ARB: c_int = 0x933F;
pub const GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_ARB: c_int = 0x9340;
pub const GL_SAMPLE_LOCATION_ARB: c_int = 0x8E50;
pub const GL_PROGRAMMABLE_SAMPLE_LOCATION_ARB: c_int = 0x9341;
pub const GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_ARB: c_int = 0x9342;
pub const GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_ARB: c_int = 0x9343;
pub const GL_ARB_sample_shading: c_int = 1;
pub const GL_SAMPLE_SHADING_ARB: c_int = 0x8C36;
pub const GL_MIN_SAMPLE_SHADING_VALUE_ARB: c_int = 0x8C37;
pub const GL_ARB_sampler_objects: c_int = 1;
pub const GL_ARB_seamless_cube_map: c_int = 1;
pub const GL_ARB_seamless_cubemap_per_texture: c_int = 1;
pub const GL_ARB_separate_shader_objects: c_int = 1;
pub const GL_ARB_shader_atomic_counter_ops: c_int = 1;
pub const GL_ARB_shader_atomic_counters: c_int = 1;
pub const GL_ARB_shader_ballot: c_int = 1;
pub const GL_ARB_shader_bit_encoding: c_int = 1;
pub const GL_ARB_shader_clock: c_int = 1;
pub const GL_ARB_shader_draw_parameters: c_int = 1;
pub const GL_ARB_shader_group_vote: c_int = 1;
pub const GL_ARB_shader_image_load_store: c_int = 1;
pub const GL_ARB_shader_image_size: c_int = 1;
pub const GL_ARB_shader_precision: c_int = 1;
pub const GL_ARB_shader_stencil_export: c_int = 1;
pub const GL_ARB_shader_storage_buffer_object: c_int = 1;
pub const GL_ARB_shader_subroutine: c_int = 1;
pub const GL_ARB_shader_texture_image_samples: c_int = 1;
pub const GL_ARB_shader_viewport_layer_array: c_int = 1;
pub const GL_ARB_shading_language_420pack: c_int = 1;
pub const GL_ARB_shading_language_include: c_int = 1;
pub const GL_SHADER_INCLUDE_ARB: c_int = 0x8DAE;
pub const GL_NAMED_STRING_LENGTH_ARB: c_int = 0x8DE9;
pub const GL_NAMED_STRING_TYPE_ARB: c_int = 0x8DEA;
pub const GL_ARB_shading_language_packing: c_int = 1;
pub const GL_ARB_sparse_buffer: c_int = 1;
pub const GL_SPARSE_STORAGE_BIT_ARB: c_int = 0x0400;
pub const GL_SPARSE_BUFFER_PAGE_SIZE_ARB: c_int = 0x82F8;
pub const GL_ARB_sparse_texture: c_int = 1;
pub const GL_TEXTURE_SPARSE_ARB: c_int = 0x91A6;
pub const GL_VIRTUAL_PAGE_SIZE_INDEX_ARB: c_int = 0x91A7;
pub const GL_NUM_SPARSE_LEVELS_ARB: c_int = 0x91AA;
pub const GL_NUM_VIRTUAL_PAGE_SIZES_ARB: c_int = 0x91A8;
pub const GL_VIRTUAL_PAGE_SIZE_X_ARB: c_int = 0x9195;
pub const GL_VIRTUAL_PAGE_SIZE_Y_ARB: c_int = 0x9196;
pub const GL_VIRTUAL_PAGE_SIZE_Z_ARB: c_int = 0x9197;
pub const GL_MAX_SPARSE_TEXTURE_SIZE_ARB: c_int = 0x9198;
pub const GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB: c_int = 0x9199;
pub const GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB: c_int = 0x919A;
pub const GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB: c_int = 0x91A9;
pub const GL_ARB_sparse_texture2: c_int = 1;
pub const GL_ARB_sparse_texture_clamp: c_int = 1;
pub const GL_ARB_spirv_extensions: c_int = 1;
pub const GL_ARB_stencil_texturing: c_int = 1;
pub const GL_ARB_sync: c_int = 1;
pub const GL_ARB_tessellation_shader: c_int = 1;
pub const GL_ARB_texture_barrier: c_int = 1;
pub const GL_ARB_texture_border_clamp: c_int = 1;
pub const GL_CLAMP_TO_BORDER_ARB: c_int = 0x812D;
pub const GL_ARB_texture_buffer_object: c_int = 1;
pub const GL_TEXTURE_BUFFER_ARB: c_int = 0x8C2A;
pub const GL_MAX_TEXTURE_BUFFER_SIZE_ARB: c_int = 0x8C2B;
pub const GL_TEXTURE_BINDING_BUFFER_ARB: c_int = 0x8C2C;
pub const GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB: c_int = 0x8C2D;
pub const GL_TEXTURE_BUFFER_FORMAT_ARB: c_int = 0x8C2E;
pub const GL_ARB_texture_buffer_object_rgb32: c_int = 1;
pub const GL_ARB_texture_buffer_range: c_int = 1;
pub const GL_ARB_texture_compression_bptc: c_int = 1;
pub const GL_COMPRESSED_RGBA_BPTC_UNORM_ARB: c_int = 0x8E8C;
pub const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB: c_int = 0x8E8D;
pub const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB: c_int = 0x8E8E;
pub const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB: c_int = 0x8E8F;
pub const GL_ARB_texture_compression_rgtc: c_int = 1;
pub const GL_ARB_texture_cube_map_array: c_int = 1;
pub const GL_TEXTURE_CUBE_MAP_ARRAY_ARB: c_int = 0x9009;
pub const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB: c_int = 0x900A;
pub const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB: c_int = 0x900B;
pub const GL_SAMPLER_CUBE_MAP_ARRAY_ARB: c_int = 0x900C;
pub const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB: c_int = 0x900D;
pub const GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB: c_int = 0x900E;
pub const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB: c_int = 0x900F;
pub const GL_ARB_texture_filter_anisotropic: c_int = 1;
pub const GL_ARB_texture_filter_minmax: c_int = 1;
pub const GL_TEXTURE_REDUCTION_MODE_ARB: c_int = 0x9366;
pub const GL_WEIGHTED_AVERAGE_ARB: c_int = 0x9367;
pub const GL_ARB_texture_gather: c_int = 1;
pub const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB: c_int = 0x8E5E;
pub const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB: c_int = 0x8E5F;
pub const GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB: c_int = 0x8F9F;
pub const GL_ARB_texture_mirror_clamp_to_edge: c_int = 1;
pub const GL_ARB_texture_mirrored_repeat: c_int = 1;
pub const GL_MIRRORED_REPEAT_ARB: c_int = 0x8370;
pub const GL_ARB_texture_multisample: c_int = 1;
pub const GL_ARB_texture_non_power_of_two: c_int = 1;
pub const GL_ARB_texture_query_levels: c_int = 1;
pub const GL_ARB_texture_query_lod: c_int = 1;
pub const GL_ARB_texture_rg: c_int = 1;
pub const GL_ARB_texture_rgb10_a2ui: c_int = 1;
pub const GL_ARB_texture_stencil8: c_int = 1;
pub const GL_ARB_texture_storage: c_int = 1;
pub const GL_ARB_texture_storage_multisample: c_int = 1;
pub const GL_ARB_texture_swizzle: c_int = 1;
pub const GL_ARB_texture_view: c_int = 1;
pub const GL_ARB_timer_query: c_int = 1;
pub const GL_ARB_transform_feedback2: c_int = 1;
pub const GL_ARB_transform_feedback3: c_int = 1;
pub const GL_ARB_transform_feedback_instanced: c_int = 1;
pub const GL_ARB_transform_feedback_overflow_query: c_int = 1;
pub const GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB: c_int = 0x82EC;
pub const GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB: c_int = 0x82ED;
pub const GL_ARB_uniform_buffer_object: c_int = 1;
pub const GL_ARB_vertex_array_bgra: c_int = 1;
pub const GL_ARB_vertex_array_object: c_int = 1;
pub const GL_ARB_vertex_attrib_64bit: c_int = 1;
pub const GL_ARB_vertex_attrib_binding: c_int = 1;
pub const GL_ARB_vertex_type_10f_11f_11f_rev: c_int = 1;
pub const GL_ARB_vertex_type_2_10_10_10_rev: c_int = 1;
pub const GL_ARB_viewport_array: c_int = 1;
pub const GL_KHR_blend_equation_advanced: c_int = 1;
pub const GL_MULTIPLY_KHR: c_int = 0x9294;
pub const GL_SCREEN_KHR: c_int = 0x9295;
pub const GL_OVERLAY_KHR: c_int = 0x9296;
pub const GL_DARKEN_KHR: c_int = 0x9297;
pub const GL_LIGHTEN_KHR: c_int = 0x9298;
pub const GL_COLORDODGE_KHR: c_int = 0x9299;
pub const GL_COLORBURN_KHR: c_int = 0x929A;
pub const GL_HARDLIGHT_KHR: c_int = 0x929B;
pub const GL_SOFTLIGHT_KHR: c_int = 0x929C;
pub const GL_DIFFERENCE_KHR: c_int = 0x929E;
pub const GL_EXCLUSION_KHR: c_int = 0x92A0;
pub const GL_HSL_HUE_KHR: c_int = 0x92AD;
pub const GL_HSL_SATURATION_KHR: c_int = 0x92AE;
pub const GL_HSL_COLOR_KHR: c_int = 0x92AF;
pub const GL_HSL_LUMINOSITY_KHR: c_int = 0x92B0;
pub const GL_KHR_blend_equation_advanced_coherent: c_int = 1;
pub const GL_BLEND_ADVANCED_COHERENT_KHR: c_int = 0x9285;
pub const GL_KHR_context_flush_control: c_int = 1;
pub const GL_KHR_debug: c_int = 1;
pub const GL_KHR_no_error: c_int = 1;
pub const GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR: c_int = 0x00000008;
pub const GL_KHR_parallel_shader_compile: c_int = 1;
pub const GL_MAX_SHADER_COMPILER_THREADS_KHR: c_int = 0x91B0;
pub const GL_COMPLETION_STATUS_KHR: c_int = 0x91B1;
pub const GL_KHR_robust_buffer_access_behavior: c_int = 1;
pub const GL_KHR_robustness: c_int = 1;
pub const GL_CONTEXT_ROBUST_ACCESS: c_int = 0x90F3;
pub const GL_KHR_shader_subgroup: c_int = 1;
pub const GL_SUBGROUP_SIZE_KHR: c_int = 0x9532;
pub const GL_SUBGROUP_SUPPORTED_STAGES_KHR: c_int = 0x9533;
pub const GL_SUBGROUP_SUPPORTED_FEATURES_KHR: c_int = 0x9534;
pub const GL_SUBGROUP_QUAD_ALL_STAGES_KHR: c_int = 0x9535;
pub const GL_SUBGROUP_FEATURE_BASIC_BIT_KHR: c_int = 0x00000001;
pub const GL_SUBGROUP_FEATURE_VOTE_BIT_KHR: c_int = 0x00000002;
pub const GL_SUBGROUP_FEATURE_ARITHMETIC_BIT_KHR: c_int = 0x00000004;
pub const GL_SUBGROUP_FEATURE_BALLOT_BIT_KHR: c_int = 0x00000008;
pub const GL_SUBGROUP_FEATURE_SHUFFLE_BIT_KHR: c_int = 0x00000010;
pub const GL_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT_KHR: c_int = 0x00000020;
pub const GL_SUBGROUP_FEATURE_CLUSTERED_BIT_KHR: c_int = 0x00000040;
pub const GL_SUBGROUP_FEATURE_QUAD_BIT_KHR: c_int = 0x00000080;
pub const GL_KHR_texture_compression_astc_hdr: c_int = 1;
pub const GL_COMPRESSED_RGBA_ASTC_4x4_KHR: c_int = 0x93B0;
pub const GL_COMPRESSED_RGBA_ASTC_5x4_KHR: c_int = 0x93B1;
pub const GL_COMPRESSED_RGBA_ASTC_5x5_KHR: c_int = 0x93B2;
pub const GL_COMPRESSED_RGBA_ASTC_6x5_KHR: c_int = 0x93B3;
pub const GL_COMPRESSED_RGBA_ASTC_6x6_KHR: c_int = 0x93B4;
pub const GL_COMPRESSED_RGBA_ASTC_8x5_KHR: c_int = 0x93B5;
pub const GL_COMPRESSED_RGBA_ASTC_8x6_KHR: c_int = 0x93B6;
pub const GL_COMPRESSED_RGBA_ASTC_8x8_KHR: c_int = 0x93B7;
pub const GL_COMPRESSED_RGBA_ASTC_10x5_KHR: c_int = 0x93B8;
pub const GL_COMPRESSED_RGBA_ASTC_10x6_KHR: c_int = 0x93B9;
pub const GL_COMPRESSED_RGBA_ASTC_10x8_KHR: c_int = 0x93BA;
pub const GL_COMPRESSED_RGBA_ASTC_10x10_KHR: c_int = 0x93BB;
pub const GL_COMPRESSED_RGBA_ASTC_12x10_KHR: c_int = 0x93BC;
pub const GL_COMPRESSED_RGBA_ASTC_12x12_KHR: c_int = 0x93BD;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR: c_int = 0x93D0;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR: c_int = 0x93D1;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR: c_int = 0x93D2;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR: c_int = 0x93D3;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR: c_int = 0x93D4;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR: c_int = 0x93D5;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR: c_int = 0x93D6;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR: c_int = 0x93D7;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR: c_int = 0x93D8;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR: c_int = 0x93D9;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR: c_int = 0x93DA;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR: c_int = 0x93DB;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR: c_int = 0x93DC;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR: c_int = 0x93DD;
pub const GL_KHR_texture_compression_astc_ldr: c_int = 1;
pub const GL_KHR_texture_compression_astc_sliced_3d: c_int = 1;
pub const GL_AMD_framebuffer_multisample_advanced: c_int = 1;
pub const GL_RENDERBUFFER_STORAGE_SAMPLES_AMD: c_int = 0x91B2;
pub const GL_MAX_COLOR_FRAMEBUFFER_SAMPLES_AMD: c_int = 0x91B3;
pub const GL_MAX_COLOR_FRAMEBUFFER_STORAGE_SAMPLES_AMD: c_int = 0x91B4;
pub const GL_MAX_DEPTH_STENCIL_FRAMEBUFFER_SAMPLES_AMD: c_int = 0x91B5;
pub const GL_NUM_SUPPORTED_MULTISAMPLE_MODES_AMD: c_int = 0x91B6;
pub const GL_SUPPORTED_MULTISAMPLE_MODES_AMD: c_int = 0x91B7;
pub const GL_AMD_performance_monitor: c_int = 1;
pub const GL_COUNTER_TYPE_AMD: c_int = 0x8BC0;
pub const GL_COUNTER_RANGE_AMD: c_int = 0x8BC1;
pub const GL_UNSIGNED_INT64_AMD: c_int = 0x8BC2;
pub const GL_PERCENTAGE_AMD: c_int = 0x8BC3;
pub const GL_PERFMON_RESULT_AVAILABLE_AMD: c_int = 0x8BC4;
pub const GL_PERFMON_RESULT_SIZE_AMD: c_int = 0x8BC5;
pub const GL_PERFMON_RESULT_AMD: c_int = 0x8BC6;
pub const GL_APPLE_rgb_422: c_int = 1;
pub const GL_RGB_422_APPLE: c_int = 0x8A1F;
pub const GL_UNSIGNED_SHORT_8_8_APPLE: c_int = 0x85BA;
pub const GL_UNSIGNED_SHORT_8_8_REV_APPLE: c_int = 0x85BB;
pub const GL_RGB_RAW_422_APPLE: c_int = 0x8A51;
pub const GL_EXT_EGL_image_storage: c_int = 1;
pub const GL_EXT_EGL_sync: c_int = 1;
pub const GL_EXT_debug_label: c_int = 1;
pub const GL_PROGRAM_PIPELINE_OBJECT_EXT: c_int = 0x8A4F;
pub const GL_PROGRAM_OBJECT_EXT: c_int = 0x8B40;
pub const GL_SHADER_OBJECT_EXT: c_int = 0x8B48;
pub const GL_BUFFER_OBJECT_EXT: c_int = 0x9151;
pub const GL_QUERY_OBJECT_EXT: c_int = 0x9153;
pub const GL_VERTEX_ARRAY_OBJECT_EXT: c_int = 0x9154;
pub const GL_EXT_debug_marker: c_int = 1;
pub const GL_EXT_direct_state_access: c_int = 1;
pub const GL_PROGRAM_MATRIX_EXT: c_int = 0x8E2D;
pub const GL_TRANSPOSE_PROGRAM_MATRIX_EXT: c_int = 0x8E2E;
pub const GL_PROGRAM_MATRIX_STACK_DEPTH_EXT: c_int = 0x8E2F;
pub const GL_EXT_draw_instanced: c_int = 1;
pub const GL_EXT_multiview_tessellation_geometry_shader: c_int = 1;
pub const GL_EXT_multiview_texture_multisample: c_int = 1;
pub const GL_EXT_multiview_timer_query: c_int = 1;
pub const GL_EXT_polygon_offset_clamp: c_int = 1;
pub const GL_POLYGON_OFFSET_CLAMP_EXT: c_int = 0x8E1B;
pub const GL_EXT_post_depth_coverage: c_int = 1;
pub const GL_EXT_raster_multisample: c_int = 1;
pub const GL_RASTER_MULTISAMPLE_EXT: c_int = 0x9327;
pub const GL_RASTER_SAMPLES_EXT: c_int = 0x9328;
pub const GL_MAX_RASTER_SAMPLES_EXT: c_int = 0x9329;
pub const GL_RASTER_FIXED_SAMPLE_LOCATIONS_EXT: c_int = 0x932A;
pub const GL_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT: c_int = 0x932B;
pub const GL_EFFECTIVE_RASTER_SAMPLES_EXT: c_int = 0x932C;
pub const GL_EXT_separate_shader_objects: c_int = 1;
pub const GL_ACTIVE_PROGRAM_EXT: c_int = 0x8B8D;
pub const GL_EXT_shader_framebuffer_fetch: c_int = 1;
pub const GL_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT: c_int = 0x8A52;
pub const GL_EXT_shader_framebuffer_fetch_non_coherent: c_int = 1;
pub const GL_EXT_shader_integer_mix: c_int = 1;
pub const GL_EXT_texture_compression_s3tc: c_int = 1;
pub const GL_COMPRESSED_RGB_S3TC_DXT1_EXT: c_int = 0x83F0;
pub const GL_COMPRESSED_RGBA_S3TC_DXT1_EXT: c_int = 0x83F1;
pub const GL_COMPRESSED_RGBA_S3TC_DXT3_EXT: c_int = 0x83F2;
pub const GL_COMPRESSED_RGBA_S3TC_DXT5_EXT: c_int = 0x83F3;
pub const GL_EXT_texture_filter_minmax: c_int = 1;
pub const GL_TEXTURE_REDUCTION_MODE_EXT: c_int = 0x9366;
pub const GL_WEIGHTED_AVERAGE_EXT: c_int = 0x9367;
pub const GL_EXT_texture_sRGB_R8: c_int = 1;
pub const GL_SR8_EXT: c_int = 0x8FBD;
pub const GL_EXT_texture_sRGB_RG8: c_int = 1;
pub const GL_SRG8_EXT: c_int = 0x8FBE;
pub const GL_EXT_texture_sRGB_decode: c_int = 1;
pub const GL_TEXTURE_SRGB_DECODE_EXT: c_int = 0x8A48;
pub const GL_DECODE_EXT: c_int = 0x8A49;
pub const GL_SKIP_DECODE_EXT: c_int = 0x8A4A;
pub const GL_EXT_texture_shadow_lod: c_int = 1;
pub const GL_EXT_texture_storage: c_int = 1;
pub const GL_TEXTURE_IMMUTABLE_FORMAT_EXT: c_int = 0x912F;
pub const GL_ALPHA8_EXT: c_int = 0x803C;
pub const GL_LUMINANCE8_EXT: c_int = 0x8040;
pub const GL_LUMINANCE8_ALPHA8_EXT: c_int = 0x8045;
pub const GL_RGBA32F_EXT: c_int = 0x8814;
pub const GL_RGB32F_EXT: c_int = 0x8815;
pub const GL_ALPHA32F_EXT: c_int = 0x8816;
pub const GL_LUMINANCE32F_EXT: c_int = 0x8818;
pub const GL_LUMINANCE_ALPHA32F_EXT: c_int = 0x8819;
pub const GL_RGBA16F_EXT: c_int = 0x881A;
pub const GL_RGB16F_EXT: c_int = 0x881B;
pub const GL_ALPHA16F_EXT: c_int = 0x881C;
pub const GL_LUMINANCE16F_EXT: c_int = 0x881E;
pub const GL_LUMINANCE_ALPHA16F_EXT: c_int = 0x881F;
pub const GL_RGB10_A2_EXT: c_int = 0x8059;
pub const GL_RGB10_EXT: c_int = 0x8052;
pub const GL_BGRA8_EXT: c_int = 0x93A1;
pub const GL_R8_EXT: c_int = 0x8229;
pub const GL_RG8_EXT: c_int = 0x822B;
pub const GL_R32F_EXT: c_int = 0x822E;
pub const GL_RG32F_EXT: c_int = 0x8230;
pub const GL_R16F_EXT: c_int = 0x822D;
pub const GL_RG16F_EXT: c_int = 0x822F;
pub const GL_EXT_window_rectangles: c_int = 1;
pub const GL_INCLUSIVE_EXT: c_int = 0x8F10;
pub const GL_EXCLUSIVE_EXT: c_int = 0x8F11;
pub const GL_WINDOW_RECTANGLE_EXT: c_int = 0x8F12;
pub const GL_WINDOW_RECTANGLE_MODE_EXT: c_int = 0x8F13;
pub const GL_MAX_WINDOW_RECTANGLES_EXT: c_int = 0x8F14;
pub const GL_NUM_WINDOW_RECTANGLES_EXT: c_int = 0x8F15;
pub const GL_INTEL_blackhole_render: c_int = 1;
pub const GL_BLACKHOLE_RENDER_INTEL: c_int = 0x83FC;
pub const GL_INTEL_conservative_rasterization: c_int = 1;
pub const GL_CONSERVATIVE_RASTERIZATION_INTEL: c_int = 0x83FE;
pub const GL_INTEL_framebuffer_CMAA: c_int = 1;
pub const GL_INTEL_performance_query: c_int = 1;
pub const GL_PERFQUERY_SINGLE_CONTEXT_INTEL: c_int = 0x00000000;
pub const GL_PERFQUERY_GLOBAL_CONTEXT_INTEL: c_int = 0x00000001;
pub const GL_PERFQUERY_WAIT_INTEL: c_int = 0x83FB;
pub const GL_PERFQUERY_FLUSH_INTEL: c_int = 0x83FA;
pub const GL_PERFQUERY_DONOT_FLUSH_INTEL: c_int = 0x83F9;
pub const GL_PERFQUERY_COUNTER_EVENT_INTEL: c_int = 0x94F0;
pub const GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL: c_int = 0x94F1;
pub const GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL: c_int = 0x94F2;
pub const GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL: c_int = 0x94F3;
pub const GL_PERFQUERY_COUNTER_RAW_INTEL: c_int = 0x94F4;
pub const GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL: c_int = 0x94F5;
pub const GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL: c_int = 0x94F8;
pub const GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL: c_int = 0x94F9;
pub const GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL: c_int = 0x94FA;
pub const GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL: c_int = 0x94FB;
pub const GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL: c_int = 0x94FC;
pub const GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL: c_int = 0x94FD;
pub const GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL: c_int = 0x94FE;
pub const GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL: c_int = 0x94FF;
pub const GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL: c_int = 0x9500;
pub const GL_MESA_framebuffer_flip_x: c_int = 1;
pub const GL_FRAMEBUFFER_FLIP_X_MESA: c_int = 0x8BBC;
pub const GL_MESA_framebuffer_flip_y: c_int = 1;
pub const GL_FRAMEBUFFER_FLIP_Y_MESA: c_int = 0x8BBB;
pub const GL_MESA_framebuffer_swap_xy: c_int = 1;
pub const GL_FRAMEBUFFER_SWAP_XY_MESA: c_int = 0x8BBD;
pub const GL_NV_bindless_multi_draw_indirect: c_int = 1;
pub const GL_NV_bindless_multi_draw_indirect_count: c_int = 1;
pub const GL_NV_bindless_texture: c_int = 1;
pub const GL_NV_blend_equation_advanced: c_int = 1;
pub const GL_BLEND_OVERLAP_NV: c_int = 0x9281;
pub const GL_BLEND_PREMULTIPLIED_SRC_NV: c_int = 0x9280;
pub const GL_BLUE_NV: c_int = 0x1905;
pub const GL_COLORBURN_NV: c_int = 0x929A;
pub const GL_COLORDODGE_NV: c_int = 0x9299;
pub const GL_CONJOINT_NV: c_int = 0x9284;
pub const GL_CONTRAST_NV: c_int = 0x92A1;
pub const GL_DARKEN_NV: c_int = 0x9297;
pub const GL_DIFFERENCE_NV: c_int = 0x929E;
pub const GL_DISJOINT_NV: c_int = 0x9283;
pub const GL_DST_ATOP_NV: c_int = 0x928F;
pub const GL_DST_IN_NV: c_int = 0x928B;
pub const GL_DST_NV: c_int = 0x9287;
pub const GL_DST_OUT_NV: c_int = 0x928D;
pub const GL_DST_OVER_NV: c_int = 0x9289;
pub const GL_EXCLUSION_NV: c_int = 0x92A0;
pub const GL_GREEN_NV: c_int = 0x1904;
pub const GL_HARDLIGHT_NV: c_int = 0x929B;
pub const GL_HARDMIX_NV: c_int = 0x92A9;
pub const GL_HSL_COLOR_NV: c_int = 0x92AF;
pub const GL_HSL_HUE_NV: c_int = 0x92AD;
pub const GL_HSL_LUMINOSITY_NV: c_int = 0x92B0;
pub const GL_HSL_SATURATION_NV: c_int = 0x92AE;
pub const GL_INVERT_OVG_NV: c_int = 0x92B4;
pub const GL_INVERT_RGB_NV: c_int = 0x92A3;
pub const GL_LIGHTEN_NV: c_int = 0x9298;
pub const GL_LINEARBURN_NV: c_int = 0x92A5;
pub const GL_LINEARDODGE_NV: c_int = 0x92A4;
pub const GL_LINEARLIGHT_NV: c_int = 0x92A7;
pub const GL_MINUS_CLAMPED_NV: c_int = 0x92B3;
pub const GL_MINUS_NV: c_int = 0x929F;
pub const GL_MULTIPLY_NV: c_int = 0x9294;
pub const GL_OVERLAY_NV: c_int = 0x9296;
pub const GL_PINLIGHT_NV: c_int = 0x92A8;
pub const GL_PLUS_CLAMPED_ALPHA_NV: c_int = 0x92B2;
pub const GL_PLUS_CLAMPED_NV: c_int = 0x92B1;
pub const GL_PLUS_DARKER_NV: c_int = 0x9292;
pub const GL_PLUS_NV: c_int = 0x9291;
pub const GL_RED_NV: c_int = 0x1903;
pub const GL_SCREEN_NV: c_int = 0x9295;
pub const GL_SOFTLIGHT_NV: c_int = 0x929C;
pub const GL_SRC_ATOP_NV: c_int = 0x928E;
pub const GL_SRC_IN_NV: c_int = 0x928A;
pub const GL_SRC_NV: c_int = 0x9286;
pub const GL_SRC_OUT_NV: c_int = 0x928C;
pub const GL_SRC_OVER_NV: c_int = 0x9288;
pub const GL_UNCORRELATED_NV: c_int = 0x9282;
pub const GL_VIVIDLIGHT_NV: c_int = 0x92A6;
pub const GL_XOR_NV: c_int = 0x1506;
pub const GL_NV_blend_equation_advanced_coherent: c_int = 1;
pub const GL_BLEND_ADVANCED_COHERENT_NV: c_int = 0x9285;
pub const GL_NV_blend_minmax_factor: c_int = 1;
pub const GL_FACTOR_MIN_AMD: c_int = 0x901C;
pub const GL_FACTOR_MAX_AMD: c_int = 0x901D;
pub const GL_NV_clip_space_w_scaling: c_int = 1;
pub const GL_VIEWPORT_POSITION_W_SCALE_NV: c_int = 0x937C;
pub const GL_VIEWPORT_POSITION_W_SCALE_X_COEFF_NV: c_int = 0x937D;
pub const GL_VIEWPORT_POSITION_W_SCALE_Y_COEFF_NV: c_int = 0x937E;
pub const GL_NV_command_list: c_int = 1;
pub const GL_TERMINATE_SEQUENCE_COMMAND_NV: c_int = 0x0000;
pub const GL_NOP_COMMAND_NV: c_int = 0x0001;
pub const GL_DRAW_ELEMENTS_COMMAND_NV: c_int = 0x0002;
pub const GL_DRAW_ARRAYS_COMMAND_NV: c_int = 0x0003;
pub const GL_DRAW_ELEMENTS_STRIP_COMMAND_NV: c_int = 0x0004;
pub const GL_DRAW_ARRAYS_STRIP_COMMAND_NV: c_int = 0x0005;
pub const GL_DRAW_ELEMENTS_INSTANCED_COMMAND_NV: c_int = 0x0006;
pub const GL_DRAW_ARRAYS_INSTANCED_COMMAND_NV: c_int = 0x0007;
pub const GL_ELEMENT_ADDRESS_COMMAND_NV: c_int = 0x0008;
pub const GL_ATTRIBUTE_ADDRESS_COMMAND_NV: c_int = 0x0009;
pub const GL_UNIFORM_ADDRESS_COMMAND_NV: c_int = 0x000A;
pub const GL_BLEND_COLOR_COMMAND_NV: c_int = 0x000B;
pub const GL_STENCIL_REF_COMMAND_NV: c_int = 0x000C;
pub const GL_LINE_WIDTH_COMMAND_NV: c_int = 0x000D;
pub const GL_POLYGON_OFFSET_COMMAND_NV: c_int = 0x000E;
pub const GL_ALPHA_REF_COMMAND_NV: c_int = 0x000F;
pub const GL_VIEWPORT_COMMAND_NV: c_int = 0x0010;
pub const GL_SCISSOR_COMMAND_NV: c_int = 0x0011;
pub const GL_FRONT_FACE_COMMAND_NV: c_int = 0x0012;
pub const GL_NV_compute_shader_derivatives: c_int = 1;
pub const GL_NV_conditional_render: c_int = 1;
pub const GL_QUERY_WAIT_NV: c_int = 0x8E13;
pub const GL_QUERY_NO_WAIT_NV: c_int = 0x8E14;
pub const GL_QUERY_BY_REGION_WAIT_NV: c_int = 0x8E15;
pub const GL_QUERY_BY_REGION_NO_WAIT_NV: c_int = 0x8E16;
pub const GL_NV_conservative_raster: c_int = 1;
pub const GL_CONSERVATIVE_RASTERIZATION_NV: c_int = 0x9346;
pub const GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV: c_int = 0x9347;
pub const GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV: c_int = 0x9348;
pub const GL_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV: c_int = 0x9349;
pub const GL_NV_conservative_raster_dilate: c_int = 1;
pub const GL_CONSERVATIVE_RASTER_DILATE_NV: c_int = 0x9379;
pub const GL_CONSERVATIVE_RASTER_DILATE_RANGE_NV: c_int = 0x937A;
pub const GL_CONSERVATIVE_RASTER_DILATE_GRANULARITY_NV: c_int = 0x937B;
pub const GL_NV_conservative_raster_pre_snap: c_int = 1;
pub const GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_NV: c_int = 0x9550;
pub const GL_NV_conservative_raster_pre_snap_triangles: c_int = 1;
pub const GL_CONSERVATIVE_RASTER_MODE_NV: c_int = 0x954D;
pub const GL_CONSERVATIVE_RASTER_MODE_POST_SNAP_NV: c_int = 0x954E;
pub const GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_TRIANGLES_NV: c_int = 0x954F;
pub const GL_NV_conservative_raster_underestimation: c_int = 1;
pub const GL_NV_depth_buffer_float: c_int = 1;
pub const GL_DEPTH_COMPONENT32F_NV: c_int = 0x8DAB;
pub const GL_DEPTH32F_STENCIL8_NV: c_int = 0x8DAC;
pub const GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV: c_int = 0x8DAD;
pub const GL_DEPTH_BUFFER_FLOAT_MODE_NV: c_int = 0x8DAF;
pub const GL_NV_draw_vulkan_image: c_int = 1;
pub const GL_NV_fill_rectangle: c_int = 1;
pub const GL_FILL_RECTANGLE_NV: c_int = 0x933C;
pub const GL_NV_fragment_coverage_to_color: c_int = 1;
pub const GL_FRAGMENT_COVERAGE_TO_COLOR_NV: c_int = 0x92DD;
pub const GL_FRAGMENT_COVERAGE_COLOR_NV: c_int = 0x92DE;
pub const GL_NV_fragment_shader_barycentric: c_int = 1;
pub const GL_NV_fragment_shader_interlock: c_int = 1;
pub const GL_NV_framebuffer_mixed_samples: c_int = 1;
pub const GL_COVERAGE_MODULATION_TABLE_NV: c_int = 0x9331;
pub const GL_COLOR_SAMPLES_NV: c_int = 0x8E20;
pub const GL_DEPTH_SAMPLES_NV: c_int = 0x932D;
pub const GL_STENCIL_SAMPLES_NV: c_int = 0x932E;
pub const GL_MIXED_DEPTH_SAMPLES_SUPPORTED_NV: c_int = 0x932F;
pub const GL_MIXED_STENCIL_SAMPLES_SUPPORTED_NV: c_int = 0x9330;
pub const GL_COVERAGE_MODULATION_NV: c_int = 0x9332;
pub const GL_COVERAGE_MODULATION_TABLE_SIZE_NV: c_int = 0x9333;
pub const GL_NV_framebuffer_multisample_coverage: c_int = 1;
pub const GL_RENDERBUFFER_COVERAGE_SAMPLES_NV: c_int = 0x8CAB;
pub const GL_RENDERBUFFER_COLOR_SAMPLES_NV: c_int = 0x8E10;
pub const GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV: c_int = 0x8E11;
pub const GL_MULTISAMPLE_COVERAGE_MODES_NV: c_int = 0x8E12;
pub const GL_NV_geometry_shader_passthrough: c_int = 1;
pub const GL_NV_gpu_shader5: c_int = 1;
pub const GL_INT64_NV: c_int = 0x140E;
pub const GL_UNSIGNED_INT64_NV: c_int = 0x140F;
pub const GL_INT8_NV: c_int = 0x8FE0;
pub const GL_INT8_VEC2_NV: c_int = 0x8FE1;
pub const GL_INT8_VEC3_NV: c_int = 0x8FE2;
pub const GL_INT8_VEC4_NV: c_int = 0x8FE3;
pub const GL_INT16_NV: c_int = 0x8FE4;
pub const GL_INT16_VEC2_NV: c_int = 0x8FE5;
pub const GL_INT16_VEC3_NV: c_int = 0x8FE6;
pub const GL_INT16_VEC4_NV: c_int = 0x8FE7;
pub const GL_INT64_VEC2_NV: c_int = 0x8FE9;
pub const GL_INT64_VEC3_NV: c_int = 0x8FEA;
pub const GL_INT64_VEC4_NV: c_int = 0x8FEB;
pub const GL_UNSIGNED_INT8_NV: c_int = 0x8FEC;
pub const GL_UNSIGNED_INT8_VEC2_NV: c_int = 0x8FED;
pub const GL_UNSIGNED_INT8_VEC3_NV: c_int = 0x8FEE;
pub const GL_UNSIGNED_INT8_VEC4_NV: c_int = 0x8FEF;
pub const GL_UNSIGNED_INT16_NV: c_int = 0x8FF0;
pub const GL_UNSIGNED_INT16_VEC2_NV: c_int = 0x8FF1;
pub const GL_UNSIGNED_INT16_VEC3_NV: c_int = 0x8FF2;
pub const GL_UNSIGNED_INT16_VEC4_NV: c_int = 0x8FF3;
pub const GL_UNSIGNED_INT64_VEC2_NV: c_int = 0x8FF5;
pub const GL_UNSIGNED_INT64_VEC3_NV: c_int = 0x8FF6;
pub const GL_UNSIGNED_INT64_VEC4_NV: c_int = 0x8FF7;
pub const GL_FLOAT16_NV: c_int = 0x8FF8;
pub const GL_FLOAT16_VEC2_NV: c_int = 0x8FF9;
pub const GL_FLOAT16_VEC3_NV: c_int = 0x8FFA;
pub const GL_FLOAT16_VEC4_NV: c_int = 0x8FFB;
pub const GL_NV_internalformat_sample_query: c_int = 1;
pub const GL_MULTISAMPLES_NV: c_int = 0x9371;
pub const GL_SUPERSAMPLE_SCALE_X_NV: c_int = 0x9372;
pub const GL_SUPERSAMPLE_SCALE_Y_NV: c_int = 0x9373;
pub const GL_CONFORMANT_NV: c_int = 0x9374;
pub const GL_NV_memory_attachment: c_int = 1;
pub const GL_ATTACHED_MEMORY_OBJECT_NV: c_int = 0x95A4;
pub const GL_ATTACHED_MEMORY_OFFSET_NV: c_int = 0x95A5;
pub const GL_MEMORY_ATTACHABLE_ALIGNMENT_NV: c_int = 0x95A6;
pub const GL_MEMORY_ATTACHABLE_SIZE_NV: c_int = 0x95A7;
pub const GL_MEMORY_ATTACHABLE_NV: c_int = 0x95A8;
pub const GL_DETACHED_MEMORY_INCARNATION_NV: c_int = 0x95A9;
pub const GL_DETACHED_TEXTURES_NV: c_int = 0x95AA;
pub const GL_DETACHED_BUFFERS_NV: c_int = 0x95AB;
pub const GL_MAX_DETACHED_TEXTURES_NV: c_int = 0x95AC;
pub const GL_MAX_DETACHED_BUFFERS_NV: c_int = 0x95AD;
pub const GL_NV_memory_object_sparse: c_int = 1;
pub const GL_NV_mesh_shader: c_int = 1;
pub const GL_MESH_SHADER_NV: c_int = 0x9559;
pub const GL_TASK_SHADER_NV: c_int = 0x955A;
pub const GL_MAX_MESH_UNIFORM_BLOCKS_NV: c_int = 0x8E60;
pub const GL_MAX_MESH_TEXTURE_IMAGE_UNITS_NV: c_int = 0x8E61;
pub const GL_MAX_MESH_IMAGE_UNIFORMS_NV: c_int = 0x8E62;
pub const GL_MAX_MESH_UNIFORM_COMPONENTS_NV: c_int = 0x8E63;
pub const GL_MAX_MESH_ATOMIC_COUNTER_BUFFERS_NV: c_int = 0x8E64;
pub const GL_MAX_MESH_ATOMIC_COUNTERS_NV: c_int = 0x8E65;
pub const GL_MAX_MESH_SHADER_STORAGE_BLOCKS_NV: c_int = 0x8E66;
pub const GL_MAX_COMBINED_MESH_UNIFORM_COMPONENTS_NV: c_int = 0x8E67;
pub const GL_MAX_TASK_UNIFORM_BLOCKS_NV: c_int = 0x8E68;
pub const GL_MAX_TASK_TEXTURE_IMAGE_UNITS_NV: c_int = 0x8E69;
pub const GL_MAX_TASK_IMAGE_UNIFORMS_NV: c_int = 0x8E6A;
pub const GL_MAX_TASK_UNIFORM_COMPONENTS_NV: c_int = 0x8E6B;
pub const GL_MAX_TASK_ATOMIC_COUNTER_BUFFERS_NV: c_int = 0x8E6C;
pub const GL_MAX_TASK_ATOMIC_COUNTERS_NV: c_int = 0x8E6D;
pub const GL_MAX_TASK_SHADER_STORAGE_BLOCKS_NV: c_int = 0x8E6E;
pub const GL_MAX_COMBINED_TASK_UNIFORM_COMPONENTS_NV: c_int = 0x8E6F;
pub const GL_MAX_MESH_WORK_GROUP_INVOCATIONS_NV: c_int = 0x95A2;
pub const GL_MAX_TASK_WORK_GROUP_INVOCATIONS_NV: c_int = 0x95A3;
pub const GL_MAX_MESH_TOTAL_MEMORY_SIZE_NV: c_int = 0x9536;
pub const GL_MAX_TASK_TOTAL_MEMORY_SIZE_NV: c_int = 0x9537;
pub const GL_MAX_MESH_OUTPUT_VERTICES_NV: c_int = 0x9538;
pub const GL_MAX_MESH_OUTPUT_PRIMITIVES_NV: c_int = 0x9539;
pub const GL_MAX_TASK_OUTPUT_COUNT_NV: c_int = 0x953A;
pub const GL_MAX_DRAW_MESH_TASKS_COUNT_NV: c_int = 0x953D;
pub const GL_MAX_MESH_VIEWS_NV: c_int = 0x9557;
pub const GL_MESH_OUTPUT_PER_VERTEX_GRANULARITY_NV: c_int = 0x92DF;
pub const GL_MESH_OUTPUT_PER_PRIMITIVE_GRANULARITY_NV: c_int = 0x9543;
pub const GL_MAX_MESH_WORK_GROUP_SIZE_NV: c_int = 0x953B;
pub const GL_MAX_TASK_WORK_GROUP_SIZE_NV: c_int = 0x953C;
pub const GL_MESH_WORK_GROUP_SIZE_NV: c_int = 0x953E;
pub const GL_TASK_WORK_GROUP_SIZE_NV: c_int = 0x953F;
pub const GL_MESH_VERTICES_OUT_NV: c_int = 0x9579;
pub const GL_MESH_PRIMITIVES_OUT_NV: c_int = 0x957A;
pub const GL_MESH_OUTPUT_TYPE_NV: c_int = 0x957B;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_MESH_SHADER_NV: c_int = 0x959C;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_TASK_SHADER_NV: c_int = 0x959D;
pub const GL_REFERENCED_BY_MESH_SHADER_NV: c_int = 0x95A0;
pub const GL_REFERENCED_BY_TASK_SHADER_NV: c_int = 0x95A1;
pub const GL_MESH_SHADER_BIT_NV: c_int = 0x00000040;
pub const GL_TASK_SHADER_BIT_NV: c_int = 0x00000080;
pub const GL_MESH_SUBROUTINE_NV: c_int = 0x957C;
pub const GL_TASK_SUBROUTINE_NV: c_int = 0x957D;
pub const GL_MESH_SUBROUTINE_UNIFORM_NV: c_int = 0x957E;
pub const GL_TASK_SUBROUTINE_UNIFORM_NV: c_int = 0x957F;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_MESH_SHADER_NV: c_int = 0x959E;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TASK_SHADER_NV: c_int = 0x959F;
pub const GL_NV_path_rendering: c_int = 1;
pub const GL_PATH_FORMAT_SVG_NV: c_int = 0x9070;
pub const GL_PATH_FORMAT_PS_NV: c_int = 0x9071;
pub const GL_STANDARD_FONT_NAME_NV: c_int = 0x9072;
pub const GL_SYSTEM_FONT_NAME_NV: c_int = 0x9073;
pub const GL_FILE_NAME_NV: c_int = 0x9074;
pub const GL_PATH_STROKE_WIDTH_NV: c_int = 0x9075;
pub const GL_PATH_END_CAPS_NV: c_int = 0x9076;
pub const GL_PATH_INITIAL_END_CAP_NV: c_int = 0x9077;
pub const GL_PATH_TERMINAL_END_CAP_NV: c_int = 0x9078;
pub const GL_PATH_JOIN_STYLE_NV: c_int = 0x9079;
pub const GL_PATH_MITER_LIMIT_NV: c_int = 0x907A;
pub const GL_PATH_DASH_CAPS_NV: c_int = 0x907B;
pub const GL_PATH_INITIAL_DASH_CAP_NV: c_int = 0x907C;
pub const GL_PATH_TERMINAL_DASH_CAP_NV: c_int = 0x907D;
pub const GL_PATH_DASH_OFFSET_NV: c_int = 0x907E;
pub const GL_PATH_CLIENT_LENGTH_NV: c_int = 0x907F;
pub const GL_PATH_FILL_MODE_NV: c_int = 0x9080;
pub const GL_PATH_FILL_MASK_NV: c_int = 0x9081;
pub const GL_PATH_FILL_COVER_MODE_NV: c_int = 0x9082;
pub const GL_PATH_STROKE_COVER_MODE_NV: c_int = 0x9083;
pub const GL_PATH_STROKE_MASK_NV: c_int = 0x9084;
pub const GL_COUNT_UP_NV: c_int = 0x9088;
pub const GL_COUNT_DOWN_NV: c_int = 0x9089;
pub const GL_PATH_OBJECT_BOUNDING_BOX_NV: c_int = 0x908A;
pub const GL_CONVEX_HULL_NV: c_int = 0x908B;
pub const GL_BOUNDING_BOX_NV: c_int = 0x908D;
pub const GL_TRANSLATE_X_NV: c_int = 0x908E;
pub const GL_TRANSLATE_Y_NV: c_int = 0x908F;
pub const GL_TRANSLATE_2D_NV: c_int = 0x9090;
pub const GL_TRANSLATE_3D_NV: c_int = 0x9091;
pub const GL_AFFINE_2D_NV: c_int = 0x9092;
pub const GL_AFFINE_3D_NV: c_int = 0x9094;
pub const GL_TRANSPOSE_AFFINE_2D_NV: c_int = 0x9096;
pub const GL_TRANSPOSE_AFFINE_3D_NV: c_int = 0x9098;
pub const GL_UTF8_NV: c_int = 0x909A;
pub const GL_UTF16_NV: c_int = 0x909B;
pub const GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV: c_int = 0x909C;
pub const GL_PATH_COMMAND_COUNT_NV: c_int = 0x909D;
pub const GL_PATH_COORD_COUNT_NV: c_int = 0x909E;
pub const GL_PATH_DASH_ARRAY_COUNT_NV: c_int = 0x909F;
pub const GL_PATH_COMPUTED_LENGTH_NV: c_int = 0x90A0;
pub const GL_PATH_FILL_BOUNDING_BOX_NV: c_int = 0x90A1;
pub const GL_PATH_STROKE_BOUNDING_BOX_NV: c_int = 0x90A2;
pub const GL_SQUARE_NV: c_int = 0x90A3;
pub const GL_ROUND_NV: c_int = 0x90A4;
pub const GL_TRIANGULAR_NV: c_int = 0x90A5;
pub const GL_BEVEL_NV: c_int = 0x90A6;
pub const GL_MITER_REVERT_NV: c_int = 0x90A7;
pub const GL_MITER_TRUNCATE_NV: c_int = 0x90A8;
pub const GL_SKIP_MISSING_GLYPH_NV: c_int = 0x90A9;
pub const GL_USE_MISSING_GLYPH_NV: c_int = 0x90AA;
pub const GL_PATH_ERROR_POSITION_NV: c_int = 0x90AB;
pub const GL_ACCUM_ADJACENT_PAIRS_NV: c_int = 0x90AD;
pub const GL_ADJACENT_PAIRS_NV: c_int = 0x90AE;
pub const GL_FIRST_TO_REST_NV: c_int = 0x90AF;
pub const GL_PATH_GEN_MODE_NV: c_int = 0x90B0;
pub const GL_PATH_GEN_COEFF_NV: c_int = 0x90B1;
pub const GL_PATH_GEN_COMPONENTS_NV: c_int = 0x90B3;
pub const GL_PATH_STENCIL_FUNC_NV: c_int = 0x90B7;
pub const GL_PATH_STENCIL_REF_NV: c_int = 0x90B8;
pub const GL_PATH_STENCIL_VALUE_MASK_NV: c_int = 0x90B9;
pub const GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV: c_int = 0x90BD;
pub const GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV: c_int = 0x90BE;
pub const GL_PATH_COVER_DEPTH_FUNC_NV: c_int = 0x90BF;
pub const GL_PATH_DASH_OFFSET_RESET_NV: c_int = 0x90B4;
pub const GL_MOVE_TO_RESETS_NV: c_int = 0x90B5;
pub const GL_MOVE_TO_CONTINUES_NV: c_int = 0x90B6;
pub const GL_CLOSE_PATH_NV: c_int = 0x00;
pub const GL_MOVE_TO_NV: c_int = 0x02;
pub const GL_RELATIVE_MOVE_TO_NV: c_int = 0x03;
pub const GL_LINE_TO_NV: c_int = 0x04;
pub const GL_RELATIVE_LINE_TO_NV: c_int = 0x05;
pub const GL_HORIZONTAL_LINE_TO_NV: c_int = 0x06;
pub const GL_RELATIVE_HORIZONTAL_LINE_TO_NV: c_int = 0x07;
pub const GL_VERTICAL_LINE_TO_NV: c_int = 0x08;
pub const GL_RELATIVE_VERTICAL_LINE_TO_NV: c_int = 0x09;
pub const GL_QUADRATIC_CURVE_TO_NV: c_int = 0x0A;
pub const GL_RELATIVE_QUADRATIC_CURVE_TO_NV: c_int = 0x0B;
pub const GL_CUBIC_CURVE_TO_NV: c_int = 0x0C;
pub const GL_RELATIVE_CUBIC_CURVE_TO_NV: c_int = 0x0D;
pub const GL_SMOOTH_QUADRATIC_CURVE_TO_NV: c_int = 0x0E;
pub const GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV: c_int = 0x0F;
pub const GL_SMOOTH_CUBIC_CURVE_TO_NV: c_int = 0x10;
pub const GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV: c_int = 0x11;
pub const GL_SMALL_CCW_ARC_TO_NV: c_int = 0x12;
pub const GL_RELATIVE_SMALL_CCW_ARC_TO_NV: c_int = 0x13;
pub const GL_SMALL_CW_ARC_TO_NV: c_int = 0x14;
pub const GL_RELATIVE_SMALL_CW_ARC_TO_NV: c_int = 0x15;
pub const GL_LARGE_CCW_ARC_TO_NV: c_int = 0x16;
pub const GL_RELATIVE_LARGE_CCW_ARC_TO_NV: c_int = 0x17;
pub const GL_LARGE_CW_ARC_TO_NV: c_int = 0x18;
pub const GL_RELATIVE_LARGE_CW_ARC_TO_NV: c_int = 0x19;
pub const GL_RESTART_PATH_NV: c_int = 0xF0;
pub const GL_DUP_FIRST_CUBIC_CURVE_TO_NV: c_int = 0xF2;
pub const GL_DUP_LAST_CUBIC_CURVE_TO_NV: c_int = 0xF4;
pub const GL_RECT_NV: c_int = 0xF6;
pub const GL_CIRCULAR_CCW_ARC_TO_NV: c_int = 0xF8;
pub const GL_CIRCULAR_CW_ARC_TO_NV: c_int = 0xFA;
pub const GL_CIRCULAR_TANGENT_ARC_TO_NV: c_int = 0xFC;
pub const GL_ARC_TO_NV: c_int = 0xFE;
pub const GL_RELATIVE_ARC_TO_NV: c_int = 0xFF;
pub const GL_BOLD_BIT_NV: c_int = 0x01;
pub const GL_ITALIC_BIT_NV: c_int = 0x02;
pub const GL_GLYPH_WIDTH_BIT_NV: c_int = 0x01;
pub const GL_GLYPH_HEIGHT_BIT_NV: c_int = 0x02;
pub const GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV: c_int = 0x04;
pub const GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV: c_int = 0x08;
pub const GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV: c_int = 0x10;
pub const GL_GLYPH_VERTICAL_BEARING_X_BIT_NV: c_int = 0x20;
pub const GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV: c_int = 0x40;
pub const GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV: c_int = 0x80;
pub const GL_GLYPH_HAS_KERNING_BIT_NV: c_int = 0x100;
pub const GL_FONT_X_MIN_BOUNDS_BIT_NV: c_int = 0x00010000;
pub const GL_FONT_Y_MIN_BOUNDS_BIT_NV: c_int = 0x00020000;
pub const GL_FONT_X_MAX_BOUNDS_BIT_NV: c_int = 0x00040000;
pub const GL_FONT_Y_MAX_BOUNDS_BIT_NV: c_int = 0x00080000;
pub const GL_FONT_UNITS_PER_EM_BIT_NV: c_int = 0x00100000;
pub const GL_FONT_ASCENDER_BIT_NV: c_int = 0x00200000;
pub const GL_FONT_DESCENDER_BIT_NV: c_int = 0x00400000;
pub const GL_FONT_HEIGHT_BIT_NV: c_int = 0x00800000;
pub const GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV: c_int = 0x01000000;
pub const GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV: c_int = 0x02000000;
pub const GL_FONT_UNDERLINE_POSITION_BIT_NV: c_int = 0x04000000;
pub const GL_FONT_UNDERLINE_THICKNESS_BIT_NV: c_int = 0x08000000;
pub const GL_FONT_HAS_KERNING_BIT_NV: c_int = 0x10000000;
pub const GL_ROUNDED_RECT_NV: c_int = 0xE8;
pub const GL_RELATIVE_ROUNDED_RECT_NV: c_int = 0xE9;
pub const GL_ROUNDED_RECT2_NV: c_int = 0xEA;
pub const GL_RELATIVE_ROUNDED_RECT2_NV: c_int = 0xEB;
pub const GL_ROUNDED_RECT4_NV: c_int = 0xEC;
pub const GL_RELATIVE_ROUNDED_RECT4_NV: c_int = 0xED;
pub const GL_ROUNDED_RECT8_NV: c_int = 0xEE;
pub const GL_RELATIVE_ROUNDED_RECT8_NV: c_int = 0xEF;
pub const GL_RELATIVE_RECT_NV: c_int = 0xF7;
pub const GL_FONT_GLYPHS_AVAILABLE_NV: c_int = 0x9368;
pub const GL_FONT_TARGET_UNAVAILABLE_NV: c_int = 0x9369;
pub const GL_FONT_UNAVAILABLE_NV: c_int = 0x936A;
pub const GL_FONT_UNINTELLIGIBLE_NV: c_int = 0x936B;
pub const GL_CONIC_CURVE_TO_NV: c_int = 0x1A;
pub const GL_RELATIVE_CONIC_CURVE_TO_NV: c_int = 0x1B;
pub const GL_FONT_NUM_GLYPH_INDICES_BIT_NV: c_int = 0x20000000;
pub const GL_STANDARD_FONT_FORMAT_NV: c_int = 0x936C;
pub const GL_PATH_PROJECTION_NV: c_int = 0x1701;
pub const GL_PATH_MODELVIEW_NV: c_int = 0x1700;
pub const GL_PATH_MODELVIEW_STACK_DEPTH_NV: c_int = 0x0BA3;
pub const GL_PATH_MODELVIEW_MATRIX_NV: c_int = 0x0BA6;
pub const GL_PATH_MAX_MODELVIEW_STACK_DEPTH_NV: c_int = 0x0D36;
pub const GL_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV: c_int = 0x84E3;
pub const GL_PATH_PROJECTION_STACK_DEPTH_NV: c_int = 0x0BA4;
pub const GL_PATH_PROJECTION_MATRIX_NV: c_int = 0x0BA7;
pub const GL_PATH_MAX_PROJECTION_STACK_DEPTH_NV: c_int = 0x0D38;
pub const GL_PATH_TRANSPOSE_PROJECTION_MATRIX_NV: c_int = 0x84E4;
pub const GL_FRAGMENT_INPUT_NV: c_int = 0x936D;
pub const GL_NV_path_rendering_shared_edge: c_int = 1;
pub const GL_SHARED_EDGE_NV: c_int = 0xC0;
pub const GL_NV_primitive_shading_rate: c_int = 1;
pub const GL_SHADING_RATE_IMAGE_PER_PRIMITIVE_NV: c_int = 0x95B1;
pub const GL_SHADING_RATE_IMAGE_PALETTE_COUNT_NV: c_int = 0x95B2;
pub const GL_NV_representative_fragment_test: c_int = 1;
pub const GL_REPRESENTATIVE_FRAGMENT_TEST_NV: c_int = 0x937F;
pub const GL_NV_sample_locations: c_int = 1;
pub const GL_SAMPLE_LOCATION_SUBPIXEL_BITS_NV: c_int = 0x933D;
pub const GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV: c_int = 0x933E;
pub const GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV: c_int = 0x933F;
pub const GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV: c_int = 0x9340;
pub const GL_SAMPLE_LOCATION_NV: c_int = 0x8E50;
pub const GL_PROGRAMMABLE_SAMPLE_LOCATION_NV: c_int = 0x9341;
pub const GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV: c_int = 0x9342;
pub const GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV: c_int = 0x9343;
pub const GL_NV_sample_mask_override_coverage: c_int = 1;
pub const GL_NV_scissor_exclusive: c_int = 1;
pub const GL_SCISSOR_TEST_EXCLUSIVE_NV: c_int = 0x9555;
pub const GL_SCISSOR_BOX_EXCLUSIVE_NV: c_int = 0x9556;
pub const GL_NV_shader_atomic_counters: c_int = 1;
pub const GL_NV_shader_atomic_float: c_int = 1;
pub const GL_NV_shader_atomic_float64: c_int = 1;
pub const GL_NV_shader_atomic_fp16_vector: c_int = 1;
pub const GL_NV_shader_atomic_int64: c_int = 1;
pub const GL_NV_shader_buffer_load: c_int = 1;
pub const GL_BUFFER_GPU_ADDRESS_NV: c_int = 0x8F1D;
pub const GL_GPU_ADDRESS_NV: c_int = 0x8F34;
pub const GL_MAX_SHADER_BUFFER_ADDRESS_NV: c_int = 0x8F35;
pub const GL_NV_shader_buffer_store: c_int = 1;
pub const GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV: c_int = 0x00000010;
pub const GL_NV_shader_subgroup_partitioned: c_int = 1;
pub const GL_SUBGROUP_FEATURE_PARTITIONED_BIT_NV: c_int = 0x00000100;
pub const GL_NV_shader_texture_footprint: c_int = 1;
pub const GL_NV_shader_thread_group: c_int = 1;
pub const GL_WARP_SIZE_NV: c_int = 0x9339;
pub const GL_WARPS_PER_SM_NV: c_int = 0x933A;
pub const GL_SM_COUNT_NV: c_int = 0x933B;
pub const GL_NV_shader_thread_shuffle: c_int = 1;
pub const GL_NV_shading_rate_image: c_int = 1;
pub const GL_SHADING_RATE_IMAGE_NV: c_int = 0x9563;
pub const GL_SHADING_RATE_NO_INVOCATIONS_NV: c_int = 0x9564;
pub const GL_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV: c_int = 0x9565;
pub const GL_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV: c_int = 0x9566;
pub const GL_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV: c_int = 0x9567;
pub const GL_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV: c_int = 0x9568;
pub const GL_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV: c_int = 0x9569;
pub const GL_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV: c_int = 0x956A;
pub const GL_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV: c_int = 0x956B;
pub const GL_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV: c_int = 0x956C;
pub const GL_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV: c_int = 0x956D;
pub const GL_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV: c_int = 0x956E;
pub const GL_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV: c_int = 0x956F;
pub const GL_SHADING_RATE_IMAGE_BINDING_NV: c_int = 0x955B;
pub const GL_SHADING_RATE_IMAGE_TEXEL_WIDTH_NV: c_int = 0x955C;
pub const GL_SHADING_RATE_IMAGE_TEXEL_HEIGHT_NV: c_int = 0x955D;
pub const GL_SHADING_RATE_IMAGE_PALETTE_SIZE_NV: c_int = 0x955E;
pub const GL_MAX_COARSE_FRAGMENT_SAMPLES_NV: c_int = 0x955F;
pub const GL_SHADING_RATE_SAMPLE_ORDER_DEFAULT_NV: c_int = 0x95AE;
pub const GL_SHADING_RATE_SAMPLE_ORDER_PIXEL_MAJOR_NV: c_int = 0x95AF;
pub const GL_SHADING_RATE_SAMPLE_ORDER_SAMPLE_MAJOR_NV: c_int = 0x95B0;
pub const GL_NV_stereo_view_rendering: c_int = 1;
pub const GL_NV_texture_barrier: c_int = 1;
pub const GL_NV_texture_rectangle_compressed: c_int = 1;
pub const GL_NV_uniform_buffer_std430_layout: c_int = 1;
pub const GL_NV_uniform_buffer_unified_memory: c_int = 1;
pub const GL_UNIFORM_BUFFER_UNIFIED_NV: c_int = 0x936E;
pub const GL_UNIFORM_BUFFER_ADDRESS_NV: c_int = 0x936F;
pub const GL_UNIFORM_BUFFER_LENGTH_NV: c_int = 0x9370;
pub const GL_NV_vertex_attrib_integer_64bit: c_int = 1;
pub const GL_NV_vertex_buffer_unified_memory: c_int = 1;
pub const GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV: c_int = 0x8F1E;
pub const GL_ELEMENT_ARRAY_UNIFIED_NV: c_int = 0x8F1F;
pub const GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV: c_int = 0x8F20;
pub const GL_VERTEX_ARRAY_ADDRESS_NV: c_int = 0x8F21;
pub const GL_NORMAL_ARRAY_ADDRESS_NV: c_int = 0x8F22;
pub const GL_COLOR_ARRAY_ADDRESS_NV: c_int = 0x8F23;
pub const GL_INDEX_ARRAY_ADDRESS_NV: c_int = 0x8F24;
pub const GL_TEXTURE_COORD_ARRAY_ADDRESS_NV: c_int = 0x8F25;
pub const GL_EDGE_FLAG_ARRAY_ADDRESS_NV: c_int = 0x8F26;
pub const GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV: c_int = 0x8F27;
pub const GL_FOG_COORD_ARRAY_ADDRESS_NV: c_int = 0x8F28;
pub const GL_ELEMENT_ARRAY_ADDRESS_NV: c_int = 0x8F29;
pub const GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV: c_int = 0x8F2A;
pub const GL_VERTEX_ARRAY_LENGTH_NV: c_int = 0x8F2B;
pub const GL_NORMAL_ARRAY_LENGTH_NV: c_int = 0x8F2C;
pub const GL_COLOR_ARRAY_LENGTH_NV: c_int = 0x8F2D;
pub const GL_INDEX_ARRAY_LENGTH_NV: c_int = 0x8F2E;
pub const GL_TEXTURE_COORD_ARRAY_LENGTH_NV: c_int = 0x8F2F;
pub const GL_EDGE_FLAG_ARRAY_LENGTH_NV: c_int = 0x8F30;
pub const GL_SECONDARY_COLOR_ARRAY_LENGTH_NV: c_int = 0x8F31;
pub const GL_FOG_COORD_ARRAY_LENGTH_NV: c_int = 0x8F32;
pub const GL_ELEMENT_ARRAY_LENGTH_NV: c_int = 0x8F33;
pub const GL_DRAW_INDIRECT_UNIFIED_NV: c_int = 0x8F40;
pub const GL_DRAW_INDIRECT_ADDRESS_NV: c_int = 0x8F41;
pub const GL_DRAW_INDIRECT_LENGTH_NV: c_int = 0x8F42;
pub const GL_NV_viewport_array2: c_int = 1;
pub const GL_NV_viewport_swizzle: c_int = 1;
pub const GL_VIEWPORT_SWIZZLE_POSITIVE_X_NV: c_int = 0x9350;
pub const GL_VIEWPORT_SWIZZLE_NEGATIVE_X_NV: c_int = 0x9351;
pub const GL_VIEWPORT_SWIZZLE_POSITIVE_Y_NV: c_int = 0x9352;
pub const GL_VIEWPORT_SWIZZLE_NEGATIVE_Y_NV: c_int = 0x9353;
pub const GL_VIEWPORT_SWIZZLE_POSITIVE_Z_NV: c_int = 0x9354;
pub const GL_VIEWPORT_SWIZZLE_NEGATIVE_Z_NV: c_int = 0x9355;
pub const GL_VIEWPORT_SWIZZLE_POSITIVE_W_NV: c_int = 0x9356;
pub const GL_VIEWPORT_SWIZZLE_NEGATIVE_W_NV: c_int = 0x9357;
pub const GL_VIEWPORT_SWIZZLE_X_NV: c_int = 0x9358;
pub const GL_VIEWPORT_SWIZZLE_Y_NV: c_int = 0x9359;
pub const GL_VIEWPORT_SWIZZLE_Z_NV: c_int = 0x935A;
pub const GL_VIEWPORT_SWIZZLE_W_NV: c_int = 0x935B;
pub const GL_OVR_multiview: c_int = 1;
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR: c_int = 0x9630;
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR: c_int = 0x9632;
pub const GL_MAX_VIEWS_OVR: c_int = 0x9631;
pub const GL_FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR: c_int = 0x9633;

pub inline fn glCullFace(mode: @"enum") void {
    procs.glCullFace.?(mode);
}
pub inline fn glFrontFace(mode: @"enum") void {
    procs.glFrontFace.?(mode);
}
pub inline fn glHint(target: @"enum", mode: @"enum") void {
    procs.glHint.?(target, mode);
}
pub inline fn glLineWidth(width: f32) void {
    procs.glLineWidth.?(width);
}
pub inline fn glPointSize(size: f32) void {
    procs.glPointSize.?(size);
}
pub inline fn glPolygonMode(face: @"enum", mode: @"enum") void {
    procs.glPolygonMode.?(face, mode);
}
pub inline fn glScissor(x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glScissor.?(x, y, width, height);
}
pub inline fn glTexParameterf(target: @"enum", pname: @"enum", param: f32) void {
    procs.glTexParameterf.?(target, pname, param);
}
pub inline fn glTexParameterfv(target: @"enum", pname: @"enum", params: [*c]const f32) void {
    procs.glTexParameterfv.?(target, pname, params);
}
pub inline fn glTexParameteri(target: @"enum", pname: @"enum", param: c_int) void {
    procs.glTexParameteri.?(target, pname, param);
}
pub inline fn glTexParameteriv(target: @"enum", pname: @"enum", params: [*c]const c_int) void {
    procs.glTexParameteriv.?(target, pname, params);
}
pub inline fn glTexImage1D(target: @"enum", level: c_int, internalformat: c_int, width: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTexImage1D.?(target, level, internalformat, width, border, format, @"type", pixels);
}
pub inline fn glTexImage2D(target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTexImage2D.?(target, level, internalformat, width, height, border, format, @"type", pixels);
}
pub inline fn glDrawBuffer(buf: @"enum") void {
    procs.glDrawBuffer.?(buf);
}
pub inline fn glClear(mask: Bitfield) void {
    procs.glClear.?(mask);
}
pub inline fn glClearColor(red: f32, green: f32, blue: f32, alpha: f32) void {
    procs.glClearColor.?(red, green, blue, alpha);
}
pub inline fn glClearStencil(s: c_int) void {
    procs.glClearStencil.?(s);
}
pub inline fn glClearDepth(depth: f64) void {
    procs.glClearDepth.?(depth);
}
pub inline fn glStencilMask(mask: c_uint) void {
    procs.glStencilMask.?(mask);
}
pub inline fn glColorMask(red: @"bool", green: @"bool", blue: @"bool", alpha: @"bool") void {
    procs.glColorMask.?(red, green, blue, alpha);
}
pub inline fn glDepthMask(flag: @"bool") void {
    procs.glDepthMask.?(flag);
}
pub inline fn glDisable(cap: @"enum") void {
    procs.glDisable.?(cap);
}
pub inline fn glEnable(cap: @"enum") void {
    procs.glEnable.?(cap);
}
pub inline fn glFinish() void {
    procs.glFinish.?();
}
pub inline fn glFlush() void {
    procs.glFlush.?();
}
pub inline fn glBlendFunc(sfactor: @"enum", dfactor: @"enum") void {
    procs.glBlendFunc.?(sfactor, dfactor);
}
pub inline fn glLogicOp(opcode: @"enum") void {
    procs.glLogicOp.?(opcode);
}
pub inline fn glStencilFunc(func: @"enum", ref: c_int, mask: c_uint) void {
    procs.glStencilFunc.?(func, ref, mask);
}
pub inline fn glStencilOp(fail: @"enum", zfail: @"enum", zpass: @"enum") void {
    procs.glStencilOp.?(fail, zfail, zpass);
}
pub inline fn glDepthFunc(func: @"enum") void {
    procs.glDepthFunc.?(func);
}
pub inline fn glPixelStoref(pname: @"enum", param: f32) void {
    procs.glPixelStoref.?(pname, param);
}
pub inline fn glPixelStorei(pname: @"enum", param: c_int) void {
    procs.glPixelStorei.?(pname, param);
}
pub inline fn glReadBuffer(src: @"enum") void {
    procs.glReadBuffer.?(src);
}
pub inline fn glReadPixels(x: c_int, y: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*anyopaque) void {
    procs.glReadPixels.?(x, y, width, height, format, @"type", pixels);
}
pub inline fn glGetBooleanv(pname: @"enum", data: [*c]@"bool") void {
    procs.glGetBooleanv.?(pname, data);
}
pub inline fn glGetDoublev(pname: @"enum", data: [*c]f64) void {
    procs.glGetDoublev.?(pname, data);
}
pub inline fn glGetError() @"enum" {
    return procs.glGetError.?();
}
pub inline fn glGetFloatv(pname: @"enum", data: [*c]f32) void {
    procs.glGetFloatv.?(pname, data);
}
pub inline fn glGetIntegerv(pname: @"enum", data: [*c]c_int) void {
    procs.glGetIntegerv.?(pname, data);
}
pub inline fn glGetString(name: @"enum") [*c]const u8 {
    return procs.glGetString.?(name);
}
pub inline fn glGetTexImage(target: @"enum", level: c_int, format: @"enum", @"type": @"enum", pixels: ?*anyopaque) void {
    procs.glGetTexImage.?(target, level, format, @"type", pixels);
}
pub inline fn glGetTexParameterfv(target: @"enum", pname: @"enum", params: [*c]f32) void {
    procs.glGetTexParameterfv.?(target, pname, params);
}
pub inline fn glGetTexParameteriv(target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetTexParameteriv.?(target, pname, params);
}
pub inline fn glGetTexLevelParameterfv(target: @"enum", level: c_int, pname: @"enum", params: [*c]f32) void {
    procs.glGetTexLevelParameterfv.?(target, level, pname, params);
}
pub inline fn glGetTexLevelParameteriv(target: @"enum", level: c_int, pname: @"enum", params: [*c]c_int) void {
    procs.glGetTexLevelParameteriv.?(target, level, pname, params);
}
pub inline fn glIsEnabled(cap: @"enum") @"bool" {
    return procs.glIsEnabled.?(cap);
}
pub inline fn glDepthRange(n: f64, f: f64) void {
    procs.glDepthRange.?(n, f);
}
pub inline fn glViewport(x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glViewport.?(x, y, width, height);
}
pub inline fn glDrawArrays(mode: @"enum", first: c_int, count: c_int) void {
    procs.glDrawArrays.?(mode, first, count);
}
pub inline fn glDrawElements(mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque) void {
    procs.glDrawElements.?(mode, count, @"type", indices);
}
pub inline fn glGetPointerv(pname: @"enum", params: [*c]?*anyopaque) void {
    procs.glGetPointerv.?(pname, params);
}
pub inline fn glPolygonOffset(factor: f32, units: f32) void {
    procs.glPolygonOffset.?(factor, units);
}
pub inline fn glCopyTexImage1D(target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, border: c_int) void {
    procs.glCopyTexImage1D.?(target, level, internalformat, x, y, width, border);
}
pub inline fn glCopyTexImage2D(target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, height: c_int, border: c_int) void {
    procs.glCopyTexImage2D.?(target, level, internalformat, x, y, width, height, border);
}
pub inline fn glCopyTexSubImage1D(target: @"enum", level: c_int, xoffset: c_int, x: c_int, y: c_int, width: c_int) void {
    procs.glCopyTexSubImage1D.?(target, level, xoffset, x, y, width);
}
pub inline fn glCopyTexSubImage2D(target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glCopyTexSubImage2D.?(target, level, xoffset, yoffset, x, y, width, height);
}
pub inline fn glTexSubImage1D(target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTexSubImage1D.?(target, level, xoffset, width, format, @"type", pixels);
}
pub inline fn glTexSubImage2D(target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTexSubImage2D.?(target, level, xoffset, yoffset, width, height, format, @"type", pixels);
}
pub inline fn glBindTexture(target: @"enum", texture: c_uint) void {
    procs.glBindTexture.?(target, texture);
}
pub inline fn glDeleteTextures(n: c_int, textures: [*c]const c_uint) void {
    procs.glDeleteTextures.?(n, textures);
}
pub inline fn glGenTextures(n: c_int, textures: [*c]c_uint) void {
    procs.glGenTextures.?(n, textures);
}
pub inline fn glIsTexture(texture: c_uint) @"bool" {
    return procs.glIsTexture.?(texture);
}
pub inline fn glDrawRangeElements(mode: @"enum", start: c_uint, end: c_uint, count: c_int, @"type": @"enum", indices: ?*const anyopaque) void {
    procs.glDrawRangeElements.?(mode, start, end, count, @"type", indices);
}
pub inline fn glTexImage3D(target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, depth: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTexImage3D.?(target, level, internalformat, width, height, depth, border, format, @"type", pixels);
}
pub inline fn glTexSubImage3D(target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTexSubImage3D.?(target, level, xoffset, yoffset, zoffset, width, height, depth, format, @"type", pixels);
}
pub inline fn glCopyTexSubImage3D(target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glCopyTexSubImage3D.?(target, level, xoffset, yoffset, zoffset, x, y, width, height);
}
pub inline fn glActiveTexture(texture: @"enum") void {
    procs.glActiveTexture.?(texture);
}
pub inline fn glSampleCoverage(value: f32, invert: @"bool") void {
    procs.glSampleCoverage.?(value, invert);
}
pub inline fn glCompressedTexImage3D(target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, border: c_int, imageSize: c_int, data: ?*const anyopaque) void {
    procs.glCompressedTexImage3D.?(target, level, internalformat, width, height, depth, border, imageSize, data);
}
pub inline fn glCompressedTexImage2D(target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, border: c_int, imageSize: c_int, data: ?*const anyopaque) void {
    procs.glCompressedTexImage2D.?(target, level, internalformat, width, height, border, imageSize, data);
}
pub inline fn glCompressedTexImage1D(target: @"enum", level: c_int, internalformat: @"enum", width: c_int, border: c_int, imageSize: c_int, data: ?*const anyopaque) void {
    procs.glCompressedTexImage1D.?(target, level, internalformat, width, border, imageSize, data);
}
pub inline fn glCompressedTexSubImage3D(target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) void {
    procs.glCompressedTexSubImage3D.?(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data);
}
pub inline fn glCompressedTexSubImage2D(target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) void {
    procs.glCompressedTexSubImage2D.?(target, level, xoffset, yoffset, width, height, format, imageSize, data);
}
pub inline fn glCompressedTexSubImage1D(target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) void {
    procs.glCompressedTexSubImage1D.?(target, level, xoffset, width, format, imageSize, data);
}
pub inline fn glGetCompressedTexImage(target: @"enum", level: c_int, img: ?*anyopaque) void {
    procs.glGetCompressedTexImage.?(target, level, img);
}
pub inline fn glBlendFuncSeparate(sfactorRGB: @"enum", dfactorRGB: @"enum", sfactorAlpha: @"enum", dfactorAlpha: @"enum") void {
    procs.glBlendFuncSeparate.?(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
}
pub inline fn glMultiDrawArrays(mode: @"enum", first: [*c]const c_int, count: [*c]const c_int, drawcount: c_int) void {
    procs.glMultiDrawArrays.?(mode, first, count, drawcount);
}
pub inline fn glMultiDrawElements(mode: @"enum", count: [*c]const c_int, @"type": @"enum", indices: [*c]const ?*const anyopaque, drawcount: c_int) void {
    procs.glMultiDrawElements.?(mode, count, @"type", indices, drawcount);
}
pub inline fn glPointParameterf(pname: @"enum", param: f32) void {
    procs.glPointParameterf.?(pname, param);
}
pub inline fn glPointParameterfv(pname: @"enum", params: [*c]const f32) void {
    procs.glPointParameterfv.?(pname, params);
}
pub inline fn glPointParameteri(pname: @"enum", param: c_int) void {
    procs.glPointParameteri.?(pname, param);
}
pub inline fn glPointParameteriv(pname: @"enum", params: [*c]const c_int) void {
    procs.glPointParameteriv.?(pname, params);
}
pub inline fn glBlendColor(red: f32, green: f32, blue: f32, alpha: f32) void {
    procs.glBlendColor.?(red, green, blue, alpha);
}
pub inline fn glBlendEquation(mode: @"enum") void {
    procs.glBlendEquation.?(mode);
}
pub inline fn glGenQueries(n: c_int, ids: [*c]c_uint) void {
    procs.glGenQueries.?(n, ids);
}
pub inline fn glDeleteQueries(n: c_int, ids: [*c]const c_uint) void {
    procs.glDeleteQueries.?(n, ids);
}
pub inline fn glIsQuery(id: c_uint) @"bool" {
    return procs.glIsQuery.?(id);
}
pub inline fn glBeginQuery(target: @"enum", id: c_uint) void {
    procs.glBeginQuery.?(target, id);
}
pub inline fn glEndQuery(target: @"enum") void {
    procs.glEndQuery.?(target);
}
pub inline fn glGetQueryiv(target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetQueryiv.?(target, pname, params);
}
pub inline fn glGetQueryObjectiv(id: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetQueryObjectiv.?(id, pname, params);
}
pub inline fn glGetQueryObjectuiv(id: c_uint, pname: @"enum", params: [*c]c_uint) void {
    procs.glGetQueryObjectuiv.?(id, pname, params);
}
pub inline fn glBindBuffer(target: @"enum", buffer: c_uint) void {
    procs.glBindBuffer.?(target, buffer);
}
pub inline fn glDeleteBuffers(n: c_int, buffers: [*c]const c_uint) void {
    procs.glDeleteBuffers.?(n, buffers);
}
pub inline fn glGenBuffers(n: c_int, buffers: [*c]c_uint) void {
    procs.glGenBuffers.?(n, buffers);
}
pub inline fn glIsBuffer(buffer: c_uint) @"bool" {
    return procs.glIsBuffer.?(buffer);
}
pub inline fn glBufferData(target: @"enum", size: c_ulong, data: ?*const anyopaque, usage: @"enum") void {
    procs.glBufferData.?(target, size, data, usage);
}
pub inline fn glBufferSubData(target: @"enum", offset: c_long, size: c_ulong, data: ?*const anyopaque) void {
    procs.glBufferSubData.?(target, offset, size, data);
}
pub inline fn glGetBufferSubData(target: @"enum", offset: c_long, size: c_ulong, data: ?*anyopaque) void {
    procs.glGetBufferSubData.?(target, offset, size, data);
}
pub inline fn glMapBuffer(target: @"enum", access: @"enum") ?*anyopaque {
    return procs.glMapBuffer.?(target, access);
}
pub inline fn glUnmapBuffer(target: @"enum") @"bool" {
    return procs.glUnmapBuffer.?(target);
}
pub inline fn glGetBufferParameteriv(target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetBufferParameteriv.?(target, pname, params);
}
pub inline fn glGetBufferPointerv(target: @"enum", pname: @"enum", params: [*c]?*anyopaque) void {
    procs.glGetBufferPointerv.?(target, pname, params);
}
pub inline fn glBlendEquationSeparate(modeRGB: @"enum", modeAlpha: @"enum") void {
    procs.glBlendEquationSeparate.?(modeRGB, modeAlpha);
}
pub inline fn glDrawBuffers(n: c_int, bufs: [*c]const @"enum") void {
    procs.glDrawBuffers.?(n, bufs);
}
pub inline fn glStencilOpSeparate(face: @"enum", sfail: @"enum", dpfail: @"enum", dppass: @"enum") void {
    procs.glStencilOpSeparate.?(face, sfail, dpfail, dppass);
}
pub inline fn glStencilFuncSeparate(face: @"enum", func: @"enum", ref: c_int, mask: c_uint) void {
    procs.glStencilFuncSeparate.?(face, func, ref, mask);
}
pub inline fn glStencilMaskSeparate(face: @"enum", mask: c_uint) void {
    procs.glStencilMaskSeparate.?(face, mask);
}
pub inline fn glAttachShader(program: c_uint, shader: c_uint) void {
    procs.glAttachShader.?(program, shader);
}
pub inline fn glBindAttribLocation(program: c_uint, index: c_uint, name: [*c]const u8) void {
    procs.glBindAttribLocation.?(program, index, name);
}
pub inline fn glCompileShader(shader: c_uint) void {
    procs.glCompileShader.?(shader);
}
pub inline fn glCreateProgram() c_uint {
    return procs.glCreateProgram.?();
}
pub inline fn glCreateShader(@"type": @"enum") c_uint {
    return procs.glCreateShader.?(@"type");
}
pub inline fn glDeleteProgram(program: c_uint) void {
    procs.glDeleteProgram.?(program);
}
pub inline fn glDeleteShader(shader: c_uint) void {
    procs.glDeleteShader.?(shader);
}
pub inline fn glDetachShader(program: c_uint, shader: c_uint) void {
    procs.glDetachShader.?(program, shader);
}
pub inline fn glDisableVertexAttribArray(index: c_uint) void {
    procs.glDisableVertexAttribArray.?(index);
}
pub inline fn glEnableVertexAttribArray(index: c_uint) void {
    procs.glEnableVertexAttribArray.?(index);
}
pub inline fn glGetActiveAttrib(program: c_uint, index: c_uint, bufSize: c_int, length: [*c]c_int, size: [*c]c_int, @"type": [*c]@"enum", name: [*c]u8) void {
    procs.glGetActiveAttrib.?(program, index, bufSize, length, size, @"type", name);
}
pub inline fn glGetActiveUniform(program: c_uint, index: c_uint, bufSize: c_int, length: [*c]c_int, size: [*c]c_int, @"type": [*c]@"enum", name: [*c]u8) void {
    procs.glGetActiveUniform.?(program, index, bufSize, length, size, @"type", name);
}
pub inline fn glGetAttachedShaders(program: c_uint, maxCount: c_int, count: [*c]c_int, shaders: [*c]c_uint) void {
    procs.glGetAttachedShaders.?(program, maxCount, count, shaders);
}
pub inline fn glGetAttribLocation(program: c_uint, name: [*c]const u8) c_int {
    return procs.glGetAttribLocation.?(program, name);
}
pub inline fn glGetProgramiv(program: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetProgramiv.?(program, pname, params);
}
pub inline fn glGetProgramInfoLog(program: c_uint, bufSize: c_int, length: [*c]c_int, infoLog: [*c]u8) void {
    procs.glGetProgramInfoLog.?(program, bufSize, length, infoLog);
}
pub inline fn glGetShaderiv(shader: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetShaderiv.?(shader, pname, params);
}
pub inline fn glGetShaderInfoLog(shader: c_uint, bufSize: c_int, length: [*c]c_int, infoLog: [*c]u8) void {
    procs.glGetShaderInfoLog.?(shader, bufSize, length, infoLog);
}
pub inline fn glGetShaderSource(shader: c_uint, bufSize: c_int, length: [*c]c_int, source: [*c]u8) void {
    procs.glGetShaderSource.?(shader, bufSize, length, source);
}
pub inline fn glGetUniformLocation(program: c_uint, name: [*c]const u8) c_int {
    return procs.glGetUniformLocation.?(program, name);
}
pub inline fn glGetUniformfv(program: c_uint, location: c_int, params: [*c]f32) void {
    procs.glGetUniformfv.?(program, location, params);
}
pub inline fn glGetUniformiv(program: c_uint, location: c_int, params: [*c]c_int) void {
    procs.glGetUniformiv.?(program, location, params);
}
pub inline fn glGetVertexAttribdv(index: c_uint, pname: @"enum", params: [*c]f64) void {
    procs.glGetVertexAttribdv.?(index, pname, params);
}
pub inline fn glGetVertexAttribfv(index: c_uint, pname: @"enum", params: [*c]f32) void {
    procs.glGetVertexAttribfv.?(index, pname, params);
}
pub inline fn glGetVertexAttribiv(index: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetVertexAttribiv.?(index, pname, params);
}
pub inline fn glGetVertexAttribPointerv(index: c_uint, pname: @"enum", pointer: [*c]?*anyopaque) void {
    procs.glGetVertexAttribPointerv.?(index, pname, pointer);
}
pub inline fn glIsProgram(program: c_uint) @"bool" {
    return procs.glIsProgram.?(program);
}
pub inline fn glIsShader(shader: c_uint) @"bool" {
    return procs.glIsShader.?(shader);
}
pub inline fn glLinkProgram(program: c_uint) void {
    procs.glLinkProgram.?(program);
}
pub inline fn glShaderSource(shader: c_uint, count: c_int, string: [*c]const [*c]const u8, length: [*c]const c_int) void {
    procs.glShaderSource.?(shader, count, string, length);
}
pub inline fn glUseProgram(program: c_uint) void {
    procs.glUseProgram.?(program);
}
pub inline fn glUniform1f(location: c_int, v0: f32) void {
    procs.glUniform1f.?(location, v0);
}
pub inline fn glUniform2f(location: c_int, v0: f32, v1: f32) void {
    procs.glUniform2f.?(location, v0, v1);
}
pub inline fn glUniform3f(location: c_int, v0: f32, v1: f32, v2: f32) void {
    procs.glUniform3f.?(location, v0, v1, v2);
}
pub inline fn glUniform4f(location: c_int, v0: f32, v1: f32, v2: f32, v3: f32) void {
    procs.glUniform4f.?(location, v0, v1, v2, v3);
}
pub inline fn glUniform1i(location: c_int, v0: c_int) void {
    procs.glUniform1i.?(location, v0);
}
pub inline fn glUniform2i(location: c_int, v0: c_int, v1: c_int) void {
    procs.glUniform2i.?(location, v0, v1);
}
pub inline fn glUniform3i(location: c_int, v0: c_int, v1: c_int, v2: c_int) void {
    procs.glUniform3i.?(location, v0, v1, v2);
}
pub inline fn glUniform4i(location: c_int, v0: c_int, v1: c_int, v2: c_int, v3: c_int) void {
    procs.glUniform4i.?(location, v0, v1, v2, v3);
}
pub inline fn glUniform1fv(location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glUniform1fv.?(location, count, value);
}
pub inline fn glUniform2fv(location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glUniform2fv.?(location, count, value);
}
pub inline fn glUniform3fv(location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glUniform3fv.?(location, count, value);
}
pub inline fn glUniform4fv(location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glUniform4fv.?(location, count, value);
}
pub inline fn glUniform1iv(location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glUniform1iv.?(location, count, value);
}
pub inline fn glUniform2iv(location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glUniform2iv.?(location, count, value);
}
pub inline fn glUniform3iv(location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glUniform3iv.?(location, count, value);
}
pub inline fn glUniform4iv(location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glUniform4iv.?(location, count, value);
}
pub inline fn glUniformMatrix2fv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glUniformMatrix2fv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix3fv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glUniformMatrix3fv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix4fv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glUniformMatrix4fv.?(location, count, transpose, value);
}
pub inline fn glValidateProgram(program: c_uint) void {
    procs.glValidateProgram.?(program);
}
pub inline fn glVertexAttrib1d(index: c_uint, x: f64) void {
    procs.glVertexAttrib1d.?(index, x);
}
pub inline fn glVertexAttrib1dv(index: c_uint, v: [*c]const f64) void {
    procs.glVertexAttrib1dv.?(index, v);
}
pub inline fn glVertexAttrib1f(index: c_uint, x: f32) void {
    procs.glVertexAttrib1f.?(index, x);
}
pub inline fn glVertexAttrib1fv(index: c_uint, v: [*c]const f32) void {
    procs.glVertexAttrib1fv.?(index, v);
}
pub inline fn glVertexAttrib1s(index: c_uint, x: c_short) void {
    procs.glVertexAttrib1s.?(index, x);
}
pub inline fn glVertexAttrib1sv(index: c_uint, v: [*c]const c_short) void {
    procs.glVertexAttrib1sv.?(index, v);
}
pub inline fn glVertexAttrib2d(index: c_uint, x: f64, y: f64) void {
    procs.glVertexAttrib2d.?(index, x, y);
}
pub inline fn glVertexAttrib2dv(index: c_uint, v: [*c]const f64) void {
    procs.glVertexAttrib2dv.?(index, v);
}
pub inline fn glVertexAttrib2f(index: c_uint, x: f32, y: f32) void {
    procs.glVertexAttrib2f.?(index, x, y);
}
pub inline fn glVertexAttrib2fv(index: c_uint, v: [*c]const f32) void {
    procs.glVertexAttrib2fv.?(index, v);
}
pub inline fn glVertexAttrib2s(index: c_uint, x: c_short, y: c_short) void {
    procs.glVertexAttrib2s.?(index, x, y);
}
pub inline fn glVertexAttrib2sv(index: c_uint, v: [*c]const c_short) void {
    procs.glVertexAttrib2sv.?(index, v);
}
pub inline fn glVertexAttrib3d(index: c_uint, x: f64, y: f64, z: f64) void {
    procs.glVertexAttrib3d.?(index, x, y, z);
}
pub inline fn glVertexAttrib3dv(index: c_uint, v: [*c]const f64) void {
    procs.glVertexAttrib3dv.?(index, v);
}
pub inline fn glVertexAttrib3f(index: c_uint, x: f32, y: f32, z: f32) void {
    procs.glVertexAttrib3f.?(index, x, y, z);
}
pub inline fn glVertexAttrib3fv(index: c_uint, v: [*c]const f32) void {
    procs.glVertexAttrib3fv.?(index, v);
}
pub inline fn glVertexAttrib3s(index: c_uint, x: c_short, y: c_short, z: c_short) void {
    procs.glVertexAttrib3s.?(index, x, y, z);
}
pub inline fn glVertexAttrib3sv(index: c_uint, v: [*c]const c_short) void {
    procs.glVertexAttrib3sv.?(index, v);
}
pub inline fn glVertexAttrib4Nbv(index: c_uint, v: [*c]const i8) void {
    procs.glVertexAttrib4Nbv.?(index, v);
}
pub inline fn glVertexAttrib4Niv(index: c_uint, v: [*c]const c_int) void {
    procs.glVertexAttrib4Niv.?(index, v);
}
pub inline fn glVertexAttrib4Nsv(index: c_uint, v: [*c]const c_short) void {
    procs.glVertexAttrib4Nsv.?(index, v);
}
pub inline fn glVertexAttrib4Nub(index: c_uint, x: u8, y: u8, z: u8, w: u8) void {
    procs.glVertexAttrib4Nub.?(index, x, y, z, w);
}
pub inline fn glVertexAttrib4Nubv(index: c_uint, v: [*c]const u8) void {
    procs.glVertexAttrib4Nubv.?(index, v);
}
pub inline fn glVertexAttrib4Nuiv(index: c_uint, v: [*c]const c_uint) void {
    procs.glVertexAttrib4Nuiv.?(index, v);
}
pub inline fn glVertexAttrib4Nusv(index: c_uint, v: [*c]const c_ushort) void {
    procs.glVertexAttrib4Nusv.?(index, v);
}
pub inline fn glVertexAttrib4bv(index: c_uint, v: [*c]const i8) void {
    procs.glVertexAttrib4bv.?(index, v);
}
pub inline fn glVertexAttrib4d(index: c_uint, x: f64, y: f64, z: f64, w: f64) void {
    procs.glVertexAttrib4d.?(index, x, y, z, w);
}
pub inline fn glVertexAttrib4dv(index: c_uint, v: [*c]const f64) void {
    procs.glVertexAttrib4dv.?(index, v);
}
pub inline fn glVertexAttrib4f(index: c_uint, x: f32, y: f32, z: f32, w: f32) void {
    procs.glVertexAttrib4f.?(index, x, y, z, w);
}
pub inline fn glVertexAttrib4fv(index: c_uint, v: [*c]const f32) void {
    procs.glVertexAttrib4fv.?(index, v);
}
pub inline fn glVertexAttrib4iv(index: c_uint, v: [*c]const c_int) void {
    procs.glVertexAttrib4iv.?(index, v);
}
pub inline fn glVertexAttrib4s(index: c_uint, x: c_short, y: c_short, z: c_short, w: c_short) void {
    procs.glVertexAttrib4s.?(index, x, y, z, w);
}
pub inline fn glVertexAttrib4sv(index: c_uint, v: [*c]const c_short) void {
    procs.glVertexAttrib4sv.?(index, v);
}
pub inline fn glVertexAttrib4ubv(index: c_uint, v: [*c]const u8) void {
    procs.glVertexAttrib4ubv.?(index, v);
}
pub inline fn glVertexAttrib4uiv(index: c_uint, v: [*c]const c_uint) void {
    procs.glVertexAttrib4uiv.?(index, v);
}
pub inline fn glVertexAttrib4usv(index: c_uint, v: [*c]const c_ushort) void {
    procs.glVertexAttrib4usv.?(index, v);
}
pub inline fn glVertexAttribPointer(index: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", stride: c_int, pointer: ?*const anyopaque) void {
    procs.glVertexAttribPointer.?(index, size, @"type", normalized, stride, pointer);
}
pub inline fn glUniformMatrix2x3fv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glUniformMatrix2x3fv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix3x2fv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glUniformMatrix3x2fv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix2x4fv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glUniformMatrix2x4fv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix4x2fv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glUniformMatrix4x2fv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix3x4fv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glUniformMatrix3x4fv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix4x3fv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glUniformMatrix4x3fv.?(location, count, transpose, value);
}
pub inline fn glColorMaski(index: c_uint, r: @"bool", g: @"bool", b: @"bool", a: @"bool") void {
    procs.glColorMaski.?(index, r, g, b, a);
}
pub inline fn glGetBooleani_v(target: @"enum", index: c_uint, data: [*c]@"bool") void {
    procs.glGetBooleani_v.?(target, index, data);
}
pub inline fn glGetIntegeri_v(target: @"enum", index: c_uint, data: [*c]c_int) void {
    procs.glGetIntegeri_v.?(target, index, data);
}
pub inline fn glEnablei(target: @"enum", index: c_uint) void {
    procs.glEnablei.?(target, index);
}
pub inline fn glDisablei(target: @"enum", index: c_uint) void {
    procs.glDisablei.?(target, index);
}
pub inline fn glIsEnabledi(target: @"enum", index: c_uint) @"bool" {
    return procs.glIsEnabledi.?(target, index);
}
pub inline fn glBeginTransformFeedback(primitiveMode: @"enum") void {
    procs.glBeginTransformFeedback.?(primitiveMode);
}
pub inline fn glEndTransformFeedback() void {
    procs.glEndTransformFeedback.?();
}
pub inline fn glBindBufferRange(target: @"enum", index: c_uint, buffer: c_uint, offset: c_long, size: c_ulong) void {
    procs.glBindBufferRange.?(target, index, buffer, offset, size);
}
pub inline fn glBindBufferBase(target: @"enum", index: c_uint, buffer: c_uint) void {
    procs.glBindBufferBase.?(target, index, buffer);
}
pub inline fn glTransformFeedbackVaryings(program: c_uint, count: c_int, varyings: [*c]const [*c]const u8, bufferMode: @"enum") void {
    procs.glTransformFeedbackVaryings.?(program, count, varyings, bufferMode);
}
pub inline fn glGetTransformFeedbackVarying(program: c_uint, index: c_uint, bufSize: c_int, length: [*c]c_int, size: [*c]c_int, @"type": [*c]@"enum", name: [*c]u8) void {
    procs.glGetTransformFeedbackVarying.?(program, index, bufSize, length, size, @"type", name);
}
pub inline fn glClampColor(target: @"enum", clamp: @"enum") void {
    procs.glClampColor.?(target, clamp);
}
pub inline fn glBeginConditionalRender(id: c_uint, mode: @"enum") void {
    procs.glBeginConditionalRender.?(id, mode);
}
pub inline fn glEndConditionalRender() void {
    procs.glEndConditionalRender.?();
}
pub inline fn glVertexAttribIPointer(index: c_uint, size: c_int, @"type": @"enum", stride: c_int, pointer: ?*const anyopaque) void {
    procs.glVertexAttribIPointer.?(index, size, @"type", stride, pointer);
}
pub inline fn glGetVertexAttribIiv(index: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetVertexAttribIiv.?(index, pname, params);
}
pub inline fn glGetVertexAttribIuiv(index: c_uint, pname: @"enum", params: [*c]c_uint) void {
    procs.glGetVertexAttribIuiv.?(index, pname, params);
}
pub inline fn glVertexAttribI1i(index: c_uint, x: c_int) void {
    procs.glVertexAttribI1i.?(index, x);
}
pub inline fn glVertexAttribI2i(index: c_uint, x: c_int, y: c_int) void {
    procs.glVertexAttribI2i.?(index, x, y);
}
pub inline fn glVertexAttribI3i(index: c_uint, x: c_int, y: c_int, z: c_int) void {
    procs.glVertexAttribI3i.?(index, x, y, z);
}
pub inline fn glVertexAttribI4i(index: c_uint, x: c_int, y: c_int, z: c_int, w: c_int) void {
    procs.glVertexAttribI4i.?(index, x, y, z, w);
}
pub inline fn glVertexAttribI1ui(index: c_uint, x: c_uint) void {
    procs.glVertexAttribI1ui.?(index, x);
}
pub inline fn glVertexAttribI2ui(index: c_uint, x: c_uint, y: c_uint) void {
    procs.glVertexAttribI2ui.?(index, x, y);
}
pub inline fn glVertexAttribI3ui(index: c_uint, x: c_uint, y: c_uint, z: c_uint) void {
    procs.glVertexAttribI3ui.?(index, x, y, z);
}
pub inline fn glVertexAttribI4ui(index: c_uint, x: c_uint, y: c_uint, z: c_uint, w: c_uint) void {
    procs.glVertexAttribI4ui.?(index, x, y, z, w);
}
pub inline fn glVertexAttribI1iv(index: c_uint, v: [*c]const c_int) void {
    procs.glVertexAttribI1iv.?(index, v);
}
pub inline fn glVertexAttribI2iv(index: c_uint, v: [*c]const c_int) void {
    procs.glVertexAttribI2iv.?(index, v);
}
pub inline fn glVertexAttribI3iv(index: c_uint, v: [*c]const c_int) void {
    procs.glVertexAttribI3iv.?(index, v);
}
pub inline fn glVertexAttribI4iv(index: c_uint, v: [*c]const c_int) void {
    procs.glVertexAttribI4iv.?(index, v);
}
pub inline fn glVertexAttribI1uiv(index: c_uint, v: [*c]const c_uint) void {
    procs.glVertexAttribI1uiv.?(index, v);
}
pub inline fn glVertexAttribI2uiv(index: c_uint, v: [*c]const c_uint) void {
    procs.glVertexAttribI2uiv.?(index, v);
}
pub inline fn glVertexAttribI3uiv(index: c_uint, v: [*c]const c_uint) void {
    procs.glVertexAttribI3uiv.?(index, v);
}
pub inline fn glVertexAttribI4uiv(index: c_uint, v: [*c]const c_uint) void {
    procs.glVertexAttribI4uiv.?(index, v);
}
pub inline fn glVertexAttribI4bv(index: c_uint, v: [*c]const i8) void {
    procs.glVertexAttribI4bv.?(index, v);
}
pub inline fn glVertexAttribI4sv(index: c_uint, v: [*c]const c_short) void {
    procs.glVertexAttribI4sv.?(index, v);
}
pub inline fn glVertexAttribI4ubv(index: c_uint, v: [*c]const u8) void {
    procs.glVertexAttribI4ubv.?(index, v);
}
pub inline fn glVertexAttribI4usv(index: c_uint, v: [*c]const c_ushort) void {
    procs.glVertexAttribI4usv.?(index, v);
}
pub inline fn glGetUniformuiv(program: c_uint, location: c_int, params: [*c]c_uint) void {
    procs.glGetUniformuiv.?(program, location, params);
}
pub inline fn glBindFragDataLocation(program: c_uint, color: c_uint, name: [*c]const u8) void {
    procs.glBindFragDataLocation.?(program, color, name);
}
pub inline fn glGetFragDataLocation(program: c_uint, name: [*c]const u8) c_int {
    return procs.glGetFragDataLocation.?(program, name);
}
pub inline fn glUniform1ui(location: c_int, v0: c_uint) void {
    procs.glUniform1ui.?(location, v0);
}
pub inline fn glUniform2ui(location: c_int, v0: c_uint, v1: c_uint) void {
    procs.glUniform2ui.?(location, v0, v1);
}
pub inline fn glUniform3ui(location: c_int, v0: c_uint, v1: c_uint, v2: c_uint) void {
    procs.glUniform3ui.?(location, v0, v1, v2);
}
pub inline fn glUniform4ui(location: c_int, v0: c_uint, v1: c_uint, v2: c_uint, v3: c_uint) void {
    procs.glUniform4ui.?(location, v0, v1, v2, v3);
}
pub inline fn glUniform1uiv(location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glUniform1uiv.?(location, count, value);
}
pub inline fn glUniform2uiv(location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glUniform2uiv.?(location, count, value);
}
pub inline fn glUniform3uiv(location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glUniform3uiv.?(location, count, value);
}
pub inline fn glUniform4uiv(location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glUniform4uiv.?(location, count, value);
}
pub inline fn glTexParameterIiv(target: @"enum", pname: @"enum", params: [*c]const c_int) void {
    procs.glTexParameterIiv.?(target, pname, params);
}
pub inline fn glTexParameterIuiv(target: @"enum", pname: @"enum", params: [*c]const c_uint) void {
    procs.glTexParameterIuiv.?(target, pname, params);
}
pub inline fn glGetTexParameterIiv(target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetTexParameterIiv.?(target, pname, params);
}
pub inline fn glGetTexParameterIuiv(target: @"enum", pname: @"enum", params: [*c]c_uint) void {
    procs.glGetTexParameterIuiv.?(target, pname, params);
}
pub inline fn glClearBufferiv(buffer: @"enum", drawbuffer: c_int, value: [*c]const c_int) void {
    procs.glClearBufferiv.?(buffer, drawbuffer, value);
}
pub inline fn glClearBufferuiv(buffer: @"enum", drawbuffer: c_int, value: [*c]const c_uint) void {
    procs.glClearBufferuiv.?(buffer, drawbuffer, value);
}
pub inline fn glClearBufferfv(buffer: @"enum", drawbuffer: c_int, value: [*c]const f32) void {
    procs.glClearBufferfv.?(buffer, drawbuffer, value);
}
pub inline fn glClearBufferfi(buffer: @"enum", drawbuffer: c_int, depth: f32, stencil: c_int) void {
    procs.glClearBufferfi.?(buffer, drawbuffer, depth, stencil);
}
pub inline fn glGetStringi(name: @"enum", index: c_uint) [*c]const u8 {
    return procs.glGetStringi.?(name, index);
}
pub inline fn glIsRenderbuffer(renderbuffer: c_uint) @"bool" {
    return procs.glIsRenderbuffer.?(renderbuffer);
}
pub inline fn glBindRenderbuffer(target: @"enum", renderbuffer: c_uint) void {
    procs.glBindRenderbuffer.?(target, renderbuffer);
}
pub inline fn glDeleteRenderbuffers(n: c_int, renderbuffers: [*c]const c_uint) void {
    procs.glDeleteRenderbuffers.?(n, renderbuffers);
}
pub inline fn glGenRenderbuffers(n: c_int, renderbuffers: [*c]c_uint) void {
    procs.glGenRenderbuffers.?(n, renderbuffers);
}
pub inline fn glRenderbufferStorage(target: @"enum", internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glRenderbufferStorage.?(target, internalformat, width, height);
}
pub inline fn glGetRenderbufferParameteriv(target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetRenderbufferParameteriv.?(target, pname, params);
}
pub inline fn glIsFramebuffer(framebuffer: c_uint) @"bool" {
    return procs.glIsFramebuffer.?(framebuffer);
}
pub inline fn glBindFramebuffer(target: @"enum", framebuffer: c_uint) void {
    procs.glBindFramebuffer.?(target, framebuffer);
}
pub inline fn glDeleteFramebuffers(n: c_int, framebuffers: [*c]const c_uint) void {
    procs.glDeleteFramebuffers.?(n, framebuffers);
}
pub inline fn glGenFramebuffers(n: c_int, framebuffers: [*c]c_uint) void {
    procs.glGenFramebuffers.?(n, framebuffers);
}
pub inline fn glCheckFramebufferStatus(target: @"enum") @"enum" {
    return procs.glCheckFramebufferStatus.?(target);
}
pub inline fn glFramebufferTexture1D(target: @"enum", attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int) void {
    procs.glFramebufferTexture1D.?(target, attachment, textarget, texture, level);
}
pub inline fn glFramebufferTexture2D(target: @"enum", attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int) void {
    procs.glFramebufferTexture2D.?(target, attachment, textarget, texture, level);
}
pub inline fn glFramebufferTexture3D(target: @"enum", attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int, zoffset: c_int) void {
    procs.glFramebufferTexture3D.?(target, attachment, textarget, texture, level, zoffset);
}
pub inline fn glFramebufferRenderbuffer(target: @"enum", attachment: @"enum", renderbuffertarget: @"enum", renderbuffer: c_uint) void {
    procs.glFramebufferRenderbuffer.?(target, attachment, renderbuffertarget, renderbuffer);
}
pub inline fn glGetFramebufferAttachmentParameteriv(target: @"enum", attachment: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetFramebufferAttachmentParameteriv.?(target, attachment, pname, params);
}
pub inline fn glGenerateMipmap(target: @"enum") void {
    procs.glGenerateMipmap.?(target);
}
pub inline fn glBlitFramebuffer(srcX0: c_int, srcY0: c_int, srcX1: c_int, srcY1: c_int, dstX0: c_int, dstY0: c_int, dstX1: c_int, dstY1: c_int, mask: Bitfield, filter: @"enum") void {
    procs.glBlitFramebuffer.?(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
}
pub inline fn glRenderbufferStorageMultisample(target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glRenderbufferStorageMultisample.?(target, samples, internalformat, width, height);
}
pub inline fn glFramebufferTextureLayer(target: @"enum", attachment: @"enum", texture: c_uint, level: c_int, layer: c_int) void {
    procs.glFramebufferTextureLayer.?(target, attachment, texture, level, layer);
}
pub inline fn glMapBufferRange(target: @"enum", offset: c_long, length: c_ulong, access: Bitfield) ?*anyopaque {
    return procs.glMapBufferRange.?(target, offset, length, access);
}
pub inline fn glFlushMappedBufferRange(target: @"enum", offset: c_long, length: c_ulong) void {
    procs.glFlushMappedBufferRange.?(target, offset, length);
}
pub inline fn glBindVertexArray(array: c_uint) void {
    procs.glBindVertexArray.?(array);
}
pub inline fn glDeleteVertexArrays(n: c_int, arrays: [*c]const c_uint) void {
    procs.glDeleteVertexArrays.?(n, arrays);
}
pub inline fn glGenVertexArrays(n: c_int, arrays: [*c]c_uint) void {
    procs.glGenVertexArrays.?(n, arrays);
}
pub inline fn glIsVertexArray(array: c_uint) @"bool" {
    return procs.glIsVertexArray.?(array);
}
pub inline fn glDrawArraysInstanced(mode: @"enum", first: c_int, count: c_int, instance_count: c_int) void {
    procs.glDrawArraysInstanced.?(mode, first, count, instance_count);
}
pub inline fn glDrawElementsInstanced(mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, instance_count: c_int) void {
    procs.glDrawElementsInstanced.?(mode, count, @"type", indices, instance_count);
}
pub inline fn glTexBuffer(target: @"enum", internalformat: @"enum", buffer: c_uint) void {
    procs.glTexBuffer.?(target, internalformat, buffer);
}
pub inline fn glPrimitiveRestartIndex(index: c_uint) void {
    procs.glPrimitiveRestartIndex.?(index);
}
pub inline fn glCopyBufferSubData(readTarget: @"enum", writeTarget: @"enum", readOffset: c_long, writeOffset: c_long, size: c_ulong) void {
    procs.glCopyBufferSubData.?(readTarget, writeTarget, readOffset, writeOffset, size);
}
pub inline fn glGetUniformIndices(program: c_uint, uniformCount: c_int, uniformNames: [*c]const [*c]const u8, uniformIndices: [*c]c_uint) void {
    procs.glGetUniformIndices.?(program, uniformCount, uniformNames, uniformIndices);
}
pub inline fn glGetActiveUniformsiv(program: c_uint, uniformCount: c_int, uniformIndices: [*c]const c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetActiveUniformsiv.?(program, uniformCount, uniformIndices, pname, params);
}
pub inline fn glGetActiveUniformName(program: c_uint, uniformIndex: c_uint, bufSize: c_int, length: [*c]c_int, uniformName: [*c]u8) void {
    procs.glGetActiveUniformName.?(program, uniformIndex, bufSize, length, uniformName);
}
pub inline fn glGetUniformBlockIndex(program: c_uint, uniformBlockName: [*c]const u8) c_uint {
    return procs.glGetUniformBlockIndex.?(program, uniformBlockName);
}
pub inline fn glGetActiveUniformBlockiv(program: c_uint, uniformBlockIndex: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetActiveUniformBlockiv.?(program, uniformBlockIndex, pname, params);
}
pub inline fn glGetActiveUniformBlockName(program: c_uint, uniformBlockIndex: c_uint, bufSize: c_int, length: [*c]c_int, uniformBlockName: [*c]u8) void {
    procs.glGetActiveUniformBlockName.?(program, uniformBlockIndex, bufSize, length, uniformBlockName);
}
pub inline fn glUniformBlockBinding(program: c_uint, uniformBlockIndex: c_uint, uniformBlockBinding: c_uint) void {
    procs.glUniformBlockBinding.?(program, uniformBlockIndex, uniformBlockBinding);
}
pub inline fn glDrawElementsBaseVertex(mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, basevertex: c_int) void {
    procs.glDrawElementsBaseVertex.?(mode, count, @"type", indices, basevertex);
}
pub inline fn glDrawRangeElementsBaseVertex(mode: @"enum", start: c_uint, end: c_uint, count: c_int, @"type": @"enum", indices: ?*const anyopaque, basevertex: c_int) void {
    procs.glDrawRangeElementsBaseVertex.?(mode, start, end, count, @"type", indices, basevertex);
}
pub inline fn glDrawElementsInstancedBaseVertex(mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, instance_count: c_int, basevertex: c_int) void {
    procs.glDrawElementsInstancedBaseVertex.?(mode, count, @"type", indices, instance_count, basevertex);
}
pub inline fn glMultiDrawElementsBaseVertex(mode: @"enum", count: [*c]const c_int, @"type": @"enum", indices: [*c]const ?*const anyopaque, drawcount: c_int, basevertex: [*c]const c_int) void {
    procs.glMultiDrawElementsBaseVertex.?(mode, count, @"type", indices, drawcount, basevertex);
}
pub inline fn glProvokingVertex(mode: @"enum") void {
    procs.glProvokingVertex.?(mode);
}
pub inline fn glFenceSync(condition: @"enum", flags: Bitfield) Sync {
    return procs.glFenceSync.?(condition, flags);
}
pub inline fn glIsSync(sync: Sync) @"bool" {
    return procs.glIsSync.?(sync);
}
pub inline fn glDeleteSync(sync: Sync) void {
    procs.glDeleteSync.?(sync);
}
pub inline fn glClientWaitSync(sync: Sync, flags: Bitfield, timeout: u64) @"enum" {
    return procs.glClientWaitSync.?(sync, flags, timeout);
}
pub inline fn glWaitSync(sync: Sync, flags: Bitfield, timeout: u64) void {
    procs.glWaitSync.?(sync, flags, timeout);
}
pub inline fn glGetInteger64v(pname: @"enum", data: [*c]i64) void {
    procs.glGetInteger64v.?(pname, data);
}
pub inline fn glGetSynciv(sync: Sync, pname: @"enum", count: c_int, length: [*c]c_int, values: [*c]c_int) void {
    procs.glGetSynciv.?(sync, pname, count, length, values);
}
pub inline fn glGetInteger64i_v(target: @"enum", index: c_uint, data: [*c]i64) void {
    procs.glGetInteger64i_v.?(target, index, data);
}
pub inline fn glGetBufferParameteri64v(target: @"enum", pname: @"enum", params: [*c]i64) void {
    procs.glGetBufferParameteri64v.?(target, pname, params);
}
pub inline fn glFramebufferTexture(target: @"enum", attachment: @"enum", texture: c_uint, level: c_int) void {
    procs.glFramebufferTexture.?(target, attachment, texture, level);
}
pub inline fn glTexImage2DMultisample(target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, fixedsamplelocations: @"bool") void {
    procs.glTexImage2DMultisample.?(target, samples, internalformat, width, height, fixedsamplelocations);
}
pub inline fn glTexImage3DMultisample(target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, fixedsamplelocations: @"bool") void {
    procs.glTexImage3DMultisample.?(target, samples, internalformat, width, height, depth, fixedsamplelocations);
}
pub inline fn glGetMultisamplefv(pname: @"enum", index: c_uint, val: [*c]f32) void {
    procs.glGetMultisamplefv.?(pname, index, val);
}
pub inline fn glSampleMaski(maskNumber: c_uint, mask: Bitfield) void {
    procs.glSampleMaski.?(maskNumber, mask);
}
pub inline fn glBindFragDataLocationIndexed(program: c_uint, colorNumber: c_uint, index: c_uint, name: [*c]const u8) void {
    procs.glBindFragDataLocationIndexed.?(program, colorNumber, index, name);
}
pub inline fn glGetFragDataIndex(program: c_uint, name: [*c]const u8) c_int {
    return procs.glGetFragDataIndex.?(program, name);
}
pub inline fn glGenSamplers(count: c_int, samplers: [*c]c_uint) void {
    procs.glGenSamplers.?(count, samplers);
}
pub inline fn glDeleteSamplers(count: c_int, samplers: [*c]const c_uint) void {
    procs.glDeleteSamplers.?(count, samplers);
}
pub inline fn glIsSampler(sampler: c_uint) @"bool" {
    return procs.glIsSampler.?(sampler);
}
pub inline fn glBindSampler(unit: c_uint, sampler: c_uint) void {
    procs.glBindSampler.?(unit, sampler);
}
pub inline fn glSamplerParameteri(sampler: c_uint, pname: @"enum", param: c_int) void {
    procs.glSamplerParameteri.?(sampler, pname, param);
}
pub inline fn glSamplerParameteriv(sampler: c_uint, pname: @"enum", param: [*c]const c_int) void {
    procs.glSamplerParameteriv.?(sampler, pname, param);
}
pub inline fn glSamplerParameterf(sampler: c_uint, pname: @"enum", param: f32) void {
    procs.glSamplerParameterf.?(sampler, pname, param);
}
pub inline fn glSamplerParameterfv(sampler: c_uint, pname: @"enum", param: [*c]const f32) void {
    procs.glSamplerParameterfv.?(sampler, pname, param);
}
pub inline fn glSamplerParameterIiv(sampler: c_uint, pname: @"enum", param: [*c]const c_int) void {
    procs.glSamplerParameterIiv.?(sampler, pname, param);
}
pub inline fn glSamplerParameterIuiv(sampler: c_uint, pname: @"enum", param: [*c]const c_uint) void {
    procs.glSamplerParameterIuiv.?(sampler, pname, param);
}
pub inline fn glGetSamplerParameteriv(sampler: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetSamplerParameteriv.?(sampler, pname, params);
}
pub inline fn glGetSamplerParameterIiv(sampler: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetSamplerParameterIiv.?(sampler, pname, params);
}
pub inline fn glGetSamplerParameterfv(sampler: c_uint, pname: @"enum", params: [*c]f32) void {
    procs.glGetSamplerParameterfv.?(sampler, pname, params);
}
pub inline fn glGetSamplerParameterIuiv(sampler: c_uint, pname: @"enum", params: [*c]c_uint) void {
    procs.glGetSamplerParameterIuiv.?(sampler, pname, params);
}
pub inline fn glQueryCounter(id: c_uint, target: @"enum") void {
    procs.glQueryCounter.?(id, target);
}
pub inline fn glGetQueryObjecti64v(id: c_uint, pname: @"enum", params: [*c]i64) void {
    procs.glGetQueryObjecti64v.?(id, pname, params);
}
pub inline fn glGetQueryObjectui64v(id: c_uint, pname: @"enum", params: [*c]u64) void {
    procs.glGetQueryObjectui64v.?(id, pname, params);
}
pub inline fn glVertexAttribDivisor(index: c_uint, divisor: c_uint) void {
    procs.glVertexAttribDivisor.?(index, divisor);
}
pub inline fn glVertexAttribP1ui(index: c_uint, @"type": @"enum", normalized: @"bool", value: c_uint) void {
    procs.glVertexAttribP1ui.?(index, @"type", normalized, value);
}
pub inline fn glVertexAttribP1uiv(index: c_uint, @"type": @"enum", normalized: @"bool", value: [*c]const c_uint) void {
    procs.glVertexAttribP1uiv.?(index, @"type", normalized, value);
}
pub inline fn glVertexAttribP2ui(index: c_uint, @"type": @"enum", normalized: @"bool", value: c_uint) void {
    procs.glVertexAttribP2ui.?(index, @"type", normalized, value);
}
pub inline fn glVertexAttribP2uiv(index: c_uint, @"type": @"enum", normalized: @"bool", value: [*c]const c_uint) void {
    procs.glVertexAttribP2uiv.?(index, @"type", normalized, value);
}
pub inline fn glVertexAttribP3ui(index: c_uint, @"type": @"enum", normalized: @"bool", value: c_uint) void {
    procs.glVertexAttribP3ui.?(index, @"type", normalized, value);
}
pub inline fn glVertexAttribP3uiv(index: c_uint, @"type": @"enum", normalized: @"bool", value: [*c]const c_uint) void {
    procs.glVertexAttribP3uiv.?(index, @"type", normalized, value);
}
pub inline fn glVertexAttribP4ui(index: c_uint, @"type": @"enum", normalized: @"bool", value: c_uint) void {
    procs.glVertexAttribP4ui.?(index, @"type", normalized, value);
}
pub inline fn glVertexAttribP4uiv(index: c_uint, @"type": @"enum", normalized: @"bool", value: [*c]const c_uint) void {
    procs.glVertexAttribP4uiv.?(index, @"type", normalized, value);
}
pub inline fn glMinSampleShading(value: f32) void {
    procs.glMinSampleShading.?(value);
}
pub inline fn glBlendEquationi(buf: c_uint, mode: @"enum") void {
    procs.glBlendEquationi.?(buf, mode);
}
pub inline fn glBlendEquationSeparatei(buf: c_uint, modeRGB: @"enum", modeAlpha: @"enum") void {
    procs.glBlendEquationSeparatei.?(buf, modeRGB, modeAlpha);
}
pub inline fn glBlendFunci(buf: c_uint, src: @"enum", dst: @"enum") void {
    procs.glBlendFunci.?(buf, src, dst);
}
pub inline fn glBlendFuncSeparatei(buf: c_uint, srcRGB: @"enum", dstRGB: @"enum", srcAlpha: @"enum", dstAlpha: @"enum") void {
    procs.glBlendFuncSeparatei.?(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
}
pub inline fn glDrawArraysIndirect(mode: @"enum", indirect: ?*const anyopaque) void {
    procs.glDrawArraysIndirect.?(mode, indirect);
}
pub inline fn glDrawElementsIndirect(mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque) void {
    procs.glDrawElementsIndirect.?(mode, @"type", indirect);
}
pub inline fn glUniform1d(location: c_int, x: f64) void {
    procs.glUniform1d.?(location, x);
}
pub inline fn glUniform2d(location: c_int, x: f64, y: f64) void {
    procs.glUniform2d.?(location, x, y);
}
pub inline fn glUniform3d(location: c_int, x: f64, y: f64, z: f64) void {
    procs.glUniform3d.?(location, x, y, z);
}
pub inline fn glUniform4d(location: c_int, x: f64, y: f64, z: f64, w: f64) void {
    procs.glUniform4d.?(location, x, y, z, w);
}
pub inline fn glUniform1dv(location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glUniform1dv.?(location, count, value);
}
pub inline fn glUniform2dv(location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glUniform2dv.?(location, count, value);
}
pub inline fn glUniform3dv(location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glUniform3dv.?(location, count, value);
}
pub inline fn glUniform4dv(location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glUniform4dv.?(location, count, value);
}
pub inline fn glUniformMatrix2dv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glUniformMatrix2dv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix3dv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glUniformMatrix3dv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix4dv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glUniformMatrix4dv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix2x3dv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glUniformMatrix2x3dv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix2x4dv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glUniformMatrix2x4dv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix3x2dv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glUniformMatrix3x2dv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix3x4dv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glUniformMatrix3x4dv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix4x2dv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glUniformMatrix4x2dv.?(location, count, transpose, value);
}
pub inline fn glUniformMatrix4x3dv(location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glUniformMatrix4x3dv.?(location, count, transpose, value);
}
pub inline fn glGetUniformdv(program: c_uint, location: c_int, params: [*c]f64) void {
    procs.glGetUniformdv.?(program, location, params);
}
pub inline fn glGetSubroutineUniformLocation(program: c_uint, shadertype: @"enum", name: [*c]const u8) c_int {
    return procs.glGetSubroutineUniformLocation.?(program, shadertype, name);
}
pub inline fn glGetSubroutineIndex(program: c_uint, shadertype: @"enum", name: [*c]const u8) c_uint {
    return procs.glGetSubroutineIndex.?(program, shadertype, name);
}
pub inline fn glGetActiveSubroutineUniformiv(program: c_uint, shadertype: @"enum", index: c_uint, pname: @"enum", values: [*c]c_int) void {
    procs.glGetActiveSubroutineUniformiv.?(program, shadertype, index, pname, values);
}
pub inline fn glGetActiveSubroutineUniformName(program: c_uint, shadertype: @"enum", index: c_uint, bufSize: c_int, length: [*c]c_int, name: [*c]u8) void {
    procs.glGetActiveSubroutineUniformName.?(program, shadertype, index, bufSize, length, name);
}
pub inline fn glGetActiveSubroutineName(program: c_uint, shadertype: @"enum", index: c_uint, bufSize: c_int, length: [*c]c_int, name: [*c]u8) void {
    procs.glGetActiveSubroutineName.?(program, shadertype, index, bufSize, length, name);
}
pub inline fn glUniformSubroutinesuiv(shadertype: @"enum", count: c_int, indices: [*c]const c_uint) void {
    procs.glUniformSubroutinesuiv.?(shadertype, count, indices);
}
pub inline fn glGetUniformSubroutineuiv(shadertype: @"enum", location: c_int, params: [*c]c_uint) void {
    procs.glGetUniformSubroutineuiv.?(shadertype, location, params);
}
pub inline fn glGetProgramStageiv(program: c_uint, shadertype: @"enum", pname: @"enum", values: [*c]c_int) void {
    procs.glGetProgramStageiv.?(program, shadertype, pname, values);
}
pub inline fn glPatchParameteri(pname: @"enum", value: c_int) void {
    procs.glPatchParameteri.?(pname, value);
}
pub inline fn glPatchParameterfv(pname: @"enum", values: [*c]const f32) void {
    procs.glPatchParameterfv.?(pname, values);
}
pub inline fn glBindTransformFeedback(target: @"enum", id: c_uint) void {
    procs.glBindTransformFeedback.?(target, id);
}
pub inline fn glDeleteTransformFeedbacks(n: c_int, ids: [*c]const c_uint) void {
    procs.glDeleteTransformFeedbacks.?(n, ids);
}
pub inline fn glGenTransformFeedbacks(n: c_int, ids: [*c]c_uint) void {
    procs.glGenTransformFeedbacks.?(n, ids);
}
pub inline fn glIsTransformFeedback(id: c_uint) @"bool" {
    return procs.glIsTransformFeedback.?(id);
}
pub inline fn glPauseTransformFeedback() void {
    procs.glPauseTransformFeedback.?();
}
pub inline fn glResumeTransformFeedback() void {
    procs.glResumeTransformFeedback.?();
}
pub inline fn glDrawTransformFeedback(mode: @"enum", id: c_uint) void {
    procs.glDrawTransformFeedback.?(mode, id);
}
pub inline fn glDrawTransformFeedbackStream(mode: @"enum", id: c_uint, stream: c_uint) void {
    procs.glDrawTransformFeedbackStream.?(mode, id, stream);
}
pub inline fn glBeginQueryIndexed(target: @"enum", index: c_uint, id: c_uint) void {
    procs.glBeginQueryIndexed.?(target, index, id);
}
pub inline fn glEndQueryIndexed(target: @"enum", index: c_uint) void {
    procs.glEndQueryIndexed.?(target, index);
}
pub inline fn glGetQueryIndexediv(target: @"enum", index: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetQueryIndexediv.?(target, index, pname, params);
}
pub inline fn glReleaseShaderCompiler() void {
    procs.glReleaseShaderCompiler.?();
}
pub inline fn glShaderBinary(count: c_int, shaders: [*c]const c_uint, binaryFormat: @"enum", binary: ?*const anyopaque, length: c_int) void {
    procs.glShaderBinary.?(count, shaders, binaryFormat, binary, length);
}
pub inline fn glGetShaderPrecisionFormat(shadertype: @"enum", precisiontype: @"enum", range: [*c]c_int, precision: [*c]c_int) void {
    procs.glGetShaderPrecisionFormat.?(shadertype, precisiontype, range, precision);
}
pub inline fn glDepthRangef(n: f32, f: f32) void {
    procs.glDepthRangef.?(n, f);
}
pub inline fn glClearDepthf(d: f32) void {
    procs.glClearDepthf.?(d);
}
pub inline fn glGetProgramBinary(program: c_uint, bufSize: c_int, length: [*c]c_int, binaryFormat: [*c]@"enum", binary: ?*anyopaque) void {
    procs.glGetProgramBinary.?(program, bufSize, length, binaryFormat, binary);
}
pub inline fn glProgramBinary(program: c_uint, binaryFormat: @"enum", binary: ?*const anyopaque, length: c_int) void {
    procs.glProgramBinary.?(program, binaryFormat, binary, length);
}
pub inline fn glProgramParameteri(program: c_uint, pname: @"enum", value: c_int) void {
    procs.glProgramParameteri.?(program, pname, value);
}
pub inline fn glUseProgramStages(pipeline: c_uint, stages: Bitfield, program: c_uint) void {
    procs.glUseProgramStages.?(pipeline, stages, program);
}
pub inline fn glActiveShaderProgram(pipeline: c_uint, program: c_uint) void {
    procs.glActiveShaderProgram.?(pipeline, program);
}
pub inline fn glCreateShaderProgramv(@"type": @"enum", count: c_int, strings: [*c]const [*c]const u8) c_uint {
    return procs.glCreateShaderProgramv.?(@"type", count, strings);
}
pub inline fn glBindProgramPipeline(pipeline: c_uint) void {
    procs.glBindProgramPipeline.?(pipeline);
}
pub inline fn glDeleteProgramPipelines(n: c_int, pipelines: [*c]const c_uint) void {
    procs.glDeleteProgramPipelines.?(n, pipelines);
}
pub inline fn glGenProgramPipelines(n: c_int, pipelines: [*c]c_uint) void {
    procs.glGenProgramPipelines.?(n, pipelines);
}
pub inline fn glIsProgramPipeline(pipeline: c_uint) @"bool" {
    return procs.glIsProgramPipeline.?(pipeline);
}
pub inline fn glGetProgramPipelineiv(pipeline: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetProgramPipelineiv.?(pipeline, pname, params);
}
pub inline fn glProgramUniform1i(program: c_uint, location: c_int, v0: c_int) void {
    procs.glProgramUniform1i.?(program, location, v0);
}
pub inline fn glProgramUniform1iv(program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glProgramUniform1iv.?(program, location, count, value);
}
pub inline fn glProgramUniform1f(program: c_uint, location: c_int, v0: f32) void {
    procs.glProgramUniform1f.?(program, location, v0);
}
pub inline fn glProgramUniform1fv(program: c_uint, location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glProgramUniform1fv.?(program, location, count, value);
}
pub inline fn glProgramUniform1d(program: c_uint, location: c_int, v0: f64) void {
    procs.glProgramUniform1d.?(program, location, v0);
}
pub inline fn glProgramUniform1dv(program: c_uint, location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glProgramUniform1dv.?(program, location, count, value);
}
pub inline fn glProgramUniform1ui(program: c_uint, location: c_int, v0: c_uint) void {
    procs.glProgramUniform1ui.?(program, location, v0);
}
pub inline fn glProgramUniform1uiv(program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glProgramUniform1uiv.?(program, location, count, value);
}
pub inline fn glProgramUniform2i(program: c_uint, location: c_int, v0: c_int, v1: c_int) void {
    procs.glProgramUniform2i.?(program, location, v0, v1);
}
pub inline fn glProgramUniform2iv(program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glProgramUniform2iv.?(program, location, count, value);
}
pub inline fn glProgramUniform2f(program: c_uint, location: c_int, v0: f32, v1: f32) void {
    procs.glProgramUniform2f.?(program, location, v0, v1);
}
pub inline fn glProgramUniform2fv(program: c_uint, location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glProgramUniform2fv.?(program, location, count, value);
}
pub inline fn glProgramUniform2d(program: c_uint, location: c_int, v0: f64, v1: f64) void {
    procs.glProgramUniform2d.?(program, location, v0, v1);
}
pub inline fn glProgramUniform2dv(program: c_uint, location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glProgramUniform2dv.?(program, location, count, value);
}
pub inline fn glProgramUniform2ui(program: c_uint, location: c_int, v0: c_uint, v1: c_uint) void {
    procs.glProgramUniform2ui.?(program, location, v0, v1);
}
pub inline fn glProgramUniform2uiv(program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glProgramUniform2uiv.?(program, location, count, value);
}
pub inline fn glProgramUniform3i(program: c_uint, location: c_int, v0: c_int, v1: c_int, v2: c_int) void {
    procs.glProgramUniform3i.?(program, location, v0, v1, v2);
}
pub inline fn glProgramUniform3iv(program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glProgramUniform3iv.?(program, location, count, value);
}
pub inline fn glProgramUniform3f(program: c_uint, location: c_int, v0: f32, v1: f32, v2: f32) void {
    procs.glProgramUniform3f.?(program, location, v0, v1, v2);
}
pub inline fn glProgramUniform3fv(program: c_uint, location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glProgramUniform3fv.?(program, location, count, value);
}
pub inline fn glProgramUniform3d(program: c_uint, location: c_int, v0: f64, v1: f64, v2: f64) void {
    procs.glProgramUniform3d.?(program, location, v0, v1, v2);
}
pub inline fn glProgramUniform3dv(program: c_uint, location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glProgramUniform3dv.?(program, location, count, value);
}
pub inline fn glProgramUniform3ui(program: c_uint, location: c_int, v0: c_uint, v1: c_uint, v2: c_uint) void {
    procs.glProgramUniform3ui.?(program, location, v0, v1, v2);
}
pub inline fn glProgramUniform3uiv(program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glProgramUniform3uiv.?(program, location, count, value);
}
pub inline fn glProgramUniform4i(program: c_uint, location: c_int, v0: c_int, v1: c_int, v2: c_int, v3: c_int) void {
    procs.glProgramUniform4i.?(program, location, v0, v1, v2, v3);
}
pub inline fn glProgramUniform4iv(program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glProgramUniform4iv.?(program, location, count, value);
}
pub inline fn glProgramUniform4f(program: c_uint, location: c_int, v0: f32, v1: f32, v2: f32, v3: f32) void {
    procs.glProgramUniform4f.?(program, location, v0, v1, v2, v3);
}
pub inline fn glProgramUniform4fv(program: c_uint, location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glProgramUniform4fv.?(program, location, count, value);
}
pub inline fn glProgramUniform4d(program: c_uint, location: c_int, v0: f64, v1: f64, v2: f64, v3: f64) void {
    procs.glProgramUniform4d.?(program, location, v0, v1, v2, v3);
}
pub inline fn glProgramUniform4dv(program: c_uint, location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glProgramUniform4dv.?(program, location, count, value);
}
pub inline fn glProgramUniform4ui(program: c_uint, location: c_int, v0: c_uint, v1: c_uint, v2: c_uint, v3: c_uint) void {
    procs.glProgramUniform4ui.?(program, location, v0, v1, v2, v3);
}
pub inline fn glProgramUniform4uiv(program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glProgramUniform4uiv.?(program, location, count, value);
}
pub inline fn glProgramUniformMatrix2fv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix2fv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3fv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix3fv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4fv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix4fv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix2dv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix2dv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3dv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix3dv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4dv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix4dv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix2x3fv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix2x3fv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3x2fv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix3x2fv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix2x4fv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix2x4fv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4x2fv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix4x2fv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3x4fv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix3x4fv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4x3fv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix4x3fv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix2x3dv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix2x3dv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3x2dv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix3x2dv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix2x4dv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix2x4dv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4x2dv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix4x2dv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3x4dv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix3x4dv.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4x3dv(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix4x3dv.?(program, location, count, transpose, value);
}
pub inline fn glValidateProgramPipeline(pipeline: c_uint) void {
    procs.glValidateProgramPipeline.?(pipeline);
}
pub inline fn glGetProgramPipelineInfoLog(pipeline: c_uint, bufSize: c_int, length: [*c]c_int, infoLog: [*c]u8) void {
    procs.glGetProgramPipelineInfoLog.?(pipeline, bufSize, length, infoLog);
}
pub inline fn glVertexAttribL1d(index: c_uint, x: f64) void {
    procs.glVertexAttribL1d.?(index, x);
}
pub inline fn glVertexAttribL2d(index: c_uint, x: f64, y: f64) void {
    procs.glVertexAttribL2d.?(index, x, y);
}
pub inline fn glVertexAttribL3d(index: c_uint, x: f64, y: f64, z: f64) void {
    procs.glVertexAttribL3d.?(index, x, y, z);
}
pub inline fn glVertexAttribL4d(index: c_uint, x: f64, y: f64, z: f64, w: f64) void {
    procs.glVertexAttribL4d.?(index, x, y, z, w);
}
pub inline fn glVertexAttribL1dv(index: c_uint, v: [*c]const f64) void {
    procs.glVertexAttribL1dv.?(index, v);
}
pub inline fn glVertexAttribL2dv(index: c_uint, v: [*c]const f64) void {
    procs.glVertexAttribL2dv.?(index, v);
}
pub inline fn glVertexAttribL3dv(index: c_uint, v: [*c]const f64) void {
    procs.glVertexAttribL3dv.?(index, v);
}
pub inline fn glVertexAttribL4dv(index: c_uint, v: [*c]const f64) void {
    procs.glVertexAttribL4dv.?(index, v);
}
pub inline fn glVertexAttribLPointer(index: c_uint, size: c_int, @"type": @"enum", stride: c_int, pointer: ?*const anyopaque) void {
    procs.glVertexAttribLPointer.?(index, size, @"type", stride, pointer);
}
pub inline fn glGetVertexAttribLdv(index: c_uint, pname: @"enum", params: [*c]f64) void {
    procs.glGetVertexAttribLdv.?(index, pname, params);
}
pub inline fn glViewportArrayv(first: c_uint, count: c_int, v: [*c]const f32) void {
    procs.glViewportArrayv.?(first, count, v);
}
pub inline fn glViewportIndexedf(index: c_uint, x: f32, y: f32, w: f32, h: f32) void {
    procs.glViewportIndexedf.?(index, x, y, w, h);
}
pub inline fn glViewportIndexedfv(index: c_uint, v: [*c]const f32) void {
    procs.glViewportIndexedfv.?(index, v);
}
pub inline fn glScissorArrayv(first: c_uint, count: c_int, v: [*c]const c_int) void {
    procs.glScissorArrayv.?(first, count, v);
}
pub inline fn glScissorIndexed(index: c_uint, left: c_int, bottom: c_int, width: c_int, height: c_int) void {
    procs.glScissorIndexed.?(index, left, bottom, width, height);
}
pub inline fn glScissorIndexedv(index: c_uint, v: [*c]const c_int) void {
    procs.glScissorIndexedv.?(index, v);
}
pub inline fn glDepthRangeArrayv(first: c_uint, count: c_int, v: [*c]const f64) void {
    procs.glDepthRangeArrayv.?(first, count, v);
}
pub inline fn glDepthRangeIndexed(index: c_uint, n: f64, f: f64) void {
    procs.glDepthRangeIndexed.?(index, n, f);
}
pub inline fn glGetFloati_v(target: @"enum", index: c_uint, data: [*c]f32) void {
    procs.glGetFloati_v.?(target, index, data);
}
pub inline fn glGetDoublei_v(target: @"enum", index: c_uint, data: [*c]f64) void {
    procs.glGetDoublei_v.?(target, index, data);
}
pub inline fn glDrawArraysInstancedBaseInstance(mode: @"enum", first: c_int, count: c_int, instance_count: c_int, baseinstance: c_uint) void {
    procs.glDrawArraysInstancedBaseInstance.?(mode, first, count, instance_count, baseinstance);
}
pub inline fn glDrawElementsInstancedBaseInstance(mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, instance_count: c_int, baseinstance: c_uint) void {
    procs.glDrawElementsInstancedBaseInstance.?(mode, count, @"type", indices, instance_count, baseinstance);
}
pub inline fn glDrawElementsInstancedBaseVertexBaseInstance(mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, instance_count: c_int, basevertex: c_int, baseinstance: c_uint) void {
    procs.glDrawElementsInstancedBaseVertexBaseInstance.?(mode, count, @"type", indices, instance_count, basevertex, baseinstance);
}
pub inline fn glGetInternalformativ(target: @"enum", internalformat: @"enum", pname: @"enum", count: c_int, params: [*c]c_int) void {
    procs.glGetInternalformativ.?(target, internalformat, pname, count, params);
}
pub inline fn glGetActiveAtomicCounterBufferiv(program: c_uint, bufferIndex: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetActiveAtomicCounterBufferiv.?(program, bufferIndex, pname, params);
}
pub inline fn glBindImageTexture(unit: c_uint, texture: c_uint, level: c_int, layered: @"bool", layer: c_int, access: @"enum", format: @"enum") void {
    procs.glBindImageTexture.?(unit, texture, level, layered, layer, access, format);
}
pub inline fn glMemoryBarrier(barriers: Bitfield) void {
    procs.glMemoryBarrier.?(barriers);
}
pub inline fn glTexStorage1D(target: @"enum", levels: c_int, internalformat: @"enum", width: c_int) void {
    procs.glTexStorage1D.?(target, levels, internalformat, width);
}
pub inline fn glTexStorage2D(target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glTexStorage2D.?(target, levels, internalformat, width, height);
}
pub inline fn glTexStorage3D(target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int) void {
    procs.glTexStorage3D.?(target, levels, internalformat, width, height, depth);
}
pub inline fn glDrawTransformFeedbackInstanced(mode: @"enum", id: c_uint, instance_count: c_int) void {
    procs.glDrawTransformFeedbackInstanced.?(mode, id, instance_count);
}
pub inline fn glDrawTransformFeedbackStreamInstanced(mode: @"enum", id: c_uint, stream: c_uint, instance_count: c_int) void {
    procs.glDrawTransformFeedbackStreamInstanced.?(mode, id, stream, instance_count);
}
pub inline fn glClearBufferData(target: @"enum", internalformat: @"enum", format: @"enum", @"type": @"enum", data: ?*const anyopaque) void {
    procs.glClearBufferData.?(target, internalformat, format, @"type", data);
}
pub inline fn glClearBufferSubData(target: @"enum", internalformat: @"enum", offset: c_long, size: c_ulong, format: @"enum", @"type": @"enum", data: ?*const anyopaque) void {
    procs.glClearBufferSubData.?(target, internalformat, offset, size, format, @"type", data);
}
pub inline fn glDispatchCompute(num_groups_x: c_uint, num_groups_y: c_uint, num_groups_z: c_uint) void {
    procs.glDispatchCompute.?(num_groups_x, num_groups_y, num_groups_z);
}
pub inline fn glDispatchComputeIndirect(indirect: c_long) void {
    procs.glDispatchComputeIndirect.?(indirect);
}
pub inline fn glCopyImageSubData(srcName: c_uint, srcTarget: @"enum", srcLevel: c_int, srcX: c_int, srcY: c_int, srcZ: c_int, dstName: c_uint, dstTarget: @"enum", dstLevel: c_int, dstX: c_int, dstY: c_int, dstZ: c_int, srcWidth: c_int, srcHeight: c_int, srcDepth: c_int) void {
    procs.glCopyImageSubData.?(srcName, srcTarget, srcLevel, srcX, srcY, srcZ, dstName, dstTarget, dstLevel, dstX, dstY, dstZ, srcWidth, srcHeight, srcDepth);
}
pub inline fn glFramebufferParameteri(target: @"enum", pname: @"enum", param: c_int) void {
    procs.glFramebufferParameteri.?(target, pname, param);
}
pub inline fn glGetFramebufferParameteriv(target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetFramebufferParameteriv.?(target, pname, params);
}
pub inline fn glGetInternalformati64v(target: @"enum", internalformat: @"enum", pname: @"enum", count: c_int, params: [*c]i64) void {
    procs.glGetInternalformati64v.?(target, internalformat, pname, count, params);
}
pub inline fn glInvalidateTexSubImage(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int) void {
    procs.glInvalidateTexSubImage.?(texture, level, xoffset, yoffset, zoffset, width, height, depth);
}
pub inline fn glInvalidateTexImage(texture: c_uint, level: c_int) void {
    procs.glInvalidateTexImage.?(texture, level);
}
pub inline fn glInvalidateBufferSubData(buffer: c_uint, offset: c_long, length: c_ulong) void {
    procs.glInvalidateBufferSubData.?(buffer, offset, length);
}
pub inline fn glInvalidateBufferData(buffer: c_uint) void {
    procs.glInvalidateBufferData.?(buffer);
}
pub inline fn glInvalidateFramebuffer(target: @"enum", numAttachments: c_int, attachments: [*c]const @"enum") void {
    procs.glInvalidateFramebuffer.?(target, numAttachments, attachments);
}
pub inline fn glInvalidateSubFramebuffer(target: @"enum", numAttachments: c_int, attachments: [*c]const @"enum", x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glInvalidateSubFramebuffer.?(target, numAttachments, attachments, x, y, width, height);
}
pub inline fn glMultiDrawArraysIndirect(mode: @"enum", indirect: ?*const anyopaque, drawcount: c_int, stride: c_int) void {
    procs.glMultiDrawArraysIndirect.?(mode, indirect, drawcount, stride);
}
pub inline fn glMultiDrawElementsIndirect(mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawcount: c_int, stride: c_int) void {
    procs.glMultiDrawElementsIndirect.?(mode, @"type", indirect, drawcount, stride);
}
pub inline fn glGetProgramInterfaceiv(program: c_uint, programInterface: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetProgramInterfaceiv.?(program, programInterface, pname, params);
}
pub inline fn glGetProgramResourceIndex(program: c_uint, programInterface: @"enum", name: [*c]const u8) c_uint {
    return procs.glGetProgramResourceIndex.?(program, programInterface, name);
}
pub inline fn glGetProgramResourceName(program: c_uint, programInterface: @"enum", index: c_uint, bufSize: c_int, length: [*c]c_int, name: [*c]u8) void {
    procs.glGetProgramResourceName.?(program, programInterface, index, bufSize, length, name);
}
pub inline fn glGetProgramResourceiv(program: c_uint, programInterface: @"enum", index: c_uint, propCount: c_int, props: [*c]const @"enum", count: c_int, length: [*c]c_int, params: [*c]c_int) void {
    procs.glGetProgramResourceiv.?(program, programInterface, index, propCount, props, count, length, params);
}
pub inline fn glGetProgramResourceLocation(program: c_uint, programInterface: @"enum", name: [*c]const u8) c_int {
    return procs.glGetProgramResourceLocation.?(program, programInterface, name);
}
pub inline fn glGetProgramResourceLocationIndex(program: c_uint, programInterface: @"enum", name: [*c]const u8) c_int {
    return procs.glGetProgramResourceLocationIndex.?(program, programInterface, name);
}
pub inline fn glShaderStorageBlockBinding(program: c_uint, storageBlockIndex: c_uint, storageBlockBinding: c_uint) void {
    procs.glShaderStorageBlockBinding.?(program, storageBlockIndex, storageBlockBinding);
}
pub inline fn glTexBufferRange(target: @"enum", internalformat: @"enum", buffer: c_uint, offset: c_long, size: c_ulong) void {
    procs.glTexBufferRange.?(target, internalformat, buffer, offset, size);
}
pub inline fn glTexStorage2DMultisample(target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, fixedsamplelocations: @"bool") void {
    procs.glTexStorage2DMultisample.?(target, samples, internalformat, width, height, fixedsamplelocations);
}
pub inline fn glTexStorage3DMultisample(target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, fixedsamplelocations: @"bool") void {
    procs.glTexStorage3DMultisample.?(target, samples, internalformat, width, height, depth, fixedsamplelocations);
}
pub inline fn glTextureView(texture: c_uint, target: @"enum", origtexture: c_uint, internalformat: @"enum", minlevel: c_uint, numlevels: c_uint, minlayer: c_uint, numlayers: c_uint) void {
    procs.glTextureView.?(texture, target, origtexture, internalformat, minlevel, numlevels, minlayer, numlayers);
}
pub inline fn glBindVertexBuffer(binding_index: c_uint, buffer: c_uint, offset: c_long, stride: c_int) void {
    procs.glBindVertexBuffer.?(binding_index, buffer, offset, stride);
}
pub inline fn glVertexAttribFormat(attribindex: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", relative_offset: c_uint) void {
    procs.glVertexAttribFormat.?(attribindex, size, @"type", normalized, relative_offset);
}
pub inline fn glVertexAttribIFormat(attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) void {
    procs.glVertexAttribIFormat.?(attribindex, size, @"type", relative_offset);
}
pub inline fn glVertexAttribLFormat(attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) void {
    procs.glVertexAttribLFormat.?(attribindex, size, @"type", relative_offset);
}
pub inline fn glVertexAttribBinding(attribindex: c_uint, binding_index: c_uint) void {
    procs.glVertexAttribBinding.?(attribindex, binding_index);
}
pub inline fn glVertexBindingDivisor(binding_index: c_uint, divisor: c_uint) void {
    procs.glVertexBindingDivisor.?(binding_index, divisor);
}
pub inline fn glDebugMessageControl(source: @"enum", @"type": @"enum", severity: @"enum", count: c_int, ids: [*c]const c_uint, enabled: @"bool") void {
    procs.glDebugMessageControl.?(source, @"type", severity, count, ids, enabled);
}
pub inline fn glDebugMessageInsert(source: @"enum", @"type": @"enum", id: c_uint, severity: @"enum", length: c_int, buf: [*c]const u8) void {
    procs.glDebugMessageInsert.?(source, @"type", id, severity, length, buf);
}
pub inline fn glDebugMessageCallback(callback: GLDEBUGPROC, userParam: ?*const anyopaque) void {
    procs.glDebugMessageCallback.?(callback, userParam);
}
pub inline fn glGetDebugMessageLog(count: c_uint, bufSize: c_int, sources: [*c]@"enum", types: [*c]@"enum", ids: [*c]c_uint, severities: [*c]@"enum", lengths: [*c]c_int, messageLog: [*c]u8) c_uint {
    return procs.glGetDebugMessageLog.?(count, bufSize, sources, types, ids, severities, lengths, messageLog);
}
pub inline fn glPushDebugGroup(source: @"enum", id: c_uint, length: c_int, message: [*c]const u8) void {
    procs.glPushDebugGroup.?(source, id, length, message);
}
pub inline fn glPopDebugGroup() void {
    procs.glPopDebugGroup.?();
}
pub inline fn glObjectLabel(identifier: @"enum", name: c_uint, length: c_int, label: [*c]const u8) void {
    procs.glObjectLabel.?(identifier, name, length, label);
}
pub inline fn glGetObjectLabel(identifier: @"enum", name: c_uint, bufSize: c_int, length: [*c]c_int, label: [*c]u8) void {
    procs.glGetObjectLabel.?(identifier, name, bufSize, length, label);
}
pub inline fn glObjectPtrLabel(ptr: ?*const anyopaque, length: c_int, label: [*c]const u8) void {
    procs.glObjectPtrLabel.?(ptr, length, label);
}
pub inline fn glGetObjectPtrLabel(ptr: ?*const anyopaque, bufSize: c_int, length: [*c]c_int, label: [*c]u8) void {
    procs.glGetObjectPtrLabel.?(ptr, bufSize, length, label);
}
pub inline fn glBufferStorage(target: @"enum", size: c_ulong, data: ?*const anyopaque, flags: Bitfield) void {
    procs.glBufferStorage.?(target, size, data, flags);
}
pub inline fn glClearTexImage(texture: c_uint, level: c_int, format: @"enum", @"type": @"enum", data: ?*const anyopaque) void {
    procs.glClearTexImage.?(texture, level, format, @"type", data);
}
pub inline fn glClearTexSubImage(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", data: ?*const anyopaque) void {
    procs.glClearTexSubImage.?(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, @"type", data);
}
pub inline fn glBindBuffersBase(target: @"enum", first: c_uint, count: c_int, buffers: [*c]const c_uint) void {
    procs.glBindBuffersBase.?(target, first, count, buffers);
}
pub inline fn glBindBuffersRange(target: @"enum", first: c_uint, count: c_int, buffers: [*c]const c_uint, offsets: [*c]const c_long, sizes: [*c]const c_ulong) void {
    procs.glBindBuffersRange.?(target, first, count, buffers, offsets, sizes);
}
pub inline fn glBindTextures(first: c_uint, count: c_int, textures: [*c]const c_uint) void {
    procs.glBindTextures.?(first, count, textures);
}
pub inline fn glBindSamplers(first: c_uint, count: c_int, samplers: [*c]const c_uint) void {
    procs.glBindSamplers.?(first, count, samplers);
}
pub inline fn glBindImageTextures(first: c_uint, count: c_int, textures: [*c]const c_uint) void {
    procs.glBindImageTextures.?(first, count, textures);
}
pub inline fn glBindVertexBuffers(first: c_uint, count: c_int, buffers: [*c]const c_uint, offsets: [*c]const c_long, strides: [*c]const c_int) void {
    procs.glBindVertexBuffers.?(first, count, buffers, offsets, strides);
}
pub inline fn glClipControl(origin: @"enum", depth: @"enum") void {
    procs.glClipControl.?(origin, depth);
}
pub inline fn glCreateTransformFeedbacks(n: c_int, ids: [*c]c_uint) void {
    procs.glCreateTransformFeedbacks.?(n, ids);
}
pub inline fn glTransformFeedbackBufferBase(xfb: c_uint, index: c_uint, buffer: c_uint) void {
    procs.glTransformFeedbackBufferBase.?(xfb, index, buffer);
}
pub inline fn glTransformFeedbackBufferRange(xfb: c_uint, index: c_uint, buffer: c_uint, offset: c_long, size: c_ulong) void {
    procs.glTransformFeedbackBufferRange.?(xfb, index, buffer, offset, size);
}
pub inline fn glGetTransformFeedbackiv(xfb: c_uint, pname: @"enum", param: [*c]c_int) void {
    procs.glGetTransformFeedbackiv.?(xfb, pname, param);
}
pub inline fn glGetTransformFeedbacki_v(xfb: c_uint, pname: @"enum", index: c_uint, param: [*c]c_int) void {
    procs.glGetTransformFeedbacki_v.?(xfb, pname, index, param);
}
pub inline fn glGetTransformFeedbacki64_v(xfb: c_uint, pname: @"enum", index: c_uint, param: [*c]i64) void {
    procs.glGetTransformFeedbacki64_v.?(xfb, pname, index, param);
}
pub inline fn glCreateBuffers(n: c_int, buffers: [*c]c_uint) void {
    procs.glCreateBuffers.?(n, buffers);
}
pub inline fn glNamedBufferStorage(buffer: c_uint, size: c_ulong, data: ?*const anyopaque, flags: Bitfield) void {
    procs.glNamedBufferStorage.?(buffer, size, data, flags);
}
pub inline fn glNamedBufferData(buffer: c_uint, size: c_ulong, data: ?*const anyopaque, usage: @"enum") void {
    procs.glNamedBufferData.?(buffer, size, data, usage);
}
pub inline fn glNamedBufferSubData(buffer: c_uint, offset: c_long, size: c_ulong, data: ?*const anyopaque) void {
    procs.glNamedBufferSubData.?(buffer, offset, size, data);
}
pub inline fn glCopyNamedBufferSubData(readBuffer: c_uint, writeBuffer: c_uint, readOffset: c_long, writeOffset: c_long, size: c_ulong) void {
    procs.glCopyNamedBufferSubData.?(readBuffer, writeBuffer, readOffset, writeOffset, size);
}
pub inline fn glClearNamedBufferData(buffer: c_uint, internalformat: @"enum", format: @"enum", @"type": @"enum", data: ?*const anyopaque) void {
    procs.glClearNamedBufferData.?(buffer, internalformat, format, @"type", data);
}
pub inline fn glClearNamedBufferSubData(buffer: c_uint, internalformat: @"enum", offset: c_long, size: c_ulong, format: @"enum", @"type": @"enum", data: ?*const anyopaque) void {
    procs.glClearNamedBufferSubData.?(buffer, internalformat, offset, size, format, @"type", data);
}
pub inline fn glMapNamedBuffer(buffer: c_uint, access: @"enum") ?*anyopaque {
    return procs.glMapNamedBuffer.?(buffer, access);
}
pub inline fn glMapNamedBufferRange(buffer: c_uint, offset: c_long, length: c_ulong, access: Bitfield) ?*anyopaque {
    return procs.glMapNamedBufferRange.?(buffer, offset, length, access);
}
pub inline fn glUnmapNamedBuffer(buffer: c_uint) @"bool" {
    return procs.glUnmapNamedBuffer.?(buffer);
}
pub inline fn glFlushMappedNamedBufferRange(buffer: c_uint, offset: c_long, length: c_ulong) void {
    procs.glFlushMappedNamedBufferRange.?(buffer, offset, length);
}
pub inline fn glGetNamedBufferParameteriv(buffer: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetNamedBufferParameteriv.?(buffer, pname, params);
}
pub inline fn glGetNamedBufferParameteri64v(buffer: c_uint, pname: @"enum", params: [*c]i64) void {
    procs.glGetNamedBufferParameteri64v.?(buffer, pname, params);
}
pub inline fn glGetNamedBufferPointerv(buffer: c_uint, pname: @"enum", params: [*c]?*anyopaque) void {
    procs.glGetNamedBufferPointerv.?(buffer, pname, params);
}
pub inline fn glGetNamedBufferSubData(buffer: c_uint, offset: c_long, size: c_ulong, data: ?*anyopaque) void {
    procs.glGetNamedBufferSubData.?(buffer, offset, size, data);
}
pub inline fn glCreateFramebuffers(n: c_int, framebuffers: [*c]c_uint) void {
    procs.glCreateFramebuffers.?(n, framebuffers);
}
pub inline fn glNamedFramebufferRenderbuffer(framebuffer: c_uint, attachment: @"enum", renderbuffertarget: @"enum", renderbuffer: c_uint) void {
    procs.glNamedFramebufferRenderbuffer.?(framebuffer, attachment, renderbuffertarget, renderbuffer);
}
pub inline fn glNamedFramebufferParameteri(framebuffer: c_uint, pname: @"enum", param: c_int) void {
    procs.glNamedFramebufferParameteri.?(framebuffer, pname, param);
}
pub inline fn glNamedFramebufferTexture(framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int) void {
    procs.glNamedFramebufferTexture.?(framebuffer, attachment, texture, level);
}
pub inline fn glNamedFramebufferTextureLayer(framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int, layer: c_int) void {
    procs.glNamedFramebufferTextureLayer.?(framebuffer, attachment, texture, level, layer);
}
pub inline fn glNamedFramebufferDrawBuffer(framebuffer: c_uint, buf: @"enum") void {
    procs.glNamedFramebufferDrawBuffer.?(framebuffer, buf);
}
pub inline fn glNamedFramebufferDrawBuffers(framebuffer: c_uint, n: c_int, bufs: [*c]const @"enum") void {
    procs.glNamedFramebufferDrawBuffers.?(framebuffer, n, bufs);
}
pub inline fn glNamedFramebufferReadBuffer(framebuffer: c_uint, src: @"enum") void {
    procs.glNamedFramebufferReadBuffer.?(framebuffer, src);
}
pub inline fn glInvalidateNamedFramebufferData(framebuffer: c_uint, numAttachments: c_int, attachments: [*c]const @"enum") void {
    procs.glInvalidateNamedFramebufferData.?(framebuffer, numAttachments, attachments);
}
pub inline fn glInvalidateNamedFramebufferSubData(framebuffer: c_uint, numAttachments: c_int, attachments: [*c]const @"enum", x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glInvalidateNamedFramebufferSubData.?(framebuffer, numAttachments, attachments, x, y, width, height);
}
pub inline fn glClearNamedFramebufferiv(framebuffer: c_uint, buffer: @"enum", drawbuffer: c_int, value: [*c]const c_int) void {
    procs.glClearNamedFramebufferiv.?(framebuffer, buffer, drawbuffer, value);
}
pub inline fn glClearNamedFramebufferuiv(framebuffer: c_uint, buffer: @"enum", drawbuffer: c_int, value: [*c]const c_uint) void {
    procs.glClearNamedFramebufferuiv.?(framebuffer, buffer, drawbuffer, value);
}
pub inline fn glClearNamedFramebufferfv(framebuffer: c_uint, buffer: @"enum", drawbuffer: c_int, value: [*c]const f32) void {
    procs.glClearNamedFramebufferfv.?(framebuffer, buffer, drawbuffer, value);
}
pub inline fn glClearNamedFramebufferfi(framebuffer: c_uint, buffer: @"enum", drawbuffer: c_int, depth: f32, stencil: c_int) void {
    procs.glClearNamedFramebufferfi.?(framebuffer, buffer, drawbuffer, depth, stencil);
}
pub inline fn glBlitNamedFramebuffer(readFramebuffer: c_uint, drawFramebuffer: c_uint, srcX0: c_int, srcY0: c_int, srcX1: c_int, srcY1: c_int, dstX0: c_int, dstY0: c_int, dstX1: c_int, dstY1: c_int, mask: Bitfield, filter: @"enum") void {
    procs.glBlitNamedFramebuffer.?(readFramebuffer, drawFramebuffer, srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
}
pub inline fn glCheckNamedFramebufferStatus(framebuffer: c_uint, target: @"enum") @"enum" {
    return procs.glCheckNamedFramebufferStatus.?(framebuffer, target);
}
pub inline fn glGetNamedFramebufferParameteriv(framebuffer: c_uint, pname: @"enum", param: [*c]c_int) void {
    procs.glGetNamedFramebufferParameteriv.?(framebuffer, pname, param);
}
pub inline fn glGetNamedFramebufferAttachmentParameteriv(framebuffer: c_uint, attachment: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetNamedFramebufferAttachmentParameteriv.?(framebuffer, attachment, pname, params);
}
pub inline fn glCreateRenderbuffers(n: c_int, renderbuffers: [*c]c_uint) void {
    procs.glCreateRenderbuffers.?(n, renderbuffers);
}
pub inline fn glNamedRenderbufferStorage(renderbuffer: c_uint, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glNamedRenderbufferStorage.?(renderbuffer, internalformat, width, height);
}
pub inline fn glNamedRenderbufferStorageMultisample(renderbuffer: c_uint, samples: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glNamedRenderbufferStorageMultisample.?(renderbuffer, samples, internalformat, width, height);
}
pub inline fn glGetNamedRenderbufferParameteriv(renderbuffer: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetNamedRenderbufferParameteriv.?(renderbuffer, pname, params);
}
pub inline fn glCreateTextures(target: @"enum", n: c_int, textures: [*c]c_uint) void {
    procs.glCreateTextures.?(target, n, textures);
}
pub inline fn glTextureBuffer(texture: c_uint, internalformat: @"enum", buffer: c_uint) void {
    procs.glTextureBuffer.?(texture, internalformat, buffer);
}
pub inline fn glTextureBufferRange(texture: c_uint, internalformat: @"enum", buffer: c_uint, offset: c_long, size: c_ulong) void {
    procs.glTextureBufferRange.?(texture, internalformat, buffer, offset, size);
}
pub inline fn glTextureStorage1D(texture: c_uint, levels: c_int, internalformat: @"enum", width: c_int) void {
    procs.glTextureStorage1D.?(texture, levels, internalformat, width);
}
pub inline fn glTextureStorage2D(texture: c_uint, levels: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glTextureStorage2D.?(texture, levels, internalformat, width, height);
}
pub inline fn glTextureStorage3D(texture: c_uint, levels: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int) void {
    procs.glTextureStorage3D.?(texture, levels, internalformat, width, height, depth);
}
pub inline fn glTextureStorage2DMultisample(texture: c_uint, samples: c_int, internalformat: @"enum", width: c_int, height: c_int, fixedsamplelocations: @"bool") void {
    procs.glTextureStorage2DMultisample.?(texture, samples, internalformat, width, height, fixedsamplelocations);
}
pub inline fn glTextureStorage3DMultisample(texture: c_uint, samples: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, fixedsamplelocations: @"bool") void {
    procs.glTextureStorage3DMultisample.?(texture, samples, internalformat, width, height, depth, fixedsamplelocations);
}
pub inline fn glTextureSubImage1D(texture: c_uint, level: c_int, xoffset: c_int, width: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTextureSubImage1D.?(texture, level, xoffset, width, format, @"type", pixels);
}
pub inline fn glTextureSubImage2D(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTextureSubImage2D.?(texture, level, xoffset, yoffset, width, height, format, @"type", pixels);
}
pub inline fn glTextureSubImage3D(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTextureSubImage3D.?(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, @"type", pixels);
}
pub inline fn glCompressedTextureSubImage1D(texture: c_uint, level: c_int, xoffset: c_int, width: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) void {
    procs.glCompressedTextureSubImage1D.?(texture, level, xoffset, width, format, imageSize, data);
}
pub inline fn glCompressedTextureSubImage2D(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) void {
    procs.glCompressedTextureSubImage2D.?(texture, level, xoffset, yoffset, width, height, format, imageSize, data);
}
pub inline fn glCompressedTextureSubImage3D(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", imageSize: c_int, data: ?*const anyopaque) void {
    procs.glCompressedTextureSubImage3D.?(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data);
}
pub inline fn glCopyTextureSubImage1D(texture: c_uint, level: c_int, xoffset: c_int, x: c_int, y: c_int, width: c_int) void {
    procs.glCopyTextureSubImage1D.?(texture, level, xoffset, x, y, width);
}
pub inline fn glCopyTextureSubImage2D(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glCopyTextureSubImage2D.?(texture, level, xoffset, yoffset, x, y, width, height);
}
pub inline fn glCopyTextureSubImage3D(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glCopyTextureSubImage3D.?(texture, level, xoffset, yoffset, zoffset, x, y, width, height);
}
pub inline fn glTextureParameterf(texture: c_uint, pname: @"enum", param: f32) void {
    procs.glTextureParameterf.?(texture, pname, param);
}
pub inline fn glTextureParameterfv(texture: c_uint, pname: @"enum", param: [*c]const f32) void {
    procs.glTextureParameterfv.?(texture, pname, param);
}
pub inline fn glTextureParameteri(texture: c_uint, pname: @"enum", param: c_int) void {
    procs.glTextureParameteri.?(texture, pname, param);
}
pub inline fn glTextureParameterIiv(texture: c_uint, pname: @"enum", params: [*c]const c_int) void {
    procs.glTextureParameterIiv.?(texture, pname, params);
}
pub inline fn glTextureParameterIuiv(texture: c_uint, pname: @"enum", params: [*c]const c_uint) void {
    procs.glTextureParameterIuiv.?(texture, pname, params);
}
pub inline fn glTextureParameteriv(texture: c_uint, pname: @"enum", param: [*c]const c_int) void {
    procs.glTextureParameteriv.?(texture, pname, param);
}
pub inline fn glGenerateTextureMipmap(texture: c_uint) void {
    procs.glGenerateTextureMipmap.?(texture);
}
pub inline fn glBindTextureUnit(unit: c_uint, texture: c_uint) void {
    procs.glBindTextureUnit.?(unit, texture);
}
pub inline fn glGetTextureImage(texture: c_uint, level: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, pixels: ?*anyopaque) void {
    procs.glGetTextureImage.?(texture, level, format, @"type", bufSize, pixels);
}
pub inline fn glGetCompressedTextureImage(texture: c_uint, level: c_int, bufSize: c_int, pixels: ?*anyopaque) void {
    procs.glGetCompressedTextureImage.?(texture, level, bufSize, pixels);
}
pub inline fn glGetTextureLevelParameterfv(texture: c_uint, level: c_int, pname: @"enum", params: [*c]f32) void {
    procs.glGetTextureLevelParameterfv.?(texture, level, pname, params);
}
pub inline fn glGetTextureLevelParameteriv(texture: c_uint, level: c_int, pname: @"enum", params: [*c]c_int) void {
    procs.glGetTextureLevelParameteriv.?(texture, level, pname, params);
}
pub inline fn glGetTextureParameterfv(texture: c_uint, pname: @"enum", params: [*c]f32) void {
    procs.glGetTextureParameterfv.?(texture, pname, params);
}
pub inline fn glGetTextureParameterIiv(texture: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetTextureParameterIiv.?(texture, pname, params);
}
pub inline fn glGetTextureParameterIuiv(texture: c_uint, pname: @"enum", params: [*c]c_uint) void {
    procs.glGetTextureParameterIuiv.?(texture, pname, params);
}
pub inline fn glGetTextureParameteriv(texture: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetTextureParameteriv.?(texture, pname, params);
}
pub inline fn glCreateVertexArrays(n: c_int, arrays: [*c]c_uint) void {
    procs.glCreateVertexArrays.?(n, arrays);
}
pub inline fn glDisableVertexArrayAttrib(vaobj: c_uint, index: c_uint) void {
    procs.glDisableVertexArrayAttrib.?(vaobj, index);
}
pub inline fn glEnableVertexArrayAttrib(vaobj: c_uint, index: c_uint) void {
    procs.glEnableVertexArrayAttrib.?(vaobj, index);
}
pub inline fn glVertexArrayElementBuffer(vaobj: c_uint, buffer: c_uint) void {
    procs.glVertexArrayElementBuffer.?(vaobj, buffer);
}
pub inline fn glVertexArrayVertexBuffer(vaobj: c_uint, binding_index: c_uint, buffer: c_uint, offset: c_long, stride: c_int) void {
    procs.glVertexArrayVertexBuffer.?(vaobj, binding_index, buffer, offset, stride);
}
pub inline fn glVertexArrayVertexBuffers(vaobj: c_uint, first: c_uint, count: c_int, buffers: [*c]const c_uint, offsets: [*c]const c_long, strides: [*c]const c_int) void {
    procs.glVertexArrayVertexBuffers.?(vaobj, first, count, buffers, offsets, strides);
}
pub inline fn glVertexArrayAttribBinding(vaobj: c_uint, attribindex: c_uint, binding_index: c_uint) void {
    procs.glVertexArrayAttribBinding.?(vaobj, attribindex, binding_index);
}
pub inline fn glVertexArrayAttribFormat(vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", relative_offset: c_uint) void {
    procs.glVertexArrayAttribFormat.?(vaobj, attribindex, size, @"type", normalized, relative_offset);
}
pub inline fn glVertexArrayAttribIFormat(vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) void {
    procs.glVertexArrayAttribIFormat.?(vaobj, attribindex, size, @"type", relative_offset);
}
pub inline fn glVertexArrayAttribLFormat(vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) void {
    procs.glVertexArrayAttribLFormat.?(vaobj, attribindex, size, @"type", relative_offset);
}
pub inline fn glVertexArrayBindingDivisor(vaobj: c_uint, binding_index: c_uint, divisor: c_uint) void {
    procs.glVertexArrayBindingDivisor.?(vaobj, binding_index, divisor);
}
pub inline fn glGetVertexArrayiv(vaobj: c_uint, pname: @"enum", param: [*c]c_int) void {
    procs.glGetVertexArrayiv.?(vaobj, pname, param);
}
pub inline fn glGetVertexArrayIndexediv(vaobj: c_uint, index: c_uint, pname: @"enum", param: [*c]c_int) void {
    procs.glGetVertexArrayIndexediv.?(vaobj, index, pname, param);
}
pub inline fn glGetVertexArrayIndexed64iv(vaobj: c_uint, index: c_uint, pname: @"enum", param: [*c]i64) void {
    procs.glGetVertexArrayIndexed64iv.?(vaobj, index, pname, param);
}
pub inline fn glCreateSamplers(n: c_int, samplers: [*c]c_uint) void {
    procs.glCreateSamplers.?(n, samplers);
}
pub inline fn glCreateProgramPipelines(n: c_int, pipelines: [*c]c_uint) void {
    procs.glCreateProgramPipelines.?(n, pipelines);
}
pub inline fn glCreateQueries(target: @"enum", n: c_int, ids: [*c]c_uint) void {
    procs.glCreateQueries.?(target, n, ids);
}
pub inline fn glGetQueryBufferObjecti64v(id: c_uint, buffer: c_uint, pname: @"enum", offset: c_long) void {
    procs.glGetQueryBufferObjecti64v.?(id, buffer, pname, offset);
}
pub inline fn glGetQueryBufferObjectiv(id: c_uint, buffer: c_uint, pname: @"enum", offset: c_long) void {
    procs.glGetQueryBufferObjectiv.?(id, buffer, pname, offset);
}
pub inline fn glGetQueryBufferObjectui64v(id: c_uint, buffer: c_uint, pname: @"enum", offset: c_long) void {
    procs.glGetQueryBufferObjectui64v.?(id, buffer, pname, offset);
}
pub inline fn glGetQueryBufferObjectuiv(id: c_uint, buffer: c_uint, pname: @"enum", offset: c_long) void {
    procs.glGetQueryBufferObjectuiv.?(id, buffer, pname, offset);
}
pub inline fn glMemoryBarrierByRegion(barriers: Bitfield) void {
    procs.glMemoryBarrierByRegion.?(barriers);
}
pub inline fn glGetTextureSubImage(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, pixels: ?*anyopaque) void {
    procs.glGetTextureSubImage.?(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, @"type", bufSize, pixels);
}
pub inline fn glGetCompressedTextureSubImage(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, bufSize: c_int, pixels: ?*anyopaque) void {
    procs.glGetCompressedTextureSubImage.?(texture, level, xoffset, yoffset, zoffset, width, height, depth, bufSize, pixels);
}
pub inline fn glGetGraphicsResetStatus() @"enum" {
    return procs.glGetGraphicsResetStatus.?();
}
pub inline fn glGetnCompressedTexImage(target: @"enum", lod: c_int, bufSize: c_int, pixels: ?*anyopaque) void {
    procs.glGetnCompressedTexImage.?(target, lod, bufSize, pixels);
}
pub inline fn glGetnTexImage(target: @"enum", level: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, pixels: ?*anyopaque) void {
    procs.glGetnTexImage.?(target, level, format, @"type", bufSize, pixels);
}
pub inline fn glGetnUniformdv(program: c_uint, location: c_int, bufSize: c_int, params: [*c]f64) void {
    procs.glGetnUniformdv.?(program, location, bufSize, params);
}
pub inline fn glGetnUniformfv(program: c_uint, location: c_int, bufSize: c_int, params: [*c]f32) void {
    procs.glGetnUniformfv.?(program, location, bufSize, params);
}
pub inline fn glGetnUniformiv(program: c_uint, location: c_int, bufSize: c_int, params: [*c]c_int) void {
    procs.glGetnUniformiv.?(program, location, bufSize, params);
}
pub inline fn glGetnUniformuiv(program: c_uint, location: c_int, bufSize: c_int, params: [*c]c_uint) void {
    procs.glGetnUniformuiv.?(program, location, bufSize, params);
}
pub inline fn glReadnPixels(x: c_int, y: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, data: ?*anyopaque) void {
    procs.glReadnPixels.?(x, y, width, height, format, @"type", bufSize, data);
}
pub inline fn glTextureBarrier() void {
    procs.glTextureBarrier.?();
}
pub inline fn glSpecializeShader(shader: c_uint, pEntryPoint: [*c]const u8, numSpecializationConstants: c_uint, pConstantIndex: [*c]const c_uint, pConstantValue: [*c]const c_uint) void {
    procs.glSpecializeShader.?(shader, pEntryPoint, numSpecializationConstants, pConstantIndex, pConstantValue);
}
pub inline fn glMultiDrawArraysIndirectCount(mode: @"enum", indirect: ?*const anyopaque, drawcount: c_long, maxdrawcount: c_int, stride: c_int) void {
    procs.glMultiDrawArraysIndirectCount.?(mode, indirect, drawcount, maxdrawcount, stride);
}
pub inline fn glMultiDrawElementsIndirectCount(mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawcount: c_long, maxdrawcount: c_int, stride: c_int) void {
    procs.glMultiDrawElementsIndirectCount.?(mode, @"type", indirect, drawcount, maxdrawcount, stride);
}
pub inline fn glPolygonOffsetClamp(factor: f32, units: f32, clamp: f32) void {
    procs.glPolygonOffsetClamp.?(factor, units, clamp);
}
pub inline fn glPrimitiveBoundingBoxARB(minX: f32, minY: f32, minZ: f32, minW: f32, maxX: f32, maxY: f32, maxZ: f32, maxW: f32) void {
    procs.glPrimitiveBoundingBoxARB.?(minX, minY, minZ, minW, maxX, maxY, maxZ, maxW);
}
pub inline fn glGetTextureHandleARB(texture: c_uint) u64 {
    return procs.glGetTextureHandleARB.?(texture);
}
pub inline fn glGetTextureSamplerHandleARB(texture: c_uint, sampler: c_uint) u64 {
    return procs.glGetTextureSamplerHandleARB.?(texture, sampler);
}
pub inline fn glMakeTextureHandleResidentARB(handle: u64) void {
    procs.glMakeTextureHandleResidentARB.?(handle);
}
pub inline fn glMakeTextureHandleNonResidentARB(handle: u64) void {
    procs.glMakeTextureHandleNonResidentARB.?(handle);
}
pub inline fn glGetImageHandleARB(texture: c_uint, level: c_int, layered: @"bool", layer: c_int, format: @"enum") u64 {
    return procs.glGetImageHandleARB.?(texture, level, layered, layer, format);
}
pub inline fn glMakeImageHandleResidentARB(handle: u64, access: @"enum") void {
    procs.glMakeImageHandleResidentARB.?(handle, access);
}
pub inline fn glMakeImageHandleNonResidentARB(handle: u64) void {
    procs.glMakeImageHandleNonResidentARB.?(handle);
}
pub inline fn glUniformHandleui64ARB(location: c_int, value: u64) void {
    procs.glUniformHandleui64ARB.?(location, value);
}
pub inline fn glUniformHandleui64vARB(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniformHandleui64vARB.?(location, count, value);
}
pub inline fn glProgramUniformHandleui64ARB(program: c_uint, location: c_int, value: u64) void {
    procs.glProgramUniformHandleui64ARB.?(program, location, value);
}
pub inline fn glProgramUniformHandleui64vARB(program: c_uint, location: c_int, count: c_int, values: [*c]const u64) void {
    procs.glProgramUniformHandleui64vARB.?(program, location, count, values);
}
pub inline fn glIsTextureHandleResidentARB(handle: u64) @"bool" {
    return procs.glIsTextureHandleResidentARB.?(handle);
}
pub inline fn glIsImageHandleResidentARB(handle: u64) @"bool" {
    return procs.glIsImageHandleResidentARB.?(handle);
}
pub inline fn glVertexAttribL1ui64ARB(index: c_uint, x: u64) void {
    procs.glVertexAttribL1ui64ARB.?(index, x);
}
pub inline fn glVertexAttribL1ui64vARB(index: c_uint, v: [*c]const u64) void {
    procs.glVertexAttribL1ui64vARB.?(index, v);
}
pub inline fn glGetVertexAttribLui64vARB(index: c_uint, pname: @"enum", params: [*c]u64) void {
    procs.glGetVertexAttribLui64vARB.?(index, pname, params);
}
pub inline fn glCreateSyncFromCLeventARB(context: ?*struct__cl_context, event: ?*struct__cl_event, flags: Bitfield) Sync {
    return procs.glCreateSyncFromCLeventARB.?(context, event, flags);
}
pub inline fn glDispatchComputeGroupSizeARB(num_groups_x: c_uint, num_groups_y: c_uint, num_groups_z: c_uint, group_size_x: c_uint, group_size_y: c_uint, group_size_z: c_uint) void {
    procs.glDispatchComputeGroupSizeARB.?(num_groups_x, num_groups_y, num_groups_z, group_size_x, group_size_y, group_size_z);
}
pub inline fn glDebugMessageControlARB(source: @"enum", @"type": @"enum", severity: @"enum", count: c_int, ids: [*c]const c_uint, enabled: @"bool") void {
    procs.glDebugMessageControlARB.?(source, @"type", severity, count, ids, enabled);
}
pub inline fn glDebugMessageInsertARB(source: @"enum", @"type": @"enum", id: c_uint, severity: @"enum", length: c_int, buf: [*c]const u8) void {
    procs.glDebugMessageInsertARB.?(source, @"type", id, severity, length, buf);
}
pub inline fn glDebugMessageCallbackARB(callback: GLDEBUGPROCARB, userParam: ?*const anyopaque) void {
    procs.glDebugMessageCallbackARB.?(callback, userParam);
}
pub inline fn glGetDebugMessageLogARB(count: c_uint, bufSize: c_int, sources: [*c]@"enum", types: [*c]@"enum", ids: [*c]c_uint, severities: [*c]@"enum", lengths: [*c]c_int, messageLog: [*c]u8) c_uint {
    return procs.glGetDebugMessageLogARB.?(count, bufSize, sources, types, ids, severities, lengths, messageLog);
}
pub inline fn glBlendEquationiARB(buf: c_uint, mode: @"enum") void {
    procs.glBlendEquationiARB.?(buf, mode);
}
pub inline fn glBlendEquationSeparateiARB(buf: c_uint, modeRGB: @"enum", modeAlpha: @"enum") void {
    procs.glBlendEquationSeparateiARB.?(buf, modeRGB, modeAlpha);
}
pub inline fn glBlendFunciARB(buf: c_uint, src: @"enum", dst: @"enum") void {
    procs.glBlendFunciARB.?(buf, src, dst);
}
pub inline fn glBlendFuncSeparateiARB(buf: c_uint, srcRGB: @"enum", dstRGB: @"enum", srcAlpha: @"enum", dstAlpha: @"enum") void {
    procs.glBlendFuncSeparateiARB.?(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
}
pub inline fn glDrawArraysInstancedARB(mode: @"enum", first: c_int, count: c_int, primcount: c_int) void {
    procs.glDrawArraysInstancedARB.?(mode, first, count, primcount);
}
pub inline fn glDrawElementsInstancedARB(mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, primcount: c_int) void {
    procs.glDrawElementsInstancedARB.?(mode, count, @"type", indices, primcount);
}
pub inline fn glProgramParameteriARB(program: c_uint, pname: @"enum", value: c_int) void {
    procs.glProgramParameteriARB.?(program, pname, value);
}
pub inline fn glFramebufferTextureARB(target: @"enum", attachment: @"enum", texture: c_uint, level: c_int) void {
    procs.glFramebufferTextureARB.?(target, attachment, texture, level);
}
pub inline fn glFramebufferTextureLayerARB(target: @"enum", attachment: @"enum", texture: c_uint, level: c_int, layer: c_int) void {
    procs.glFramebufferTextureLayerARB.?(target, attachment, texture, level, layer);
}
pub inline fn glFramebufferTextureFaceARB(target: @"enum", attachment: @"enum", texture: c_uint, level: c_int, face: @"enum") void {
    procs.glFramebufferTextureFaceARB.?(target, attachment, texture, level, face);
}
pub inline fn glSpecializeShaderARB(shader: c_uint, pEntryPoint: [*c]const u8, numSpecializationConstants: c_uint, pConstantIndex: [*c]const c_uint, pConstantValue: [*c]const c_uint) void {
    procs.glSpecializeShaderARB.?(shader, pEntryPoint, numSpecializationConstants, pConstantIndex, pConstantValue);
}
pub inline fn glUniform1i64ARB(location: c_int, x: i64) void {
    procs.glUniform1i64ARB.?(location, x);
}
pub inline fn glUniform2i64ARB(location: c_int, x: i64, y: i64) void {
    procs.glUniform2i64ARB.?(location, x, y);
}
pub inline fn glUniform3i64ARB(location: c_int, x: i64, y: i64, z: i64) void {
    procs.glUniform3i64ARB.?(location, x, y, z);
}
pub inline fn glUniform4i64ARB(location: c_int, x: i64, y: i64, z: i64, w: i64) void {
    procs.glUniform4i64ARB.?(location, x, y, z, w);
}
pub inline fn glUniform1i64vARB(location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glUniform1i64vARB.?(location, count, value);
}
pub inline fn glUniform2i64vARB(location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glUniform2i64vARB.?(location, count, value);
}
pub inline fn glUniform3i64vARB(location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glUniform3i64vARB.?(location, count, value);
}
pub inline fn glUniform4i64vARB(location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glUniform4i64vARB.?(location, count, value);
}
pub inline fn glUniform1ui64ARB(location: c_int, x: u64) void {
    procs.glUniform1ui64ARB.?(location, x);
}
pub inline fn glUniform2ui64ARB(location: c_int, x: u64, y: u64) void {
    procs.glUniform2ui64ARB.?(location, x, y);
}
pub inline fn glUniform3ui64ARB(location: c_int, x: u64, y: u64, z: u64) void {
    procs.glUniform3ui64ARB.?(location, x, y, z);
}
pub inline fn glUniform4ui64ARB(location: c_int, x: u64, y: u64, z: u64, w: u64) void {
    procs.glUniform4ui64ARB.?(location, x, y, z, w);
}
pub inline fn glUniform1ui64vARB(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniform1ui64vARB.?(location, count, value);
}
pub inline fn glUniform2ui64vARB(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniform2ui64vARB.?(location, count, value);
}
pub inline fn glUniform3ui64vARB(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniform3ui64vARB.?(location, count, value);
}
pub inline fn glUniform4ui64vARB(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniform4ui64vARB.?(location, count, value);
}
pub inline fn glGetUniformi64vARB(program: c_uint, location: c_int, params: [*c]i64) void {
    procs.glGetUniformi64vARB.?(program, location, params);
}
pub inline fn glGetUniformui64vARB(program: c_uint, location: c_int, params: [*c]u64) void {
    procs.glGetUniformui64vARB.?(program, location, params);
}
pub inline fn glGetnUniformi64vARB(program: c_uint, location: c_int, bufSize: c_int, params: [*c]i64) void {
    procs.glGetnUniformi64vARB.?(program, location, bufSize, params);
}
pub inline fn glGetnUniformui64vARB(program: c_uint, location: c_int, bufSize: c_int, params: [*c]u64) void {
    procs.glGetnUniformui64vARB.?(program, location, bufSize, params);
}
pub inline fn glProgramUniform1i64ARB(program: c_uint, location: c_int, x: i64) void {
    procs.glProgramUniform1i64ARB.?(program, location, x);
}
pub inline fn glProgramUniform2i64ARB(program: c_uint, location: c_int, x: i64, y: i64) void {
    procs.glProgramUniform2i64ARB.?(program, location, x, y);
}
pub inline fn glProgramUniform3i64ARB(program: c_uint, location: c_int, x: i64, y: i64, z: i64) void {
    procs.glProgramUniform3i64ARB.?(program, location, x, y, z);
}
pub inline fn glProgramUniform4i64ARB(program: c_uint, location: c_int, x: i64, y: i64, z: i64, w: i64) void {
    procs.glProgramUniform4i64ARB.?(program, location, x, y, z, w);
}
pub inline fn glProgramUniform1i64vARB(program: c_uint, location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glProgramUniform1i64vARB.?(program, location, count, value);
}
pub inline fn glProgramUniform2i64vARB(program: c_uint, location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glProgramUniform2i64vARB.?(program, location, count, value);
}
pub inline fn glProgramUniform3i64vARB(program: c_uint, location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glProgramUniform3i64vARB.?(program, location, count, value);
}
pub inline fn glProgramUniform4i64vARB(program: c_uint, location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glProgramUniform4i64vARB.?(program, location, count, value);
}
pub inline fn glProgramUniform1ui64ARB(program: c_uint, location: c_int, x: u64) void {
    procs.glProgramUniform1ui64ARB.?(program, location, x);
}
pub inline fn glProgramUniform2ui64ARB(program: c_uint, location: c_int, x: u64, y: u64) void {
    procs.glProgramUniform2ui64ARB.?(program, location, x, y);
}
pub inline fn glProgramUniform3ui64ARB(program: c_uint, location: c_int, x: u64, y: u64, z: u64) void {
    procs.glProgramUniform3ui64ARB.?(program, location, x, y, z);
}
pub inline fn glProgramUniform4ui64ARB(program: c_uint, location: c_int, x: u64, y: u64, z: u64, w: u64) void {
    procs.glProgramUniform4ui64ARB.?(program, location, x, y, z, w);
}
pub inline fn glProgramUniform1ui64vARB(program: c_uint, location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glProgramUniform1ui64vARB.?(program, location, count, value);
}
pub inline fn glProgramUniform2ui64vARB(program: c_uint, location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glProgramUniform2ui64vARB.?(program, location, count, value);
}
pub inline fn glProgramUniform3ui64vARB(program: c_uint, location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glProgramUniform3ui64vARB.?(program, location, count, value);
}
pub inline fn glProgramUniform4ui64vARB(program: c_uint, location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glProgramUniform4ui64vARB.?(program, location, count, value);
}
pub inline fn glMultiDrawArraysIndirectCountARB(mode: @"enum", indirect: ?*const anyopaque, drawcount: c_long, maxdrawcount: c_int, stride: c_int) void {
    procs.glMultiDrawArraysIndirectCountARB.?(mode, indirect, drawcount, maxdrawcount, stride);
}
pub inline fn glMultiDrawElementsIndirectCountARB(mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawcount: c_long, maxdrawcount: c_int, stride: c_int) void {
    procs.glMultiDrawElementsIndirectCountARB.?(mode, @"type", indirect, drawcount, maxdrawcount, stride);
}
pub inline fn glVertexAttribDivisorARB(index: c_uint, divisor: c_uint) void {
    procs.glVertexAttribDivisorARB.?(index, divisor);
}
pub inline fn glMaxShaderCompilerThreadsARB(count: c_uint) void {
    procs.glMaxShaderCompilerThreadsARB.?(count);
}
pub inline fn glGetGraphicsResetStatusARB() @"enum" {
    return procs.glGetGraphicsResetStatusARB.?();
}
pub inline fn glGetnTexImageARB(target: @"enum", level: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, img: ?*anyopaque) void {
    procs.glGetnTexImageARB.?(target, level, format, @"type", bufSize, img);
}
pub inline fn glReadnPixelsARB(x: c_int, y: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", bufSize: c_int, data: ?*anyopaque) void {
    procs.glReadnPixelsARB.?(x, y, width, height, format, @"type", bufSize, data);
}
pub inline fn glGetnCompressedTexImageARB(target: @"enum", lod: c_int, bufSize: c_int, img: ?*anyopaque) void {
    procs.glGetnCompressedTexImageARB.?(target, lod, bufSize, img);
}
pub inline fn glGetnUniformfvARB(program: c_uint, location: c_int, bufSize: c_int, params: [*c]f32) void {
    procs.glGetnUniformfvARB.?(program, location, bufSize, params);
}
pub inline fn glGetnUniformivARB(program: c_uint, location: c_int, bufSize: c_int, params: [*c]c_int) void {
    procs.glGetnUniformivARB.?(program, location, bufSize, params);
}
pub inline fn glGetnUniformuivARB(program: c_uint, location: c_int, bufSize: c_int, params: [*c]c_uint) void {
    procs.glGetnUniformuivARB.?(program, location, bufSize, params);
}
pub inline fn glGetnUniformdvARB(program: c_uint, location: c_int, bufSize: c_int, params: [*c]f64) void {
    procs.glGetnUniformdvARB.?(program, location, bufSize, params);
}
pub inline fn glFramebufferSampleLocationsfvARB(target: @"enum", start: c_uint, count: c_int, v: [*c]const f32) void {
    procs.glFramebufferSampleLocationsfvARB.?(target, start, count, v);
}
pub inline fn glNamedFramebufferSampleLocationsfvARB(framebuffer: c_uint, start: c_uint, count: c_int, v: [*c]const f32) void {
    procs.glNamedFramebufferSampleLocationsfvARB.?(framebuffer, start, count, v);
}
pub inline fn glEvaluateDepthValuesARB() void {
    procs.glEvaluateDepthValuesARB.?();
}
pub inline fn glMinSampleShadingARB(value: f32) void {
    procs.glMinSampleShadingARB.?(value);
}
pub inline fn glNamedStringARB(@"type": @"enum", namelen: c_int, name: [*c]const u8, stringlen: c_int, string: [*c]const u8) void {
    procs.glNamedStringARB.?(@"type", namelen, name, stringlen, string);
}
pub inline fn glDeleteNamedStringARB(namelen: c_int, name: [*c]const u8) void {
    procs.glDeleteNamedStringARB.?(namelen, name);
}
pub inline fn glCompileShaderIncludeARB(shader: c_uint, count: c_int, path: [*c]const [*c]const u8, length: [*c]const c_int) void {
    procs.glCompileShaderIncludeARB.?(shader, count, path, length);
}
pub inline fn glIsNamedStringARB(namelen: c_int, name: [*c]const u8) @"bool" {
    return procs.glIsNamedStringARB.?(namelen, name);
}
pub inline fn glGetNamedStringARB(namelen: c_int, name: [*c]const u8, bufSize: c_int, stringlen: [*c]c_int, string: [*c]u8) void {
    procs.glGetNamedStringARB.?(namelen, name, bufSize, stringlen, string);
}
pub inline fn glGetNamedStringivARB(namelen: c_int, name: [*c]const u8, pname: @"enum", params: [*c]c_int) void {
    procs.glGetNamedStringivARB.?(namelen, name, pname, params);
}
pub inline fn glBufferPageCommitmentARB(target: @"enum", offset: c_long, size: c_ulong, commit: @"bool") void {
    procs.glBufferPageCommitmentARB.?(target, offset, size, commit);
}
pub inline fn glNamedBufferPageCommitmentEXT(buffer: c_uint, offset: c_long, size: c_ulong, commit: @"bool") void {
    procs.glNamedBufferPageCommitmentEXT.?(buffer, offset, size, commit);
}
pub inline fn glNamedBufferPageCommitmentARB(buffer: c_uint, offset: c_long, size: c_ulong, commit: @"bool") void {
    procs.glNamedBufferPageCommitmentARB.?(buffer, offset, size, commit);
}
pub inline fn glTexPageCommitmentARB(target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, commit: @"bool") void {
    procs.glTexPageCommitmentARB.?(target, level, xoffset, yoffset, zoffset, width, height, depth, commit);
}
pub inline fn glTexBufferARB(target: @"enum", internalformat: @"enum", buffer: c_uint) void {
    procs.glTexBufferARB.?(target, internalformat, buffer);
}
pub inline fn glDepthRangeArraydvNV(first: c_uint, count: c_int, v: [*c]const f64) void {
    procs.glDepthRangeArraydvNV.?(first, count, v);
}
pub inline fn glDepthRangeIndexeddNV(index: c_uint, n: f64, f: f64) void {
    procs.glDepthRangeIndexeddNV.?(index, n, f);
}
pub inline fn glBlendBarrierKHR() void {
    procs.glBlendBarrierKHR.?();
}
pub inline fn glMaxShaderCompilerThreadsKHR(count: c_uint) void {
    procs.glMaxShaderCompilerThreadsKHR.?(count);
}
pub inline fn glRenderbufferStorageMultisampleAdvancedAMD(target: @"enum", samples: c_int, storageSamples: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glRenderbufferStorageMultisampleAdvancedAMD.?(target, samples, storageSamples, internalformat, width, height);
}
pub inline fn glNamedRenderbufferStorageMultisampleAdvancedAMD(renderbuffer: c_uint, samples: c_int, storageSamples: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glNamedRenderbufferStorageMultisampleAdvancedAMD.?(renderbuffer, samples, storageSamples, internalformat, width, height);
}
pub inline fn glGetPerfMonitorGroupsAMD(numGroups: [*c]c_int, groupsSize: c_int, groups: [*c]c_uint) void {
    procs.glGetPerfMonitorGroupsAMD.?(numGroups, groupsSize, groups);
}
pub inline fn glGetPerfMonitorCountersAMD(group: c_uint, numCounters: [*c]c_int, maxActiveCounters: [*c]c_int, counterSize: c_int, counters: [*c]c_uint) void {
    procs.glGetPerfMonitorCountersAMD.?(group, numCounters, maxActiveCounters, counterSize, counters);
}
pub inline fn glGetPerfMonitorGroupStringAMD(group: c_uint, bufSize: c_int, length: [*c]c_int, groupString: [*c]u8) void {
    procs.glGetPerfMonitorGroupStringAMD.?(group, bufSize, length, groupString);
}
pub inline fn glGetPerfMonitorCounterStringAMD(group: c_uint, counter: c_uint, bufSize: c_int, length: [*c]c_int, counterString: [*c]u8) void {
    procs.glGetPerfMonitorCounterStringAMD.?(group, counter, bufSize, length, counterString);
}
pub inline fn glGetPerfMonitorCounterInfoAMD(group: c_uint, counter: c_uint, pname: @"enum", data: ?*anyopaque) void {
    procs.glGetPerfMonitorCounterInfoAMD.?(group, counter, pname, data);
}
pub inline fn glGenPerfMonitorsAMD(n: c_int, monitors: [*c]c_uint) void {
    procs.glGenPerfMonitorsAMD.?(n, monitors);
}
pub inline fn glDeletePerfMonitorsAMD(n: c_int, monitors: [*c]c_uint) void {
    procs.glDeletePerfMonitorsAMD.?(n, monitors);
}
pub inline fn glSelectPerfMonitorCountersAMD(monitor: c_uint, enable: @"bool", group: c_uint, numCounters: c_int, counterList: [*c]c_uint) void {
    procs.glSelectPerfMonitorCountersAMD.?(monitor, enable, group, numCounters, counterList);
}
pub inline fn glBeginPerfMonitorAMD(monitor: c_uint) void {
    procs.glBeginPerfMonitorAMD.?(monitor);
}
pub inline fn glEndPerfMonitorAMD(monitor: c_uint) void {
    procs.glEndPerfMonitorAMD.?(monitor);
}
pub inline fn glGetPerfMonitorCounterDataAMD(monitor: c_uint, pname: @"enum", dataSize: c_int, data: [*c]c_uint, bytesWritten: [*c]c_int) void {
    procs.glGetPerfMonitorCounterDataAMD.?(monitor, pname, dataSize, data, bytesWritten);
}
pub inline fn glEGLImageTargetTexStorageEXT(target: @"enum", image: GLeglImageOES, attrib_list: [*c]const c_int) void {
    procs.glEGLImageTargetTexStorageEXT.?(target, image, attrib_list);
}
pub inline fn glEGLImageTargetTextureStorageEXT(texture: c_uint, image: GLeglImageOES, attrib_list: [*c]const c_int) void {
    procs.glEGLImageTargetTextureStorageEXT.?(texture, image, attrib_list);
}
pub inline fn glLabelObjectEXT(@"type": @"enum", object: c_uint, length: c_int, label: [*c]const u8) void {
    procs.glLabelObjectEXT.?(@"type", object, length, label);
}
pub inline fn glGetObjectLabelEXT(@"type": @"enum", object: c_uint, bufSize: c_int, length: [*c]c_int, label: [*c]u8) void {
    procs.glGetObjectLabelEXT.?(@"type", object, bufSize, length, label);
}
pub inline fn glInsertEventMarkerEXT(length: c_int, marker: [*c]const u8) void {
    procs.glInsertEventMarkerEXT.?(length, marker);
}
pub inline fn glPushGroupMarkerEXT(length: c_int, marker: [*c]const u8) void {
    procs.glPushGroupMarkerEXT.?(length, marker);
}
pub inline fn glPopGroupMarkerEXT() void {
    procs.glPopGroupMarkerEXT.?();
}
pub inline fn glMatrixLoadfEXT(mode: @"enum", m: [*c]const f32) void {
    procs.glMatrixLoadfEXT.?(mode, m);
}
pub inline fn glMatrixLoaddEXT(mode: @"enum", m: [*c]const f64) void {
    procs.glMatrixLoaddEXT.?(mode, m);
}
pub inline fn glMatrixMultfEXT(mode: @"enum", m: [*c]const f32) void {
    procs.glMatrixMultfEXT.?(mode, m);
}
pub inline fn glMatrixMultdEXT(mode: @"enum", m: [*c]const f64) void {
    procs.glMatrixMultdEXT.?(mode, m);
}
pub inline fn glMatrixLoadIdentityEXT(mode: @"enum") void {
    procs.glMatrixLoadIdentityEXT.?(mode);
}
pub inline fn glMatrixRotatefEXT(mode: @"enum", angle: f32, x: f32, y: f32, z: f32) void {
    procs.glMatrixRotatefEXT.?(mode, angle, x, y, z);
}
pub inline fn glMatrixRotatedEXT(mode: @"enum", angle: f64, x: f64, y: f64, z: f64) void {
    procs.glMatrixRotatedEXT.?(mode, angle, x, y, z);
}
pub inline fn glMatrixScalefEXT(mode: @"enum", x: f32, y: f32, z: f32) void {
    procs.glMatrixScalefEXT.?(mode, x, y, z);
}
pub inline fn glMatrixScaledEXT(mode: @"enum", x: f64, y: f64, z: f64) void {
    procs.glMatrixScaledEXT.?(mode, x, y, z);
}
pub inline fn glMatrixTranslatefEXT(mode: @"enum", x: f32, y: f32, z: f32) void {
    procs.glMatrixTranslatefEXT.?(mode, x, y, z);
}
pub inline fn glMatrixTranslatedEXT(mode: @"enum", x: f64, y: f64, z: f64) void {
    procs.glMatrixTranslatedEXT.?(mode, x, y, z);
}
pub inline fn glMatrixFrustumEXT(mode: @"enum", left: f64, right: f64, bottom: f64, top: f64, zNear: f64, zFar: f64) void {
    procs.glMatrixFrustumEXT.?(mode, left, right, bottom, top, zNear, zFar);
}
pub inline fn glMatrixOrthoEXT(mode: @"enum", left: f64, right: f64, bottom: f64, top: f64, zNear: f64, zFar: f64) void {
    procs.glMatrixOrthoEXT.?(mode, left, right, bottom, top, zNear, zFar);
}
pub inline fn glMatrixPopEXT(mode: @"enum") void {
    procs.glMatrixPopEXT.?(mode);
}
pub inline fn glMatrixPushEXT(mode: @"enum") void {
    procs.glMatrixPushEXT.?(mode);
}
pub inline fn glClientAttribDefaultEXT(mask: Bitfield) void {
    procs.glClientAttribDefaultEXT.?(mask);
}
pub inline fn glPushClientAttribDefaultEXT(mask: Bitfield) void {
    procs.glPushClientAttribDefaultEXT.?(mask);
}
pub inline fn glTextureParameterfEXT(texture: c_uint, target: @"enum", pname: @"enum", param: f32) void {
    procs.glTextureParameterfEXT.?(texture, target, pname, param);
}
pub inline fn glTextureParameterfvEXT(texture: c_uint, target: @"enum", pname: @"enum", params: [*c]const f32) void {
    procs.glTextureParameterfvEXT.?(texture, target, pname, params);
}
pub inline fn glTextureParameteriEXT(texture: c_uint, target: @"enum", pname: @"enum", param: c_int) void {
    procs.glTextureParameteriEXT.?(texture, target, pname, param);
}
pub inline fn glTextureParameterivEXT(texture: c_uint, target: @"enum", pname: @"enum", params: [*c]const c_int) void {
    procs.glTextureParameterivEXT.?(texture, target, pname, params);
}
pub inline fn glTextureImage1DEXT(texture: c_uint, target: @"enum", level: c_int, internalformat: c_int, width: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTextureImage1DEXT.?(texture, target, level, internalformat, width, border, format, @"type", pixels);
}
pub inline fn glTextureImage2DEXT(texture: c_uint, target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTextureImage2DEXT.?(texture, target, level, internalformat, width, height, border, format, @"type", pixels);
}
pub inline fn glTextureSubImage1DEXT(texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTextureSubImage1DEXT.?(texture, target, level, xoffset, width, format, @"type", pixels);
}
pub inline fn glTextureSubImage2DEXT(texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTextureSubImage2DEXT.?(texture, target, level, xoffset, yoffset, width, height, format, @"type", pixels);
}
pub inline fn glCopyTextureImage1DEXT(texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, border: c_int) void {
    procs.glCopyTextureImage1DEXT.?(texture, target, level, internalformat, x, y, width, border);
}
pub inline fn glCopyTextureImage2DEXT(texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, height: c_int, border: c_int) void {
    procs.glCopyTextureImage2DEXT.?(texture, target, level, internalformat, x, y, width, height, border);
}
pub inline fn glCopyTextureSubImage1DEXT(texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, x: c_int, y: c_int, width: c_int) void {
    procs.glCopyTextureSubImage1DEXT.?(texture, target, level, xoffset, x, y, width);
}
pub inline fn glCopyTextureSubImage2DEXT(texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glCopyTextureSubImage2DEXT.?(texture, target, level, xoffset, yoffset, x, y, width, height);
}
pub inline fn glGetTextureImageEXT(texture: c_uint, target: @"enum", level: c_int, format: @"enum", @"type": @"enum", pixels: ?*anyopaque) void {
    procs.glGetTextureImageEXT.?(texture, target, level, format, @"type", pixels);
}
pub inline fn glGetTextureParameterfvEXT(texture: c_uint, target: @"enum", pname: @"enum", params: [*c]f32) void {
    procs.glGetTextureParameterfvEXT.?(texture, target, pname, params);
}
pub inline fn glGetTextureParameterivEXT(texture: c_uint, target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetTextureParameterivEXT.?(texture, target, pname, params);
}
pub inline fn glGetTextureLevelParameterfvEXT(texture: c_uint, target: @"enum", level: c_int, pname: @"enum", params: [*c]f32) void {
    procs.glGetTextureLevelParameterfvEXT.?(texture, target, level, pname, params);
}
pub inline fn glGetTextureLevelParameterivEXT(texture: c_uint, target: @"enum", level: c_int, pname: @"enum", params: [*c]c_int) void {
    procs.glGetTextureLevelParameterivEXT.?(texture, target, level, pname, params);
}
pub inline fn glTextureImage3DEXT(texture: c_uint, target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, depth: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTextureImage3DEXT.?(texture, target, level, internalformat, width, height, depth, border, format, @"type", pixels);
}
pub inline fn glTextureSubImage3DEXT(texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glTextureSubImage3DEXT.?(texture, target, level, xoffset, yoffset, zoffset, width, height, depth, format, @"type", pixels);
}
pub inline fn glCopyTextureSubImage3DEXT(texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glCopyTextureSubImage3DEXT.?(texture, target, level, xoffset, yoffset, zoffset, x, y, width, height);
}
pub inline fn glBindMultiTextureEXT(texunit: @"enum", target: @"enum", texture: c_uint) void {
    procs.glBindMultiTextureEXT.?(texunit, target, texture);
}
pub inline fn glMultiTexCoordPointerEXT(texunit: @"enum", size: c_int, @"type": @"enum", stride: c_int, pointer: ?*const anyopaque) void {
    procs.glMultiTexCoordPointerEXT.?(texunit, size, @"type", stride, pointer);
}
pub inline fn glMultiTexEnvfEXT(texunit: @"enum", target: @"enum", pname: @"enum", param: f32) void {
    procs.glMultiTexEnvfEXT.?(texunit, target, pname, param);
}
pub inline fn glMultiTexEnvfvEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const f32) void {
    procs.glMultiTexEnvfvEXT.?(texunit, target, pname, params);
}
pub inline fn glMultiTexEnviEXT(texunit: @"enum", target: @"enum", pname: @"enum", param: c_int) void {
    procs.glMultiTexEnviEXT.?(texunit, target, pname, param);
}
pub inline fn glMultiTexEnvivEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const c_int) void {
    procs.glMultiTexEnvivEXT.?(texunit, target, pname, params);
}
pub inline fn glMultiTexGendEXT(texunit: @"enum", coord: @"enum", pname: @"enum", param: f64) void {
    procs.glMultiTexGendEXT.?(texunit, coord, pname, param);
}
pub inline fn glMultiTexGendvEXT(texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]const f64) void {
    procs.glMultiTexGendvEXT.?(texunit, coord, pname, params);
}
pub inline fn glMultiTexGenfEXT(texunit: @"enum", coord: @"enum", pname: @"enum", param: f32) void {
    procs.glMultiTexGenfEXT.?(texunit, coord, pname, param);
}
pub inline fn glMultiTexGenfvEXT(texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]const f32) void {
    procs.glMultiTexGenfvEXT.?(texunit, coord, pname, params);
}
pub inline fn glMultiTexGeniEXT(texunit: @"enum", coord: @"enum", pname: @"enum", param: c_int) void {
    procs.glMultiTexGeniEXT.?(texunit, coord, pname, param);
}
pub inline fn glMultiTexGenivEXT(texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]const c_int) void {
    procs.glMultiTexGenivEXT.?(texunit, coord, pname, params);
}
pub inline fn glGetMultiTexEnvfvEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]f32) void {
    procs.glGetMultiTexEnvfvEXT.?(texunit, target, pname, params);
}
pub inline fn glGetMultiTexEnvivEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetMultiTexEnvivEXT.?(texunit, target, pname, params);
}
pub inline fn glGetMultiTexGendvEXT(texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]f64) void {
    procs.glGetMultiTexGendvEXT.?(texunit, coord, pname, params);
}
pub inline fn glGetMultiTexGenfvEXT(texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]f32) void {
    procs.glGetMultiTexGenfvEXT.?(texunit, coord, pname, params);
}
pub inline fn glGetMultiTexGenivEXT(texunit: @"enum", coord: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetMultiTexGenivEXT.?(texunit, coord, pname, params);
}
pub inline fn glMultiTexParameteriEXT(texunit: @"enum", target: @"enum", pname: @"enum", param: c_int) void {
    procs.glMultiTexParameteriEXT.?(texunit, target, pname, param);
}
pub inline fn glMultiTexParameterivEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const c_int) void {
    procs.glMultiTexParameterivEXT.?(texunit, target, pname, params);
}
pub inline fn glMultiTexParameterfEXT(texunit: @"enum", target: @"enum", pname: @"enum", param: f32) void {
    procs.glMultiTexParameterfEXT.?(texunit, target, pname, param);
}
pub inline fn glMultiTexParameterfvEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const f32) void {
    procs.glMultiTexParameterfvEXT.?(texunit, target, pname, params);
}
pub inline fn glMultiTexImage1DEXT(texunit: @"enum", target: @"enum", level: c_int, internalformat: c_int, width: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glMultiTexImage1DEXT.?(texunit, target, level, internalformat, width, border, format, @"type", pixels);
}
pub inline fn glMultiTexImage2DEXT(texunit: @"enum", target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glMultiTexImage2DEXT.?(texunit, target, level, internalformat, width, height, border, format, @"type", pixels);
}
pub inline fn glMultiTexSubImage1DEXT(texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glMultiTexSubImage1DEXT.?(texunit, target, level, xoffset, width, format, @"type", pixels);
}
pub inline fn glMultiTexSubImage2DEXT(texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glMultiTexSubImage2DEXT.?(texunit, target, level, xoffset, yoffset, width, height, format, @"type", pixels);
}
pub inline fn glCopyMultiTexImage1DEXT(texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, border: c_int) void {
    procs.glCopyMultiTexImage1DEXT.?(texunit, target, level, internalformat, x, y, width, border);
}
pub inline fn glCopyMultiTexImage2DEXT(texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", x: c_int, y: c_int, width: c_int, height: c_int, border: c_int) void {
    procs.glCopyMultiTexImage2DEXT.?(texunit, target, level, internalformat, x, y, width, height, border);
}
pub inline fn glCopyMultiTexSubImage1DEXT(texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, x: c_int, y: c_int, width: c_int) void {
    procs.glCopyMultiTexSubImage1DEXT.?(texunit, target, level, xoffset, x, y, width);
}
pub inline fn glCopyMultiTexSubImage2DEXT(texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glCopyMultiTexSubImage2DEXT.?(texunit, target, level, xoffset, yoffset, x, y, width, height);
}
pub inline fn glGetMultiTexImageEXT(texunit: @"enum", target: @"enum", level: c_int, format: @"enum", @"type": @"enum", pixels: ?*anyopaque) void {
    procs.glGetMultiTexImageEXT.?(texunit, target, level, format, @"type", pixels);
}
pub inline fn glGetMultiTexParameterfvEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]f32) void {
    procs.glGetMultiTexParameterfvEXT.?(texunit, target, pname, params);
}
pub inline fn glGetMultiTexParameterivEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetMultiTexParameterivEXT.?(texunit, target, pname, params);
}
pub inline fn glGetMultiTexLevelParameterfvEXT(texunit: @"enum", target: @"enum", level: c_int, pname: @"enum", params: [*c]f32) void {
    procs.glGetMultiTexLevelParameterfvEXT.?(texunit, target, level, pname, params);
}
pub inline fn glGetMultiTexLevelParameterivEXT(texunit: @"enum", target: @"enum", level: c_int, pname: @"enum", params: [*c]c_int) void {
    procs.glGetMultiTexLevelParameterivEXT.?(texunit, target, level, pname, params);
}
pub inline fn glMultiTexImage3DEXT(texunit: @"enum", target: @"enum", level: c_int, internalformat: c_int, width: c_int, height: c_int, depth: c_int, border: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glMultiTexImage3DEXT.?(texunit, target, level, internalformat, width, height, depth, border, format, @"type", pixels);
}
pub inline fn glMultiTexSubImage3DEXT(texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
    procs.glMultiTexSubImage3DEXT.?(texunit, target, level, xoffset, yoffset, zoffset, width, height, depth, format, @"type", pixels);
}
pub inline fn glCopyMultiTexSubImage3DEXT(texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glCopyMultiTexSubImage3DEXT.?(texunit, target, level, xoffset, yoffset, zoffset, x, y, width, height);
}
pub inline fn glEnableClientStateIndexedEXT(array: @"enum", index: c_uint) void {
    procs.glEnableClientStateIndexedEXT.?(array, index);
}
pub inline fn glDisableClientStateIndexedEXT(array: @"enum", index: c_uint) void {
    procs.glDisableClientStateIndexedEXT.?(array, index);
}
pub inline fn glGetFloatIndexedvEXT(target: @"enum", index: c_uint, data: [*c]f32) void {
    procs.glGetFloatIndexedvEXT.?(target, index, data);
}
pub inline fn glGetDoubleIndexedvEXT(target: @"enum", index: c_uint, data: [*c]f64) void {
    procs.glGetDoubleIndexedvEXT.?(target, index, data);
}
pub inline fn glGetPointerIndexedvEXT(target: @"enum", index: c_uint, data: [*c]?*anyopaque) void {
    procs.glGetPointerIndexedvEXT.?(target, index, data);
}
pub inline fn glEnableIndexedEXT(target: @"enum", index: c_uint) void {
    procs.glEnableIndexedEXT.?(target, index);
}
pub inline fn glDisableIndexedEXT(target: @"enum", index: c_uint) void {
    procs.glDisableIndexedEXT.?(target, index);
}
pub inline fn glIsEnabledIndexedEXT(target: @"enum", index: c_uint) @"bool" {
    return procs.glIsEnabledIndexedEXT.?(target, index);
}
pub inline fn glGetIntegerIndexedvEXT(target: @"enum", index: c_uint, data: [*c]c_int) void {
    procs.glGetIntegerIndexedvEXT.?(target, index, data);
}
pub inline fn glGetBooleanIndexedvEXT(target: @"enum", index: c_uint, data: [*c]@"bool") void {
    procs.glGetBooleanIndexedvEXT.?(target, index, data);
}
pub inline fn glCompressedTextureImage3DEXT(texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedTextureImage3DEXT.?(texture, target, level, internalformat, width, height, depth, border, imageSize, bits);
}
pub inline fn glCompressedTextureImage2DEXT(texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedTextureImage2DEXT.?(texture, target, level, internalformat, width, height, border, imageSize, bits);
}
pub inline fn glCompressedTextureImage1DEXT(texture: c_uint, target: @"enum", level: c_int, internalformat: @"enum", width: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedTextureImage1DEXT.?(texture, target, level, internalformat, width, border, imageSize, bits);
}
pub inline fn glCompressedTextureSubImage3DEXT(texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedTextureSubImage3DEXT.?(texture, target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, bits);
}
pub inline fn glCompressedTextureSubImage2DEXT(texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedTextureSubImage2DEXT.?(texture, target, level, xoffset, yoffset, width, height, format, imageSize, bits);
}
pub inline fn glCompressedTextureSubImage1DEXT(texture: c_uint, target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedTextureSubImage1DEXT.?(texture, target, level, xoffset, width, format, imageSize, bits);
}
pub inline fn glGetCompressedTextureImageEXT(texture: c_uint, target: @"enum", lod: c_int, img: ?*anyopaque) void {
    procs.glGetCompressedTextureImageEXT.?(texture, target, lod, img);
}
pub inline fn glCompressedMultiTexImage3DEXT(texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedMultiTexImage3DEXT.?(texunit, target, level, internalformat, width, height, depth, border, imageSize, bits);
}
pub inline fn glCompressedMultiTexImage2DEXT(texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", width: c_int, height: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedMultiTexImage2DEXT.?(texunit, target, level, internalformat, width, height, border, imageSize, bits);
}
pub inline fn glCompressedMultiTexImage1DEXT(texunit: @"enum", target: @"enum", level: c_int, internalformat: @"enum", width: c_int, border: c_int, imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedMultiTexImage1DEXT.?(texunit, target, level, internalformat, width, border, imageSize, bits);
}
pub inline fn glCompressedMultiTexSubImage3DEXT(texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedMultiTexSubImage3DEXT.?(texunit, target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, bits);
}
pub inline fn glCompressedMultiTexSubImage2DEXT(texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, yoffset: c_int, width: c_int, height: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedMultiTexSubImage2DEXT.?(texunit, target, level, xoffset, yoffset, width, height, format, imageSize, bits);
}
pub inline fn glCompressedMultiTexSubImage1DEXT(texunit: @"enum", target: @"enum", level: c_int, xoffset: c_int, width: c_int, format: @"enum", imageSize: c_int, bits: ?*const anyopaque) void {
    procs.glCompressedMultiTexSubImage1DEXT.?(texunit, target, level, xoffset, width, format, imageSize, bits);
}
pub inline fn glGetCompressedMultiTexImageEXT(texunit: @"enum", target: @"enum", lod: c_int, img: ?*anyopaque) void {
    procs.glGetCompressedMultiTexImageEXT.?(texunit, target, lod, img);
}
pub inline fn glMatrixLoadTransposefEXT(mode: @"enum", m: [*c]const f32) void {
    procs.glMatrixLoadTransposefEXT.?(mode, m);
}
pub inline fn glMatrixLoadTransposedEXT(mode: @"enum", m: [*c]const f64) void {
    procs.glMatrixLoadTransposedEXT.?(mode, m);
}
pub inline fn glMatrixMultTransposefEXT(mode: @"enum", m: [*c]const f32) void {
    procs.glMatrixMultTransposefEXT.?(mode, m);
}
pub inline fn glMatrixMultTransposedEXT(mode: @"enum", m: [*c]const f64) void {
    procs.glMatrixMultTransposedEXT.?(mode, m);
}
pub inline fn glNamedBufferDataEXT(buffer: c_uint, size: c_ulong, data: ?*const anyopaque, usage: @"enum") void {
    procs.glNamedBufferDataEXT.?(buffer, size, data, usage);
}
pub inline fn glNamedBufferSubDataEXT(buffer: c_uint, offset: c_long, size: c_ulong, data: ?*const anyopaque) void {
    procs.glNamedBufferSubDataEXT.?(buffer, offset, size, data);
}
pub inline fn glMapNamedBufferEXT(buffer: c_uint, access: @"enum") ?*anyopaque {
    return procs.glMapNamedBufferEXT.?(buffer, access);
}
pub inline fn glUnmapNamedBufferEXT(buffer: c_uint) @"bool" {
    return procs.glUnmapNamedBufferEXT.?(buffer);
}
pub inline fn glGetNamedBufferParameterivEXT(buffer: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetNamedBufferParameterivEXT.?(buffer, pname, params);
}
pub inline fn glGetNamedBufferPointervEXT(buffer: c_uint, pname: @"enum", params: [*c]?*anyopaque) void {
    procs.glGetNamedBufferPointervEXT.?(buffer, pname, params);
}
pub inline fn glGetNamedBufferSubDataEXT(buffer: c_uint, offset: c_long, size: c_ulong, data: ?*anyopaque) void {
    procs.glGetNamedBufferSubDataEXT.?(buffer, offset, size, data);
}
pub inline fn glProgramUniform1fEXT(program: c_uint, location: c_int, v0: f32) void {
    procs.glProgramUniform1fEXT.?(program, location, v0);
}
pub inline fn glProgramUniform2fEXT(program: c_uint, location: c_int, v0: f32, v1: f32) void {
    procs.glProgramUniform2fEXT.?(program, location, v0, v1);
}
pub inline fn glProgramUniform3fEXT(program: c_uint, location: c_int, v0: f32, v1: f32, v2: f32) void {
    procs.glProgramUniform3fEXT.?(program, location, v0, v1, v2);
}
pub inline fn glProgramUniform4fEXT(program: c_uint, location: c_int, v0: f32, v1: f32, v2: f32, v3: f32) void {
    procs.glProgramUniform4fEXT.?(program, location, v0, v1, v2, v3);
}
pub inline fn glProgramUniform1iEXT(program: c_uint, location: c_int, v0: c_int) void {
    procs.glProgramUniform1iEXT.?(program, location, v0);
}
pub inline fn glProgramUniform2iEXT(program: c_uint, location: c_int, v0: c_int, v1: c_int) void {
    procs.glProgramUniform2iEXT.?(program, location, v0, v1);
}
pub inline fn glProgramUniform3iEXT(program: c_uint, location: c_int, v0: c_int, v1: c_int, v2: c_int) void {
    procs.glProgramUniform3iEXT.?(program, location, v0, v1, v2);
}
pub inline fn glProgramUniform4iEXT(program: c_uint, location: c_int, v0: c_int, v1: c_int, v2: c_int, v3: c_int) void {
    procs.glProgramUniform4iEXT.?(program, location, v0, v1, v2, v3);
}
pub inline fn glProgramUniform1fvEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glProgramUniform1fvEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform2fvEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glProgramUniform2fvEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform3fvEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glProgramUniform3fvEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform4fvEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const f32) void {
    procs.glProgramUniform4fvEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform1ivEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glProgramUniform1ivEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform2ivEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glProgramUniform2ivEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform3ivEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glProgramUniform3ivEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform4ivEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const c_int) void {
    procs.glProgramUniform4ivEXT.?(program, location, count, value);
}
pub inline fn glProgramUniformMatrix2fvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix2fvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3fvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix3fvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4fvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix4fvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix2x3fvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix2x3fvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3x2fvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix3x2fvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix2x4fvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix2x4fvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4x2fvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix4x2fvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3x4fvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix3x4fvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4x3fvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f32) void {
    procs.glProgramUniformMatrix4x3fvEXT.?(program, location, count, transpose, value);
}
pub inline fn glTextureBufferEXT(texture: c_uint, target: @"enum", internalformat: @"enum", buffer: c_uint) void {
    procs.glTextureBufferEXT.?(texture, target, internalformat, buffer);
}
pub inline fn glMultiTexBufferEXT(texunit: @"enum", target: @"enum", internalformat: @"enum", buffer: c_uint) void {
    procs.glMultiTexBufferEXT.?(texunit, target, internalformat, buffer);
}
pub inline fn glTextureParameterIivEXT(texture: c_uint, target: @"enum", pname: @"enum", params: [*c]const c_int) void {
    procs.glTextureParameterIivEXT.?(texture, target, pname, params);
}
pub inline fn glTextureParameterIuivEXT(texture: c_uint, target: @"enum", pname: @"enum", params: [*c]const c_uint) void {
    procs.glTextureParameterIuivEXT.?(texture, target, pname, params);
}
pub inline fn glGetTextureParameterIivEXT(texture: c_uint, target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetTextureParameterIivEXT.?(texture, target, pname, params);
}
pub inline fn glGetTextureParameterIuivEXT(texture: c_uint, target: @"enum", pname: @"enum", params: [*c]c_uint) void {
    procs.glGetTextureParameterIuivEXT.?(texture, target, pname, params);
}
pub inline fn glMultiTexParameterIivEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const c_int) void {
    procs.glMultiTexParameterIivEXT.?(texunit, target, pname, params);
}
pub inline fn glMultiTexParameterIuivEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]const c_uint) void {
    procs.glMultiTexParameterIuivEXT.?(texunit, target, pname, params);
}
pub inline fn glGetMultiTexParameterIivEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetMultiTexParameterIivEXT.?(texunit, target, pname, params);
}
pub inline fn glGetMultiTexParameterIuivEXT(texunit: @"enum", target: @"enum", pname: @"enum", params: [*c]c_uint) void {
    procs.glGetMultiTexParameterIuivEXT.?(texunit, target, pname, params);
}
pub inline fn glProgramUniform1uiEXT(program: c_uint, location: c_int, v0: c_uint) void {
    procs.glProgramUniform1uiEXT.?(program, location, v0);
}
pub inline fn glProgramUniform2uiEXT(program: c_uint, location: c_int, v0: c_uint, v1: c_uint) void {
    procs.glProgramUniform2uiEXT.?(program, location, v0, v1);
}
pub inline fn glProgramUniform3uiEXT(program: c_uint, location: c_int, v0: c_uint, v1: c_uint, v2: c_uint) void {
    procs.glProgramUniform3uiEXT.?(program, location, v0, v1, v2);
}
pub inline fn glProgramUniform4uiEXT(program: c_uint, location: c_int, v0: c_uint, v1: c_uint, v2: c_uint, v3: c_uint) void {
    procs.glProgramUniform4uiEXT.?(program, location, v0, v1, v2, v3);
}
pub inline fn glProgramUniform1uivEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glProgramUniform1uivEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform2uivEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glProgramUniform2uivEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform3uivEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glProgramUniform3uivEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform4uivEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const c_uint) void {
    procs.glProgramUniform4uivEXT.?(program, location, count, value);
}
pub inline fn glNamedProgramLocalParameters4fvEXT(program: c_uint, target: @"enum", index: c_uint, count: c_int, params: [*c]const f32) void {
    procs.glNamedProgramLocalParameters4fvEXT.?(program, target, index, count, params);
}
pub inline fn glNamedProgramLocalParameterI4iEXT(program: c_uint, target: @"enum", index: c_uint, x: c_int, y: c_int, z: c_int, w: c_int) void {
    procs.glNamedProgramLocalParameterI4iEXT.?(program, target, index, x, y, z, w);
}
pub inline fn glNamedProgramLocalParameterI4ivEXT(program: c_uint, target: @"enum", index: c_uint, params: [*c]const c_int) void {
    procs.glNamedProgramLocalParameterI4ivEXT.?(program, target, index, params);
}
pub inline fn glNamedProgramLocalParametersI4ivEXT(program: c_uint, target: @"enum", index: c_uint, count: c_int, params: [*c]const c_int) void {
    procs.glNamedProgramLocalParametersI4ivEXT.?(program, target, index, count, params);
}
pub inline fn glNamedProgramLocalParameterI4uiEXT(program: c_uint, target: @"enum", index: c_uint, x: c_uint, y: c_uint, z: c_uint, w: c_uint) void {
    procs.glNamedProgramLocalParameterI4uiEXT.?(program, target, index, x, y, z, w);
}
pub inline fn glNamedProgramLocalParameterI4uivEXT(program: c_uint, target: @"enum", index: c_uint, params: [*c]const c_uint) void {
    procs.glNamedProgramLocalParameterI4uivEXT.?(program, target, index, params);
}
pub inline fn glNamedProgramLocalParametersI4uivEXT(program: c_uint, target: @"enum", index: c_uint, count: c_int, params: [*c]const c_uint) void {
    procs.glNamedProgramLocalParametersI4uivEXT.?(program, target, index, count, params);
}
pub inline fn glGetNamedProgramLocalParameterIivEXT(program: c_uint, target: @"enum", index: c_uint, params: [*c]c_int) void {
    procs.glGetNamedProgramLocalParameterIivEXT.?(program, target, index, params);
}
pub inline fn glGetNamedProgramLocalParameterIuivEXT(program: c_uint, target: @"enum", index: c_uint, params: [*c]c_uint) void {
    procs.glGetNamedProgramLocalParameterIuivEXT.?(program, target, index, params);
}
pub inline fn glEnableClientStateiEXT(array: @"enum", index: c_uint) void {
    procs.glEnableClientStateiEXT.?(array, index);
}
pub inline fn glDisableClientStateiEXT(array: @"enum", index: c_uint) void {
    procs.glDisableClientStateiEXT.?(array, index);
}
pub inline fn glGetFloati_vEXT(pname: @"enum", index: c_uint, params: [*c]f32) void {
    procs.glGetFloati_vEXT.?(pname, index, params);
}
pub inline fn glGetDoublei_vEXT(pname: @"enum", index: c_uint, params: [*c]f64) void {
    procs.glGetDoublei_vEXT.?(pname, index, params);
}
pub inline fn glGetPointeri_vEXT(pname: @"enum", index: c_uint, params: [*c]?*anyopaque) void {
    procs.glGetPointeri_vEXT.?(pname, index, params);
}
pub inline fn glNamedProgramStringEXT(program: c_uint, target: @"enum", format: @"enum", len: c_int, string: ?*const anyopaque) void {
    procs.glNamedProgramStringEXT.?(program, target, format, len, string);
}
pub inline fn glNamedProgramLocalParameter4dEXT(program: c_uint, target: @"enum", index: c_uint, x: f64, y: f64, z: f64, w: f64) void {
    procs.glNamedProgramLocalParameter4dEXT.?(program, target, index, x, y, z, w);
}
pub inline fn glNamedProgramLocalParameter4dvEXT(program: c_uint, target: @"enum", index: c_uint, params: [*c]const f64) void {
    procs.glNamedProgramLocalParameter4dvEXT.?(program, target, index, params);
}
pub inline fn glNamedProgramLocalParameter4fEXT(program: c_uint, target: @"enum", index: c_uint, x: f32, y: f32, z: f32, w: f32) void {
    procs.glNamedProgramLocalParameter4fEXT.?(program, target, index, x, y, z, w);
}
pub inline fn glNamedProgramLocalParameter4fvEXT(program: c_uint, target: @"enum", index: c_uint, params: [*c]const f32) void {
    procs.glNamedProgramLocalParameter4fvEXT.?(program, target, index, params);
}
pub inline fn glGetNamedProgramLocalParameterdvEXT(program: c_uint, target: @"enum", index: c_uint, params: [*c]f64) void {
    procs.glGetNamedProgramLocalParameterdvEXT.?(program, target, index, params);
}
pub inline fn glGetNamedProgramLocalParameterfvEXT(program: c_uint, target: @"enum", index: c_uint, params: [*c]f32) void {
    procs.glGetNamedProgramLocalParameterfvEXT.?(program, target, index, params);
}
pub inline fn glGetNamedProgramivEXT(program: c_uint, target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetNamedProgramivEXT.?(program, target, pname, params);
}
pub inline fn glGetNamedProgramStringEXT(program: c_uint, target: @"enum", pname: @"enum", string: ?*anyopaque) void {
    procs.glGetNamedProgramStringEXT.?(program, target, pname, string);
}
pub inline fn glNamedRenderbufferStorageEXT(renderbuffer: c_uint, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glNamedRenderbufferStorageEXT.?(renderbuffer, internalformat, width, height);
}
pub inline fn glGetNamedRenderbufferParameterivEXT(renderbuffer: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetNamedRenderbufferParameterivEXT.?(renderbuffer, pname, params);
}
pub inline fn glNamedRenderbufferStorageMultisampleEXT(renderbuffer: c_uint, samples: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glNamedRenderbufferStorageMultisampleEXT.?(renderbuffer, samples, internalformat, width, height);
}
pub inline fn glNamedRenderbufferStorageMultisampleCoverageEXT(renderbuffer: c_uint, coverageSamples: c_int, colorSamples: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glNamedRenderbufferStorageMultisampleCoverageEXT.?(renderbuffer, coverageSamples, colorSamples, internalformat, width, height);
}
pub inline fn glCheckNamedFramebufferStatusEXT(framebuffer: c_uint, target: @"enum") @"enum" {
    return procs.glCheckNamedFramebufferStatusEXT.?(framebuffer, target);
}
pub inline fn glNamedFramebufferTexture1DEXT(framebuffer: c_uint, attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int) void {
    procs.glNamedFramebufferTexture1DEXT.?(framebuffer, attachment, textarget, texture, level);
}
pub inline fn glNamedFramebufferTexture2DEXT(framebuffer: c_uint, attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int) void {
    procs.glNamedFramebufferTexture2DEXT.?(framebuffer, attachment, textarget, texture, level);
}
pub inline fn glNamedFramebufferTexture3DEXT(framebuffer: c_uint, attachment: @"enum", textarget: @"enum", texture: c_uint, level: c_int, zoffset: c_int) void {
    procs.glNamedFramebufferTexture3DEXT.?(framebuffer, attachment, textarget, texture, level, zoffset);
}
pub inline fn glNamedFramebufferRenderbufferEXT(framebuffer: c_uint, attachment: @"enum", renderbuffertarget: @"enum", renderbuffer: c_uint) void {
    procs.glNamedFramebufferRenderbufferEXT.?(framebuffer, attachment, renderbuffertarget, renderbuffer);
}
pub inline fn glGetNamedFramebufferAttachmentParameterivEXT(framebuffer: c_uint, attachment: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetNamedFramebufferAttachmentParameterivEXT.?(framebuffer, attachment, pname, params);
}
pub inline fn glGenerateTextureMipmapEXT(texture: c_uint, target: @"enum") void {
    procs.glGenerateTextureMipmapEXT.?(texture, target);
}
pub inline fn glGenerateMultiTexMipmapEXT(texunit: @"enum", target: @"enum") void {
    procs.glGenerateMultiTexMipmapEXT.?(texunit, target);
}
pub inline fn glFramebufferDrawBufferEXT(framebuffer: c_uint, mode: @"enum") void {
    procs.glFramebufferDrawBufferEXT.?(framebuffer, mode);
}
pub inline fn glFramebufferDrawBuffersEXT(framebuffer: c_uint, n: c_int, bufs: [*c]const @"enum") void {
    procs.glFramebufferDrawBuffersEXT.?(framebuffer, n, bufs);
}
pub inline fn glFramebufferReadBufferEXT(framebuffer: c_uint, mode: @"enum") void {
    procs.glFramebufferReadBufferEXT.?(framebuffer, mode);
}
pub inline fn glGetFramebufferParameterivEXT(framebuffer: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetFramebufferParameterivEXT.?(framebuffer, pname, params);
}
pub inline fn glNamedCopyBufferSubDataEXT(readBuffer: c_uint, writeBuffer: c_uint, readOffset: c_long, writeOffset: c_long, size: c_ulong) void {
    procs.glNamedCopyBufferSubDataEXT.?(readBuffer, writeBuffer, readOffset, writeOffset, size);
}
pub inline fn glNamedFramebufferTextureEXT(framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int) void {
    procs.glNamedFramebufferTextureEXT.?(framebuffer, attachment, texture, level);
}
pub inline fn glNamedFramebufferTextureLayerEXT(framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int, layer: c_int) void {
    procs.glNamedFramebufferTextureLayerEXT.?(framebuffer, attachment, texture, level, layer);
}
pub inline fn glNamedFramebufferTextureFaceEXT(framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int, face: @"enum") void {
    procs.glNamedFramebufferTextureFaceEXT.?(framebuffer, attachment, texture, level, face);
}
pub inline fn glTextureRenderbufferEXT(texture: c_uint, target: @"enum", renderbuffer: c_uint) void {
    procs.glTextureRenderbufferEXT.?(texture, target, renderbuffer);
}
pub inline fn glMultiTexRenderbufferEXT(texunit: @"enum", target: @"enum", renderbuffer: c_uint) void {
    procs.glMultiTexRenderbufferEXT.?(texunit, target, renderbuffer);
}
pub inline fn glVertexArrayVertexOffsetEXT(vaobj: c_uint, buffer: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArrayVertexOffsetEXT.?(vaobj, buffer, size, @"type", stride, offset);
}
pub inline fn glVertexArrayColorOffsetEXT(vaobj: c_uint, buffer: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArrayColorOffsetEXT.?(vaobj, buffer, size, @"type", stride, offset);
}
pub inline fn glVertexArrayEdgeFlagOffsetEXT(vaobj: c_uint, buffer: c_uint, stride: c_int, offset: c_long) void {
    procs.glVertexArrayEdgeFlagOffsetEXT.?(vaobj, buffer, stride, offset);
}
pub inline fn glVertexArrayIndexOffsetEXT(vaobj: c_uint, buffer: c_uint, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArrayIndexOffsetEXT.?(vaobj, buffer, @"type", stride, offset);
}
pub inline fn glVertexArrayNormalOffsetEXT(vaobj: c_uint, buffer: c_uint, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArrayNormalOffsetEXT.?(vaobj, buffer, @"type", stride, offset);
}
pub inline fn glVertexArrayTexCoordOffsetEXT(vaobj: c_uint, buffer: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArrayTexCoordOffsetEXT.?(vaobj, buffer, size, @"type", stride, offset);
}
pub inline fn glVertexArrayMultiTexCoordOffsetEXT(vaobj: c_uint, buffer: c_uint, texunit: @"enum", size: c_int, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArrayMultiTexCoordOffsetEXT.?(vaobj, buffer, texunit, size, @"type", stride, offset);
}
pub inline fn glVertexArrayFogCoordOffsetEXT(vaobj: c_uint, buffer: c_uint, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArrayFogCoordOffsetEXT.?(vaobj, buffer, @"type", stride, offset);
}
pub inline fn glVertexArraySecondaryColorOffsetEXT(vaobj: c_uint, buffer: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArraySecondaryColorOffsetEXT.?(vaobj, buffer, size, @"type", stride, offset);
}
pub inline fn glVertexArrayVertexAttribOffsetEXT(vaobj: c_uint, buffer: c_uint, index: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", stride: c_int, offset: c_long) void {
    procs.glVertexArrayVertexAttribOffsetEXT.?(vaobj, buffer, index, size, @"type", normalized, stride, offset);
}
pub inline fn glVertexArrayVertexAttribIOffsetEXT(vaobj: c_uint, buffer: c_uint, index: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArrayVertexAttribIOffsetEXT.?(vaobj, buffer, index, size, @"type", stride, offset);
}
pub inline fn glEnableVertexArrayEXT(vaobj: c_uint, array: @"enum") void {
    procs.glEnableVertexArrayEXT.?(vaobj, array);
}
pub inline fn glDisableVertexArrayEXT(vaobj: c_uint, array: @"enum") void {
    procs.glDisableVertexArrayEXT.?(vaobj, array);
}
pub inline fn glEnableVertexArrayAttribEXT(vaobj: c_uint, index: c_uint) void {
    procs.glEnableVertexArrayAttribEXT.?(vaobj, index);
}
pub inline fn glDisableVertexArrayAttribEXT(vaobj: c_uint, index: c_uint) void {
    procs.glDisableVertexArrayAttribEXT.?(vaobj, index);
}
pub inline fn glGetVertexArrayIntegervEXT(vaobj: c_uint, pname: @"enum", param: [*c]c_int) void {
    procs.glGetVertexArrayIntegervEXT.?(vaobj, pname, param);
}
pub inline fn glGetVertexArrayPointervEXT(vaobj: c_uint, pname: @"enum", param: [*c]?*anyopaque) void {
    procs.glGetVertexArrayPointervEXT.?(vaobj, pname, param);
}
pub inline fn glGetVertexArrayIntegeri_vEXT(vaobj: c_uint, index: c_uint, pname: @"enum", param: [*c]c_int) void {
    procs.glGetVertexArrayIntegeri_vEXT.?(vaobj, index, pname, param);
}
pub inline fn glGetVertexArrayPointeri_vEXT(vaobj: c_uint, index: c_uint, pname: @"enum", param: [*c]?*anyopaque) void {
    procs.glGetVertexArrayPointeri_vEXT.?(vaobj, index, pname, param);
}
pub inline fn glMapNamedBufferRangeEXT(buffer: c_uint, offset: c_long, length: c_ulong, access: Bitfield) ?*anyopaque {
    return procs.glMapNamedBufferRangeEXT.?(buffer, offset, length, access);
}
pub inline fn glFlushMappedNamedBufferRangeEXT(buffer: c_uint, offset: c_long, length: c_ulong) void {
    procs.glFlushMappedNamedBufferRangeEXT.?(buffer, offset, length);
}
pub inline fn glNamedBufferStorageEXT(buffer: c_uint, size: c_ulong, data: ?*const anyopaque, flags: Bitfield) void {
    procs.glNamedBufferStorageEXT.?(buffer, size, data, flags);
}
pub inline fn glClearNamedBufferDataEXT(buffer: c_uint, internalformat: @"enum", format: @"enum", @"type": @"enum", data: ?*const anyopaque) void {
    procs.glClearNamedBufferDataEXT.?(buffer, internalformat, format, @"type", data);
}
pub inline fn glClearNamedBufferSubDataEXT(buffer: c_uint, internalformat: @"enum", offset: c_ulong, size: c_ulong, format: @"enum", @"type": @"enum", data: ?*const anyopaque) void {
    procs.glClearNamedBufferSubDataEXT.?(buffer, internalformat, offset, size, format, @"type", data);
}
pub inline fn glNamedFramebufferParameteriEXT(framebuffer: c_uint, pname: @"enum", param: c_int) void {
    procs.glNamedFramebufferParameteriEXT.?(framebuffer, pname, param);
}
pub inline fn glGetNamedFramebufferParameterivEXT(framebuffer: c_uint, pname: @"enum", params: [*c]c_int) void {
    procs.glGetNamedFramebufferParameterivEXT.?(framebuffer, pname, params);
}
pub inline fn glProgramUniform1dEXT(program: c_uint, location: c_int, x: f64) void {
    procs.glProgramUniform1dEXT.?(program, location, x);
}
pub inline fn glProgramUniform2dEXT(program: c_uint, location: c_int, x: f64, y: f64) void {
    procs.glProgramUniform2dEXT.?(program, location, x, y);
}
pub inline fn glProgramUniform3dEXT(program: c_uint, location: c_int, x: f64, y: f64, z: f64) void {
    procs.glProgramUniform3dEXT.?(program, location, x, y, z);
}
pub inline fn glProgramUniform4dEXT(program: c_uint, location: c_int, x: f64, y: f64, z: f64, w: f64) void {
    procs.glProgramUniform4dEXT.?(program, location, x, y, z, w);
}
pub inline fn glProgramUniform1dvEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glProgramUniform1dvEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform2dvEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glProgramUniform2dvEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform3dvEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glProgramUniform3dvEXT.?(program, location, count, value);
}
pub inline fn glProgramUniform4dvEXT(program: c_uint, location: c_int, count: c_int, value: [*c]const f64) void {
    procs.glProgramUniform4dvEXT.?(program, location, count, value);
}
pub inline fn glProgramUniformMatrix2dvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix2dvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3dvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix3dvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4dvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix4dvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix2x3dvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix2x3dvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix2x4dvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix2x4dvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3x2dvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix3x2dvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix3x4dvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix3x4dvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4x2dvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix4x2dvEXT.?(program, location, count, transpose, value);
}
pub inline fn glProgramUniformMatrix4x3dvEXT(program: c_uint, location: c_int, count: c_int, transpose: @"bool", value: [*c]const f64) void {
    procs.glProgramUniformMatrix4x3dvEXT.?(program, location, count, transpose, value);
}
pub inline fn glTextureBufferRangeEXT(texture: c_uint, target: @"enum", internalformat: @"enum", buffer: c_uint, offset: c_long, size: c_ulong) void {
    procs.glTextureBufferRangeEXT.?(texture, target, internalformat, buffer, offset, size);
}
pub inline fn glTextureStorage1DEXT(texture: c_uint, target: @"enum", levels: c_int, internalformat: @"enum", width: c_int) void {
    procs.glTextureStorage1DEXT.?(texture, target, levels, internalformat, width);
}
pub inline fn glTextureStorage2DEXT(texture: c_uint, target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glTextureStorage2DEXT.?(texture, target, levels, internalformat, width, height);
}
pub inline fn glTextureStorage3DEXT(texture: c_uint, target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int) void {
    procs.glTextureStorage3DEXT.?(texture, target, levels, internalformat, width, height, depth);
}
pub inline fn glTextureStorage2DMultisampleEXT(texture: c_uint, target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, fixedsamplelocations: @"bool") void {
    procs.glTextureStorage2DMultisampleEXT.?(texture, target, samples, internalformat, width, height, fixedsamplelocations);
}
pub inline fn glTextureStorage3DMultisampleEXT(texture: c_uint, target: @"enum", samples: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int, fixedsamplelocations: @"bool") void {
    procs.glTextureStorage3DMultisampleEXT.?(texture, target, samples, internalformat, width, height, depth, fixedsamplelocations);
}
pub inline fn glVertexArrayBindVertexBufferEXT(vaobj: c_uint, binding_index: c_uint, buffer: c_uint, offset: c_long, stride: c_int) void {
    procs.glVertexArrayBindVertexBufferEXT.?(vaobj, binding_index, buffer, offset, stride);
}
pub inline fn glVertexArrayVertexAttribFormatEXT(vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", relative_offset: c_uint) void {
    procs.glVertexArrayVertexAttribFormatEXT.?(vaobj, attribindex, size, @"type", normalized, relative_offset);
}
pub inline fn glVertexArrayVertexAttribIFormatEXT(vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) void {
    procs.glVertexArrayVertexAttribIFormatEXT.?(vaobj, attribindex, size, @"type", relative_offset);
}
pub inline fn glVertexArrayVertexAttribLFormatEXT(vaobj: c_uint, attribindex: c_uint, size: c_int, @"type": @"enum", relative_offset: c_uint) void {
    procs.glVertexArrayVertexAttribLFormatEXT.?(vaobj, attribindex, size, @"type", relative_offset);
}
pub inline fn glVertexArrayVertexAttribBindingEXT(vaobj: c_uint, attribindex: c_uint, binding_index: c_uint) void {
    procs.glVertexArrayVertexAttribBindingEXT.?(vaobj, attribindex, binding_index);
}
pub inline fn glVertexArrayVertexBindingDivisorEXT(vaobj: c_uint, binding_index: c_uint, divisor: c_uint) void {
    procs.glVertexArrayVertexBindingDivisorEXT.?(vaobj, binding_index, divisor);
}
pub inline fn glVertexArrayVertexAttribLOffsetEXT(vaobj: c_uint, buffer: c_uint, index: c_uint, size: c_int, @"type": @"enum", stride: c_int, offset: c_long) void {
    procs.glVertexArrayVertexAttribLOffsetEXT.?(vaobj, buffer, index, size, @"type", stride, offset);
}
pub inline fn glTexturePageCommitmentEXT(texture: c_uint, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, commit: @"bool") void {
    procs.glTexturePageCommitmentEXT.?(texture, level, xoffset, yoffset, zoffset, width, height, depth, commit);
}
pub inline fn glVertexArrayVertexAttribDivisorEXT(vaobj: c_uint, index: c_uint, divisor: c_uint) void {
    procs.glVertexArrayVertexAttribDivisorEXT.?(vaobj, index, divisor);
}
pub inline fn glDrawArraysInstancedEXT(mode: @"enum", start: c_int, count: c_int, primcount: c_int) void {
    procs.glDrawArraysInstancedEXT.?(mode, start, count, primcount);
}
pub inline fn glDrawElementsInstancedEXT(mode: @"enum", count: c_int, @"type": @"enum", indices: ?*const anyopaque, primcount: c_int) void {
    procs.glDrawElementsInstancedEXT.?(mode, count, @"type", indices, primcount);
}
pub inline fn glPolygonOffsetClampEXT(factor: f32, units: f32, clamp: f32) void {
    procs.glPolygonOffsetClampEXT.?(factor, units, clamp);
}
pub inline fn glRasterSamplesEXT(samples: c_uint, fixedsamplelocations: @"bool") void {
    procs.glRasterSamplesEXT.?(samples, fixedsamplelocations);
}
pub inline fn glUseShaderProgramEXT(@"type": @"enum", program: c_uint) void {
    procs.glUseShaderProgramEXT.?(@"type", program);
}
pub inline fn glActiveProgramEXT(program: c_uint) void {
    procs.glActiveProgramEXT.?(program);
}
pub inline fn glCreateShaderProgramEXT(@"type": @"enum", string: [*c]const u8) c_uint {
    return procs.glCreateShaderProgramEXT.?(@"type", string);
}
pub inline fn glFramebufferFetchBarrierEXT() void {
    procs.glFramebufferFetchBarrierEXT.?();
}
pub inline fn glTexStorage1DEXT(target: @"enum", levels: c_int, internalformat: @"enum", width: c_int) void {
    procs.glTexStorage1DEXT.?(target, levels, internalformat, width);
}
pub inline fn glTexStorage2DEXT(target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glTexStorage2DEXT.?(target, levels, internalformat, width, height);
}
pub inline fn glTexStorage3DEXT(target: @"enum", levels: c_int, internalformat: @"enum", width: c_int, height: c_int, depth: c_int) void {
    procs.glTexStorage3DEXT.?(target, levels, internalformat, width, height, depth);
}
pub inline fn glWindowRectanglesEXT(mode: @"enum", count: c_int, box: [*c]const c_int) void {
    procs.glWindowRectanglesEXT.?(mode, count, box);
}
pub inline fn glApplyFramebufferAttachmentCMAAINTEL() void {
    procs.glApplyFramebufferAttachmentCMAAINTEL.?();
}
pub inline fn glBeginPerfQueryINTEL(queryHandle: c_uint) void {
    procs.glBeginPerfQueryINTEL.?(queryHandle);
}
pub inline fn glCreatePerfQueryINTEL(queryId: c_uint, queryHandle: [*c]c_uint) void {
    procs.glCreatePerfQueryINTEL.?(queryId, queryHandle);
}
pub inline fn glDeletePerfQueryINTEL(queryHandle: c_uint) void {
    procs.glDeletePerfQueryINTEL.?(queryHandle);
}
pub inline fn glEndPerfQueryINTEL(queryHandle: c_uint) void {
    procs.glEndPerfQueryINTEL.?(queryHandle);
}
pub inline fn glGetFirstPerfQueryIdINTEL(queryId: [*c]c_uint) void {
    procs.glGetFirstPerfQueryIdINTEL.?(queryId);
}
pub inline fn glGetNextPerfQueryIdINTEL(queryId: c_uint, nextQueryId: [*c]c_uint) void {
    procs.glGetNextPerfQueryIdINTEL.?(queryId, nextQueryId);
}
pub inline fn glGetPerfCounterInfoINTEL(queryId: c_uint, counterId: c_uint, counterNameLength: c_uint, counterName: [*c]u8, counterDescLength: c_uint, counterDesc: [*c]u8, counterOffset: [*c]c_uint, counterDataSize: [*c]c_uint, counterTypeEnum: [*c]c_uint, counterDataTypeEnum: [*c]c_uint, rawCounterMaxValue: [*c]u64) void {
    procs.glGetPerfCounterInfoINTEL.?(queryId, counterId, counterNameLength, counterName, counterDescLength, counterDesc, counterOffset, counterDataSize, counterTypeEnum, counterDataTypeEnum, rawCounterMaxValue);
}
pub inline fn glGetPerfQueryDataINTEL(queryHandle: c_uint, flags: c_uint, dataSize: c_int, data: ?*anyopaque, bytesWritten: [*c]c_uint) void {
    procs.glGetPerfQueryDataINTEL.?(queryHandle, flags, dataSize, data, bytesWritten);
}
pub inline fn glGetPerfQueryIdByNameINTEL(queryName: [*c]u8, queryId: [*c]c_uint) void {
    procs.glGetPerfQueryIdByNameINTEL.?(queryName, queryId);
}
pub inline fn glGetPerfQueryInfoINTEL(queryId: c_uint, queryNameLength: c_uint, queryName: [*c]u8, dataSize: [*c]c_uint, noCounters: [*c]c_uint, noInstances: [*c]c_uint, capsMask: [*c]c_uint) void {
    procs.glGetPerfQueryInfoINTEL.?(queryId, queryNameLength, queryName, dataSize, noCounters, noInstances, capsMask);
}
pub inline fn glFramebufferParameteriMESA(target: @"enum", pname: @"enum", param: c_int) void {
    procs.glFramebufferParameteriMESA.?(target, pname, param);
}
pub inline fn glGetFramebufferParameterivMESA(target: @"enum", pname: @"enum", params: [*c]c_int) void {
    procs.glGetFramebufferParameterivMESA.?(target, pname, params);
}
pub inline fn glMultiDrawArraysIndirectBindlessNV(mode: @"enum", indirect: ?*const anyopaque, drawCount: c_int, stride: c_int, vertexBufferCount: c_int) void {
    procs.glMultiDrawArraysIndirectBindlessNV.?(mode, indirect, drawCount, stride, vertexBufferCount);
}
pub inline fn glMultiDrawElementsIndirectBindlessNV(mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawCount: c_int, stride: c_int, vertexBufferCount: c_int) void {
    procs.glMultiDrawElementsIndirectBindlessNV.?(mode, @"type", indirect, drawCount, stride, vertexBufferCount);
}
pub inline fn glMultiDrawArraysIndirectBindlessCountNV(mode: @"enum", indirect: ?*const anyopaque, drawCount: c_int, maxDrawCount: c_int, stride: c_int, vertexBufferCount: c_int) void {
    procs.glMultiDrawArraysIndirectBindlessCountNV.?(mode, indirect, drawCount, maxDrawCount, stride, vertexBufferCount);
}
pub inline fn glMultiDrawElementsIndirectBindlessCountNV(mode: @"enum", @"type": @"enum", indirect: ?*const anyopaque, drawCount: c_int, maxDrawCount: c_int, stride: c_int, vertexBufferCount: c_int) void {
    procs.glMultiDrawElementsIndirectBindlessCountNV.?(mode, @"type", indirect, drawCount, maxDrawCount, stride, vertexBufferCount);
}
pub inline fn glGetTextureHandleNV(texture: c_uint) u64 {
    return procs.glGetTextureHandleNV.?(texture);
}
pub inline fn glGetTextureSamplerHandleNV(texture: c_uint, sampler: c_uint) u64 {
    return procs.glGetTextureSamplerHandleNV.?(texture, sampler);
}
pub inline fn glMakeTextureHandleResidentNV(handle: u64) void {
    procs.glMakeTextureHandleResidentNV.?(handle);
}
pub inline fn glMakeTextureHandleNonResidentNV(handle: u64) void {
    procs.glMakeTextureHandleNonResidentNV.?(handle);
}
pub inline fn glGetImageHandleNV(texture: c_uint, level: c_int, layered: @"bool", layer: c_int, format: @"enum") u64 {
    return procs.glGetImageHandleNV.?(texture, level, layered, layer, format);
}
pub inline fn glMakeImageHandleResidentNV(handle: u64, access: @"enum") void {
    procs.glMakeImageHandleResidentNV.?(handle, access);
}
pub inline fn glMakeImageHandleNonResidentNV(handle: u64) void {
    procs.glMakeImageHandleNonResidentNV.?(handle);
}
pub inline fn glUniformHandleui64NV(location: c_int, value: u64) void {
    procs.glUniformHandleui64NV.?(location, value);
}
pub inline fn glUniformHandleui64vNV(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniformHandleui64vNV.?(location, count, value);
}
pub inline fn glProgramUniformHandleui64NV(program: c_uint, location: c_int, value: u64) void {
    procs.glProgramUniformHandleui64NV.?(program, location, value);
}
pub inline fn glProgramUniformHandleui64vNV(program: c_uint, location: c_int, count: c_int, values: [*c]const u64) void {
    procs.glProgramUniformHandleui64vNV.?(program, location, count, values);
}
pub inline fn glIsTextureHandleResidentNV(handle: u64) @"bool" {
    return procs.glIsTextureHandleResidentNV.?(handle);
}
pub inline fn glIsImageHandleResidentNV(handle: u64) @"bool" {
    return procs.glIsImageHandleResidentNV.?(handle);
}
pub inline fn glBlendParameteriNV(pname: @"enum", value: c_int) void {
    procs.glBlendParameteriNV.?(pname, value);
}
pub inline fn glBlendBarrierNV() void {
    procs.glBlendBarrierNV.?();
}
pub inline fn glViewportPositionWScaleNV(index: c_uint, xcoeff: f32, ycoeff: f32) void {
    procs.glViewportPositionWScaleNV.?(index, xcoeff, ycoeff);
}
pub inline fn glCreateStatesNV(n: c_int, states: [*c]c_uint) void {
    procs.glCreateStatesNV.?(n, states);
}
pub inline fn glDeleteStatesNV(n: c_int, states: [*c]const c_uint) void {
    procs.glDeleteStatesNV.?(n, states);
}
pub inline fn glIsStateNV(state: c_uint) @"bool" {
    return procs.glIsStateNV.?(state);
}
pub inline fn glStateCaptureNV(state: c_uint, mode: @"enum") void {
    procs.glStateCaptureNV.?(state, mode);
}
pub inline fn glGetCommandHeaderNV(tokenID: @"enum", size: c_uint) c_uint {
    return procs.glGetCommandHeaderNV.?(tokenID, size);
}
pub inline fn glGetStageIndexNV(shadertype: @"enum") c_ushort {
    return procs.glGetStageIndexNV.?(shadertype);
}
pub inline fn glDrawCommandsNV(primitiveMode: @"enum", buffer: c_uint, indirects: [*c]const c_long, sizes: [*c]const c_int, count: c_uint) void {
    procs.glDrawCommandsNV.?(primitiveMode, buffer, indirects, sizes, count);
}
pub inline fn glDrawCommandsAddressNV(primitiveMode: @"enum", indirects: [*c]const u64, sizes: [*c]const c_int, count: c_uint) void {
    procs.glDrawCommandsAddressNV.?(primitiveMode, indirects, sizes, count);
}
pub inline fn glDrawCommandsStatesNV(buffer: c_uint, indirects: [*c]const c_long, sizes: [*c]const c_int, states: [*c]const c_uint, fbos: [*c]const c_uint, count: c_uint) void {
    procs.glDrawCommandsStatesNV.?(buffer, indirects, sizes, states, fbos, count);
}
pub inline fn glDrawCommandsStatesAddressNV(indirects: [*c]const u64, sizes: [*c]const c_int, states: [*c]const c_uint, fbos: [*c]const c_uint, count: c_uint) void {
    procs.glDrawCommandsStatesAddressNV.?(indirects, sizes, states, fbos, count);
}
pub inline fn glCreateCommandListsNV(n: c_int, lists: [*c]c_uint) void {
    procs.glCreateCommandListsNV.?(n, lists);
}
pub inline fn glDeleteCommandListsNV(n: c_int, lists: [*c]const c_uint) void {
    procs.glDeleteCommandListsNV.?(n, lists);
}
pub inline fn glIsCommandListNV(list: c_uint) @"bool" {
    return procs.glIsCommandListNV.?(list);
}
pub inline fn glListDrawCommandsStatesClientNV(list: c_uint, segment: c_uint, indirects: [*c]?*const anyopaque, sizes: [*c]const c_int, states: [*c]const c_uint, fbos: [*c]const c_uint, count: c_uint) void {
    procs.glListDrawCommandsStatesClientNV.?(list, segment, indirects, sizes, states, fbos, count);
}
pub inline fn glCommandListSegmentsNV(list: c_uint, segments: c_uint) void {
    procs.glCommandListSegmentsNV.?(list, segments);
}
pub inline fn glCompileCommandListNV(list: c_uint) void {
    procs.glCompileCommandListNV.?(list);
}
pub inline fn glCallCommandListNV(list: c_uint) void {
    procs.glCallCommandListNV.?(list);
}
pub inline fn glBeginConditionalRenderNV(id: c_uint, mode: @"enum") void {
    procs.glBeginConditionalRenderNV.?(id, mode);
}
pub inline fn glEndConditionalRenderNV() void {
    procs.glEndConditionalRenderNV.?();
}
pub inline fn glSubpixelPrecisionBiasNV(xbits: c_uint, ybits: c_uint) void {
    procs.glSubpixelPrecisionBiasNV.?(xbits, ybits);
}
pub inline fn glConservativeRasterParameterfNV(pname: @"enum", value: f32) void {
    procs.glConservativeRasterParameterfNV.?(pname, value);
}
pub inline fn glConservativeRasterParameteriNV(pname: @"enum", param: c_int) void {
    procs.glConservativeRasterParameteriNV.?(pname, param);
}
pub inline fn glDepthRangedNV(zNear: f64, zFar: f64) void {
    procs.glDepthRangedNV.?(zNear, zFar);
}
pub inline fn glClearDepthdNV(depth: f64) void {
    procs.glClearDepthdNV.?(depth);
}
pub inline fn glDepthBoundsdNV(zmin: f64, zmax: f64) void {
    procs.glDepthBoundsdNV.?(zmin, zmax);
}
pub inline fn glDrawVkImageNV(vkImage: u64, sampler: c_uint, x0: f32, y0: f32, x1: f32, y1: f32, z: f32, s0: f32, t0: f32, s1: f32, t1: f32) void {
    procs.glDrawVkImageNV.?(vkImage, sampler, x0, y0, x1, y1, z, s0, t0, s1, t1);
}
pub inline fn glGetVkProcAddrNV(name: [*c]const u8) GLVULKANPROCNV {
    return procs.glGetVkProcAddrNV.?(name);
}
pub inline fn glWaitVkSemaphoreNV(vkSemaphore: u64) void {
    procs.glWaitVkSemaphoreNV.?(vkSemaphore);
}
pub inline fn glSignalVkSemaphoreNV(vkSemaphore: u64) void {
    procs.glSignalVkSemaphoreNV.?(vkSemaphore);
}
pub inline fn glSignalVkFenceNV(vkFence: u64) void {
    procs.glSignalVkFenceNV.?(vkFence);
}
pub inline fn glFragmentCoverageColorNV(color: c_uint) void {
    procs.glFragmentCoverageColorNV.?(color);
}
pub inline fn glCoverageModulationTableNV(n: c_int, v: [*c]const f32) void {
    procs.glCoverageModulationTableNV.?(n, v);
}
pub inline fn glGetCoverageModulationTableNV(bufSize: c_int, v: [*c]f32) void {
    procs.glGetCoverageModulationTableNV.?(bufSize, v);
}
pub inline fn glCoverageModulationNV(components: @"enum") void {
    procs.glCoverageModulationNV.?(components);
}
pub inline fn glRenderbufferStorageMultisampleCoverageNV(target: @"enum", coverageSamples: c_int, colorSamples: c_int, internalformat: @"enum", width: c_int, height: c_int) void {
    procs.glRenderbufferStorageMultisampleCoverageNV.?(target, coverageSamples, colorSamples, internalformat, width, height);
}
pub inline fn glUniform1i64NV(location: c_int, x: i64) void {
    procs.glUniform1i64NV.?(location, x);
}
pub inline fn glUniform2i64NV(location: c_int, x: i64, y: i64) void {
    procs.glUniform2i64NV.?(location, x, y);
}
pub inline fn glUniform3i64NV(location: c_int, x: i64, y: i64, z: i64) void {
    procs.glUniform3i64NV.?(location, x, y, z);
}
pub inline fn glUniform4i64NV(location: c_int, x: i64, y: i64, z: i64, w: i64) void {
    procs.glUniform4i64NV.?(location, x, y, z, w);
}
pub inline fn glUniform1i64vNV(location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glUniform1i64vNV.?(location, count, value);
}
pub inline fn glUniform2i64vNV(location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glUniform2i64vNV.?(location, count, value);
}
pub inline fn glUniform3i64vNV(location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glUniform3i64vNV.?(location, count, value);
}
pub inline fn glUniform4i64vNV(location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glUniform4i64vNV.?(location, count, value);
}
pub inline fn glUniform1ui64NV(location: c_int, x: u64) void {
    procs.glUniform1ui64NV.?(location, x);
}
pub inline fn glUniform2ui64NV(location: c_int, x: u64, y: u64) void {
    procs.glUniform2ui64NV.?(location, x, y);
}
pub inline fn glUniform3ui64NV(location: c_int, x: u64, y: u64, z: u64) void {
    procs.glUniform3ui64NV.?(location, x, y, z);
}
pub inline fn glUniform4ui64NV(location: c_int, x: u64, y: u64, z: u64, w: u64) void {
    procs.glUniform4ui64NV.?(location, x, y, z, w);
}
pub inline fn glUniform1ui64vNV(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniform1ui64vNV.?(location, count, value);
}
pub inline fn glUniform2ui64vNV(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniform2ui64vNV.?(location, count, value);
}
pub inline fn glUniform3ui64vNV(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniform3ui64vNV.?(location, count, value);
}
pub inline fn glUniform4ui64vNV(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniform4ui64vNV.?(location, count, value);
}
pub inline fn glGetUniformi64vNV(program: c_uint, location: c_int, params: [*c]i64) void {
    procs.glGetUniformi64vNV.?(program, location, params);
}
pub inline fn glProgramUniform1i64NV(program: c_uint, location: c_int, x: i64) void {
    procs.glProgramUniform1i64NV.?(program, location, x);
}
pub inline fn glProgramUniform2i64NV(program: c_uint, location: c_int, x: i64, y: i64) void {
    procs.glProgramUniform2i64NV.?(program, location, x, y);
}
pub inline fn glProgramUniform3i64NV(program: c_uint, location: c_int, x: i64, y: i64, z: i64) void {
    procs.glProgramUniform3i64NV.?(program, location, x, y, z);
}
pub inline fn glProgramUniform4i64NV(program: c_uint, location: c_int, x: i64, y: i64, z: i64, w: i64) void {
    procs.glProgramUniform4i64NV.?(program, location, x, y, z, w);
}
pub inline fn glProgramUniform1i64vNV(program: c_uint, location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glProgramUniform1i64vNV.?(program, location, count, value);
}
pub inline fn glProgramUniform2i64vNV(program: c_uint, location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glProgramUniform2i64vNV.?(program, location, count, value);
}
pub inline fn glProgramUniform3i64vNV(program: c_uint, location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glProgramUniform3i64vNV.?(program, location, count, value);
}
pub inline fn glProgramUniform4i64vNV(program: c_uint, location: c_int, count: c_int, value: [*c]const i64) void {
    procs.glProgramUniform4i64vNV.?(program, location, count, value);
}
pub inline fn glProgramUniform1ui64NV(program: c_uint, location: c_int, x: u64) void {
    procs.glProgramUniform1ui64NV.?(program, location, x);
}
pub inline fn glProgramUniform2ui64NV(program: c_uint, location: c_int, x: u64, y: u64) void {
    procs.glProgramUniform2ui64NV.?(program, location, x, y);
}
pub inline fn glProgramUniform3ui64NV(program: c_uint, location: c_int, x: u64, y: u64, z: u64) void {
    procs.glProgramUniform3ui64NV.?(program, location, x, y, z);
}
pub inline fn glProgramUniform4ui64NV(program: c_uint, location: c_int, x: u64, y: u64, z: u64, w: u64) void {
    procs.glProgramUniform4ui64NV.?(program, location, x, y, z, w);
}
pub inline fn glProgramUniform1ui64vNV(program: c_uint, location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glProgramUniform1ui64vNV.?(program, location, count, value);
}
pub inline fn glProgramUniform2ui64vNV(program: c_uint, location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glProgramUniform2ui64vNV.?(program, location, count, value);
}
pub inline fn glProgramUniform3ui64vNV(program: c_uint, location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glProgramUniform3ui64vNV.?(program, location, count, value);
}
pub inline fn glProgramUniform4ui64vNV(program: c_uint, location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glProgramUniform4ui64vNV.?(program, location, count, value);
}
pub inline fn glGetInternalformatSampleivNV(target: @"enum", internalformat: @"enum", samples: c_int, pname: @"enum", count: c_int, params: [*c]c_int) void {
    procs.glGetInternalformatSampleivNV.?(target, internalformat, samples, pname, count, params);
}
pub inline fn glGetMemoryObjectDetachedResourcesuivNV(memory: c_uint, pname: @"enum", first: c_int, count: c_int, params: [*c]c_uint) void {
    procs.glGetMemoryObjectDetachedResourcesuivNV.?(memory, pname, first, count, params);
}
pub inline fn glResetMemoryObjectParameterNV(memory: c_uint, pname: @"enum") void {
    procs.glResetMemoryObjectParameterNV.?(memory, pname);
}
pub inline fn glTexAttachMemoryNV(target: @"enum", memory: c_uint, offset: u64) void {
    procs.glTexAttachMemoryNV.?(target, memory, offset);
}
pub inline fn glBufferAttachMemoryNV(target: @"enum", memory: c_uint, offset: u64) void {
    procs.glBufferAttachMemoryNV.?(target, memory, offset);
}
pub inline fn glTextureAttachMemoryNV(texture: c_uint, memory: c_uint, offset: u64) void {
    procs.glTextureAttachMemoryNV.?(texture, memory, offset);
}
pub inline fn glNamedBufferAttachMemoryNV(buffer: c_uint, memory: c_uint, offset: u64) void {
    procs.glNamedBufferAttachMemoryNV.?(buffer, memory, offset);
}
pub inline fn glBufferPageCommitmentMemNV(target: @"enum", offset: c_long, size: c_ulong, memory: c_uint, memOffset: u64, commit: @"bool") void {
    procs.glBufferPageCommitmentMemNV.?(target, offset, size, memory, memOffset, commit);
}
pub inline fn glTexPageCommitmentMemNV(target: @"enum", layer: c_int, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, memory: c_uint, offset: u64, commit: @"bool") void {
    procs.glTexPageCommitmentMemNV.?(target, layer, level, xoffset, yoffset, zoffset, width, height, depth, memory, offset, commit);
}
pub inline fn glNamedBufferPageCommitmentMemNV(buffer: c_uint, offset: c_long, size: c_ulong, memory: c_uint, memOffset: u64, commit: @"bool") void {
    procs.glNamedBufferPageCommitmentMemNV.?(buffer, offset, size, memory, memOffset, commit);
}
pub inline fn glTexturePageCommitmentMemNV(texture: c_uint, layer: c_int, level: c_int, xoffset: c_int, yoffset: c_int, zoffset: c_int, width: c_int, height: c_int, depth: c_int, memory: c_uint, offset: u64, commit: @"bool") void {
    procs.glTexturePageCommitmentMemNV.?(texture, layer, level, xoffset, yoffset, zoffset, width, height, depth, memory, offset, commit);
}
pub inline fn glDrawMeshTasksNV(first: c_uint, count: c_uint) void {
    procs.glDrawMeshTasksNV.?(first, count);
}
pub inline fn glDrawMeshTasksIndirectNV(indirect: c_long) void {
    procs.glDrawMeshTasksIndirectNV.?(indirect);
}
pub inline fn glMultiDrawMeshTasksIndirectNV(indirect: c_long, drawcount: c_int, stride: c_int) void {
    procs.glMultiDrawMeshTasksIndirectNV.?(indirect, drawcount, stride);
}
pub inline fn glMultiDrawMeshTasksIndirectCountNV(indirect: c_long, drawcount: c_long, maxdrawcount: c_int, stride: c_int) void {
    procs.glMultiDrawMeshTasksIndirectCountNV.?(indirect, drawcount, maxdrawcount, stride);
}
pub inline fn glGenPathsNV(range: c_int) c_uint {
    return procs.glGenPathsNV.?(range);
}
pub inline fn glDeletePathsNV(path: c_uint, range: c_int) void {
    procs.glDeletePathsNV.?(path, range);
}
pub inline fn glIsPathNV(path: c_uint) @"bool" {
    return procs.glIsPathNV.?(path);
}
pub inline fn glPathCommandsNV(path: c_uint, numCommands: c_int, commands: [*c]const u8, numCoords: c_int, coordType: @"enum", coords: ?*const anyopaque) void {
    procs.glPathCommandsNV.?(path, numCommands, commands, numCoords, coordType, coords);
}
pub inline fn glPathCoordsNV(path: c_uint, numCoords: c_int, coordType: @"enum", coords: ?*const anyopaque) void {
    procs.glPathCoordsNV.?(path, numCoords, coordType, coords);
}
pub inline fn glPathSubCommandsNV(path: c_uint, commandStart: c_int, commandsToDelete: c_int, numCommands: c_int, commands: [*c]const u8, numCoords: c_int, coordType: @"enum", coords: ?*const anyopaque) void {
    procs.glPathSubCommandsNV.?(path, commandStart, commandsToDelete, numCommands, commands, numCoords, coordType, coords);
}
pub inline fn glPathSubCoordsNV(path: c_uint, coordStart: c_int, numCoords: c_int, coordType: @"enum", coords: ?*const anyopaque) void {
    procs.glPathSubCoordsNV.?(path, coordStart, numCoords, coordType, coords);
}
pub inline fn glPathStringNV(path: c_uint, format: @"enum", length: c_int, pathString: ?*const anyopaque) void {
    procs.glPathStringNV.?(path, format, length, pathString);
}
pub inline fn glPathGlyphsNV(firstPathName: c_uint, fontTarget: @"enum", fontName: ?*const anyopaque, fontStyle: Bitfield, numGlyphs: c_int, @"type": @"enum", charcodes: ?*const anyopaque, handleMissingGlyphs: @"enum", pathParameterTemplate: c_uint, emScale: f32) void {
    procs.glPathGlyphsNV.?(firstPathName, fontTarget, fontName, fontStyle, numGlyphs, @"type", charcodes, handleMissingGlyphs, pathParameterTemplate, emScale);
}
pub inline fn glPathGlyphRangeNV(firstPathName: c_uint, fontTarget: @"enum", fontName: ?*const anyopaque, fontStyle: Bitfield, firstGlyph: c_uint, numGlyphs: c_int, handleMissingGlyphs: @"enum", pathParameterTemplate: c_uint, emScale: f32) void {
    procs.glPathGlyphRangeNV.?(firstPathName, fontTarget, fontName, fontStyle, firstGlyph, numGlyphs, handleMissingGlyphs, pathParameterTemplate, emScale);
}
pub inline fn glWeightPathsNV(resultPath: c_uint, numPaths: c_int, paths: [*c]const c_uint, weights: [*c]const f32) void {
    procs.glWeightPathsNV.?(resultPath, numPaths, paths, weights);
}
pub inline fn glCopyPathNV(resultPath: c_uint, srcPath: c_uint) void {
    procs.glCopyPathNV.?(resultPath, srcPath);
}
pub inline fn glInterpolatePathsNV(resultPath: c_uint, pathA: c_uint, pathB: c_uint, weight: f32) void {
    procs.glInterpolatePathsNV.?(resultPath, pathA, pathB, weight);
}
pub inline fn glTransformPathNV(resultPath: c_uint, srcPath: c_uint, transformType: @"enum", transformValues: [*c]const f32) void {
    procs.glTransformPathNV.?(resultPath, srcPath, transformType, transformValues);
}
pub inline fn glPathParameterivNV(path: c_uint, pname: @"enum", value: [*c]const c_int) void {
    procs.glPathParameterivNV.?(path, pname, value);
}
pub inline fn glPathParameteriNV(path: c_uint, pname: @"enum", value: c_int) void {
    procs.glPathParameteriNV.?(path, pname, value);
}
pub inline fn glPathParameterfvNV(path: c_uint, pname: @"enum", value: [*c]const f32) void {
    procs.glPathParameterfvNV.?(path, pname, value);
}
pub inline fn glPathParameterfNV(path: c_uint, pname: @"enum", value: f32) void {
    procs.glPathParameterfNV.?(path, pname, value);
}
pub inline fn glPathDashArrayNV(path: c_uint, dashCount: c_int, dashArray: [*c]const f32) void {
    procs.glPathDashArrayNV.?(path, dashCount, dashArray);
}
pub inline fn glPathStencilFuncNV(func: @"enum", ref: c_int, mask: c_uint) void {
    procs.glPathStencilFuncNV.?(func, ref, mask);
}
pub inline fn glPathStencilDepthOffsetNV(factor: f32, units: f32) void {
    procs.glPathStencilDepthOffsetNV.?(factor, units);
}
pub inline fn glStencilFillPathNV(path: c_uint, fillMode: @"enum", mask: c_uint) void {
    procs.glStencilFillPathNV.?(path, fillMode, mask);
}
pub inline fn glStencilStrokePathNV(path: c_uint, reference: c_int, mask: c_uint) void {
    procs.glStencilStrokePathNV.?(path, reference, mask);
}
pub inline fn glStencilFillPathInstancedNV(numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, fillMode: @"enum", mask: c_uint, transformType: @"enum", transformValues: [*c]const f32) void {
    procs.glStencilFillPathInstancedNV.?(numPaths, pathNameType, paths, pathBase, fillMode, mask, transformType, transformValues);
}
pub inline fn glStencilStrokePathInstancedNV(numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, reference: c_int, mask: c_uint, transformType: @"enum", transformValues: [*c]const f32) void {
    procs.glStencilStrokePathInstancedNV.?(numPaths, pathNameType, paths, pathBase, reference, mask, transformType, transformValues);
}
pub inline fn glPathCoverDepthFuncNV(func: @"enum") void {
    procs.glPathCoverDepthFuncNV.?(func);
}
pub inline fn glCoverFillPathNV(path: c_uint, coverMode: @"enum") void {
    procs.glCoverFillPathNV.?(path, coverMode);
}
pub inline fn glCoverStrokePathNV(path: c_uint, coverMode: @"enum") void {
    procs.glCoverStrokePathNV.?(path, coverMode);
}
pub inline fn glCoverFillPathInstancedNV(numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, coverMode: @"enum", transformType: @"enum", transformValues: [*c]const f32) void {
    procs.glCoverFillPathInstancedNV.?(numPaths, pathNameType, paths, pathBase, coverMode, transformType, transformValues);
}
pub inline fn glCoverStrokePathInstancedNV(numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, coverMode: @"enum", transformType: @"enum", transformValues: [*c]const f32) void {
    procs.glCoverStrokePathInstancedNV.?(numPaths, pathNameType, paths, pathBase, coverMode, transformType, transformValues);
}
pub inline fn glGetPathParameterivNV(path: c_uint, pname: @"enum", value: [*c]c_int) void {
    procs.glGetPathParameterivNV.?(path, pname, value);
}
pub inline fn glGetPathParameterfvNV(path: c_uint, pname: @"enum", value: [*c]f32) void {
    procs.glGetPathParameterfvNV.?(path, pname, value);
}
pub inline fn glGetPathCommandsNV(path: c_uint, commands: [*c]u8) void {
    procs.glGetPathCommandsNV.?(path, commands);
}
pub inline fn glGetPathCoordsNV(path: c_uint, coords: [*c]f32) void {
    procs.glGetPathCoordsNV.?(path, coords);
}
pub inline fn glGetPathDashArrayNV(path: c_uint, dashArray: [*c]f32) void {
    procs.glGetPathDashArrayNV.?(path, dashArray);
}
pub inline fn glGetPathMetricsNV(metricQueryMask: Bitfield, numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, stride: c_int, metrics: [*c]f32) void {
    procs.glGetPathMetricsNV.?(metricQueryMask, numPaths, pathNameType, paths, pathBase, stride, metrics);
}
pub inline fn glGetPathMetricRangeNV(metricQueryMask: Bitfield, firstPathName: c_uint, numPaths: c_int, stride: c_int, metrics: [*c]f32) void {
    procs.glGetPathMetricRangeNV.?(metricQueryMask, firstPathName, numPaths, stride, metrics);
}
pub inline fn glGetPathSpacingNV(pathListMode: @"enum", numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, advanceScale: f32, kerningScale: f32, transformType: @"enum", returnedSpacing: [*c]f32) void {
    procs.glGetPathSpacingNV.?(pathListMode, numPaths, pathNameType, paths, pathBase, advanceScale, kerningScale, transformType, returnedSpacing);
}
pub inline fn glIsPointInFillPathNV(path: c_uint, mask: c_uint, x: f32, y: f32) @"bool" {
    return procs.glIsPointInFillPathNV.?(path, mask, x, y);
}
pub inline fn glIsPointInStrokePathNV(path: c_uint, x: f32, y: f32) @"bool" {
    return procs.glIsPointInStrokePathNV.?(path, x, y);
}
pub inline fn glGetPathLengthNV(path: c_uint, startSegment: c_int, numSegments: c_int) f32 {
    return procs.glGetPathLengthNV.?(path, startSegment, numSegments);
}
pub inline fn glPointAlongPathNV(path: c_uint, startSegment: c_int, numSegments: c_int, distance: f32, x: [*c]f32, y: [*c]f32, tangentX: [*c]f32, tangentY: [*c]f32) @"bool" {
    return procs.glPointAlongPathNV.?(path, startSegment, numSegments, distance, x, y, tangentX, tangentY);
}
pub inline fn glMatrixLoad3x2fNV(matrixMode: @"enum", m: [*c]const f32) void {
    procs.glMatrixLoad3x2fNV.?(matrixMode, m);
}
pub inline fn glMatrixLoad3x3fNV(matrixMode: @"enum", m: [*c]const f32) void {
    procs.glMatrixLoad3x3fNV.?(matrixMode, m);
}
pub inline fn glMatrixLoadTranspose3x3fNV(matrixMode: @"enum", m: [*c]const f32) void {
    procs.glMatrixLoadTranspose3x3fNV.?(matrixMode, m);
}
pub inline fn glMatrixMult3x2fNV(matrixMode: @"enum", m: [*c]const f32) void {
    procs.glMatrixMult3x2fNV.?(matrixMode, m);
}
pub inline fn glMatrixMult3x3fNV(matrixMode: @"enum", m: [*c]const f32) void {
    procs.glMatrixMult3x3fNV.?(matrixMode, m);
}
pub inline fn glMatrixMultTranspose3x3fNV(matrixMode: @"enum", m: [*c]const f32) void {
    procs.glMatrixMultTranspose3x3fNV.?(matrixMode, m);
}
pub inline fn glStencilThenCoverFillPathNV(path: c_uint, fillMode: @"enum", mask: c_uint, coverMode: @"enum") void {
    procs.glStencilThenCoverFillPathNV.?(path, fillMode, mask, coverMode);
}
pub inline fn glStencilThenCoverStrokePathNV(path: c_uint, reference: c_int, mask: c_uint, coverMode: @"enum") void {
    procs.glStencilThenCoverStrokePathNV.?(path, reference, mask, coverMode);
}
pub inline fn glStencilThenCoverFillPathInstancedNV(numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, fillMode: @"enum", mask: c_uint, coverMode: @"enum", transformType: @"enum", transformValues: [*c]const f32) void {
    procs.glStencilThenCoverFillPathInstancedNV.?(numPaths, pathNameType, paths, pathBase, fillMode, mask, coverMode, transformType, transformValues);
}
pub inline fn glStencilThenCoverStrokePathInstancedNV(numPaths: c_int, pathNameType: @"enum", paths: ?*const anyopaque, pathBase: c_uint, reference: c_int, mask: c_uint, coverMode: @"enum", transformType: @"enum", transformValues: [*c]const f32) void {
    procs.glStencilThenCoverStrokePathInstancedNV.?(numPaths, pathNameType, paths, pathBase, reference, mask, coverMode, transformType, transformValues);
}
pub inline fn glPathGlyphIndexRangeNV(fontTarget: @"enum", fontName: ?*const anyopaque, fontStyle: Bitfield, pathParameterTemplate: c_uint, emScale: f32, baseAndCount: [*c]c_uint) @"enum" {
    return procs.glPathGlyphIndexRangeNV.?(fontTarget, fontName, fontStyle, pathParameterTemplate, emScale, baseAndCount);
}
pub inline fn glPathGlyphIndexArrayNV(firstPathName: c_uint, fontTarget: @"enum", fontName: ?*const anyopaque, fontStyle: Bitfield, firstGlyphIndex: c_uint, numGlyphs: c_int, pathParameterTemplate: c_uint, emScale: f32) @"enum" {
    return procs.glPathGlyphIndexArrayNV.?(firstPathName, fontTarget, fontName, fontStyle, firstGlyphIndex, numGlyphs, pathParameterTemplate, emScale);
}
pub inline fn glPathMemoryGlyphIndexArrayNV(firstPathName: c_uint, fontTarget: @"enum", fontSize: c_ulong, fontData: ?*const anyopaque, faceIndex: c_int, firstGlyphIndex: c_uint, numGlyphs: c_int, pathParameterTemplate: c_uint, emScale: f32) @"enum" {
    return procs.glPathMemoryGlyphIndexArrayNV.?(firstPathName, fontTarget, fontSize, fontData, faceIndex, firstGlyphIndex, numGlyphs, pathParameterTemplate, emScale);
}
pub inline fn glProgramPathFragmentInputGenNV(program: c_uint, location: c_int, genMode: @"enum", components: c_int, coeffs: [*c]const f32) void {
    procs.glProgramPathFragmentInputGenNV.?(program, location, genMode, components, coeffs);
}
pub inline fn glGetProgramResourcefvNV(program: c_uint, programInterface: @"enum", index: c_uint, propCount: c_int, props: [*c]const @"enum", count: c_int, length: [*c]c_int, params: [*c]f32) void {
    procs.glGetProgramResourcefvNV.?(program, programInterface, index, propCount, props, count, length, params);
}
pub inline fn glFramebufferSampleLocationsfvNV(target: @"enum", start: c_uint, count: c_int, v: [*c]const f32) void {
    procs.glFramebufferSampleLocationsfvNV.?(target, start, count, v);
}
pub inline fn glNamedFramebufferSampleLocationsfvNV(framebuffer: c_uint, start: c_uint, count: c_int, v: [*c]const f32) void {
    procs.glNamedFramebufferSampleLocationsfvNV.?(framebuffer, start, count, v);
}
pub inline fn glResolveDepthValuesNV() void {
    procs.glResolveDepthValuesNV.?();
}
pub inline fn glScissorExclusiveNV(x: c_int, y: c_int, width: c_int, height: c_int) void {
    procs.glScissorExclusiveNV.?(x, y, width, height);
}
pub inline fn glScissorExclusiveArrayvNV(first: c_uint, count: c_int, v: [*c]const c_int) void {
    procs.glScissorExclusiveArrayvNV.?(first, count, v);
}
pub inline fn glMakeBufferResidentNV(target: @"enum", access: @"enum") void {
    procs.glMakeBufferResidentNV.?(target, access);
}
pub inline fn glMakeBufferNonResidentNV(target: @"enum") void {
    procs.glMakeBufferNonResidentNV.?(target);
}
pub inline fn glIsBufferResidentNV(target: @"enum") @"bool" {
    return procs.glIsBufferResidentNV.?(target);
}
pub inline fn glMakeNamedBufferResidentNV(buffer: c_uint, access: @"enum") void {
    procs.glMakeNamedBufferResidentNV.?(buffer, access);
}
pub inline fn glMakeNamedBufferNonResidentNV(buffer: c_uint) void {
    procs.glMakeNamedBufferNonResidentNV.?(buffer);
}
pub inline fn glIsNamedBufferResidentNV(buffer: c_uint) @"bool" {
    return procs.glIsNamedBufferResidentNV.?(buffer);
}
pub inline fn glGetBufferParameterui64vNV(target: @"enum", pname: @"enum", params: [*c]u64) void {
    procs.glGetBufferParameterui64vNV.?(target, pname, params);
}
pub inline fn glGetNamedBufferParameterui64vNV(buffer: c_uint, pname: @"enum", params: [*c]u64) void {
    procs.glGetNamedBufferParameterui64vNV.?(buffer, pname, params);
}
pub inline fn glGetIntegerui64vNV(value: @"enum", result: [*c]u64) void {
    procs.glGetIntegerui64vNV.?(value, result);
}
pub inline fn glUniformui64NV(location: c_int, value: u64) void {
    procs.glUniformui64NV.?(location, value);
}
pub inline fn glUniformui64vNV(location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glUniformui64vNV.?(location, count, value);
}
pub inline fn glGetUniformui64vNV(program: c_uint, location: c_int, params: [*c]u64) void {
    procs.glGetUniformui64vNV.?(program, location, params);
}
pub inline fn glProgramUniformui64NV(program: c_uint, location: c_int, value: u64) void {
    procs.glProgramUniformui64NV.?(program, location, value);
}
pub inline fn glProgramUniformui64vNV(program: c_uint, location: c_int, count: c_int, value: [*c]const u64) void {
    procs.glProgramUniformui64vNV.?(program, location, count, value);
}
pub inline fn glBindShadingRateImageNV(texture: c_uint) void {
    procs.glBindShadingRateImageNV.?(texture);
}
pub inline fn glGetShadingRateImagePaletteNV(viewport: c_uint, entry: c_uint, rate: [*c]@"enum") void {
    procs.glGetShadingRateImagePaletteNV.?(viewport, entry, rate);
}
pub inline fn glGetShadingRateSampleLocationivNV(rate: @"enum", samples: c_uint, index: c_uint, location: [*c]c_int) void {
    procs.glGetShadingRateSampleLocationivNV.?(rate, samples, index, location);
}
pub inline fn glShadingRateImageBarrierNV(synchronize: @"bool") void {
    procs.glShadingRateImageBarrierNV.?(synchronize);
}
pub inline fn glShadingRateImagePaletteNV(viewport: c_uint, first: c_uint, count: c_int, rates: [*c]const @"enum") void {
    procs.glShadingRateImagePaletteNV.?(viewport, first, count, rates);
}
pub inline fn glShadingRateSampleOrderNV(order: @"enum") void {
    procs.glShadingRateSampleOrderNV.?(order);
}
pub inline fn glShadingRateSampleOrderCustomNV(rate: @"enum", samples: c_uint, locations: [*c]const c_int) void {
    procs.glShadingRateSampleOrderCustomNV.?(rate, samples, locations);
}
pub inline fn glTextureBarrierNV() void {
    procs.glTextureBarrierNV.?();
}
pub inline fn glVertexAttribL1i64NV(index: c_uint, x: i64) void {
    procs.glVertexAttribL1i64NV.?(index, x);
}
pub inline fn glVertexAttribL2i64NV(index: c_uint, x: i64, y: i64) void {
    procs.glVertexAttribL2i64NV.?(index, x, y);
}
pub inline fn glVertexAttribL3i64NV(index: c_uint, x: i64, y: i64, z: i64) void {
    procs.glVertexAttribL3i64NV.?(index, x, y, z);
}
pub inline fn glVertexAttribL4i64NV(index: c_uint, x: i64, y: i64, z: i64, w: i64) void {
    procs.glVertexAttribL4i64NV.?(index, x, y, z, w);
}
pub inline fn glVertexAttribL1i64vNV(index: c_uint, v: [*c]const i64) void {
    procs.glVertexAttribL1i64vNV.?(index, v);
}
pub inline fn glVertexAttribL2i64vNV(index: c_uint, v: [*c]const i64) void {
    procs.glVertexAttribL2i64vNV.?(index, v);
}
pub inline fn glVertexAttribL3i64vNV(index: c_uint, v: [*c]const i64) void {
    procs.glVertexAttribL3i64vNV.?(index, v);
}
pub inline fn glVertexAttribL4i64vNV(index: c_uint, v: [*c]const i64) void {
    procs.glVertexAttribL4i64vNV.?(index, v);
}
pub inline fn glVertexAttribL1ui64NV(index: c_uint, x: u64) void {
    procs.glVertexAttribL1ui64NV.?(index, x);
}
pub inline fn glVertexAttribL2ui64NV(index: c_uint, x: u64, y: u64) void {
    procs.glVertexAttribL2ui64NV.?(index, x, y);
}
pub inline fn glVertexAttribL3ui64NV(index: c_uint, x: u64, y: u64, z: u64) void {
    procs.glVertexAttribL3ui64NV.?(index, x, y, z);
}
pub inline fn glVertexAttribL4ui64NV(index: c_uint, x: u64, y: u64, z: u64, w: u64) void {
    procs.glVertexAttribL4ui64NV.?(index, x, y, z, w);
}
pub inline fn glVertexAttribL1ui64vNV(index: c_uint, v: [*c]const u64) void {
    procs.glVertexAttribL1ui64vNV.?(index, v);
}
pub inline fn glVertexAttribL2ui64vNV(index: c_uint, v: [*c]const u64) void {
    procs.glVertexAttribL2ui64vNV.?(index, v);
}
pub inline fn glVertexAttribL3ui64vNV(index: c_uint, v: [*c]const u64) void {
    procs.glVertexAttribL3ui64vNV.?(index, v);
}
pub inline fn glVertexAttribL4ui64vNV(index: c_uint, v: [*c]const u64) void {
    procs.glVertexAttribL4ui64vNV.?(index, v);
}
pub inline fn glGetVertexAttribLi64vNV(index: c_uint, pname: @"enum", params: [*c]i64) void {
    procs.glGetVertexAttribLi64vNV.?(index, pname, params);
}
pub inline fn glGetVertexAttribLui64vNV(index: c_uint, pname: @"enum", params: [*c]u64) void {
    procs.glGetVertexAttribLui64vNV.?(index, pname, params);
}
pub inline fn glVertexAttribLFormatNV(index: c_uint, size: c_int, @"type": @"enum", stride: c_int) void {
    procs.glVertexAttribLFormatNV.?(index, size, @"type", stride);
}
pub inline fn glBufferAddressRangeNV(pname: @"enum", index: c_uint, address: u64, length: c_ulong) void {
    procs.glBufferAddressRangeNV.?(pname, index, address, length);
}
pub inline fn glVertexFormatNV(size: c_int, @"type": @"enum", stride: c_int) void {
    procs.glVertexFormatNV.?(size, @"type", stride);
}
pub inline fn glNormalFormatNV(@"type": @"enum", stride: c_int) void {
    procs.glNormalFormatNV.?(@"type", stride);
}
pub inline fn glColorFormatNV(size: c_int, @"type": @"enum", stride: c_int) void {
    procs.glColorFormatNV.?(size, @"type", stride);
}
pub inline fn glIndexFormatNV(@"type": @"enum", stride: c_int) void {
    procs.glIndexFormatNV.?(@"type", stride);
}
pub inline fn glTexCoordFormatNV(size: c_int, @"type": @"enum", stride: c_int) void {
    procs.glTexCoordFormatNV.?(size, @"type", stride);
}
pub inline fn glEdgeFlagFormatNV(stride: c_int) void {
    procs.glEdgeFlagFormatNV.?(stride);
}
pub inline fn glSecondaryColorFormatNV(size: c_int, @"type": @"enum", stride: c_int) void {
    procs.glSecondaryColorFormatNV.?(size, @"type", stride);
}
pub inline fn glFogCoordFormatNV(@"type": @"enum", stride: c_int) void {
    procs.glFogCoordFormatNV.?(@"type", stride);
}
pub inline fn glVertexAttribFormatNV(index: c_uint, size: c_int, @"type": @"enum", normalized: @"bool", stride: c_int) void {
    procs.glVertexAttribFormatNV.?(index, size, @"type", normalized, stride);
}
pub inline fn glVertexAttribIFormatNV(index: c_uint, size: c_int, @"type": @"enum", stride: c_int) void {
    procs.glVertexAttribIFormatNV.?(index, size, @"type", stride);
}
pub inline fn glGetIntegerui64i_vNV(value: @"enum", index: c_uint, result: [*c]u64) void {
    procs.glGetIntegerui64i_vNV.?(value, index, result);
}
pub inline fn glViewportSwizzleNV(index: c_uint, swizzlex: @"enum", swizzley: @"enum", swizzlez: @"enum", swizzlew: @"enum") void {
    procs.glViewportSwizzleNV.?(index, swizzlex, swizzley, swizzlez, swizzlew);
}
pub inline fn glFramebufferTextureMultiviewOVR(target: @"enum", attachment: @"enum", texture: c_uint, level: c_int, baseViewIndex: c_int, numViews: c_int) void {
    procs.glFramebufferTextureMultiviewOVR.?(target, attachment, texture, level, baseViewIndex, numViews);
}
pub inline fn glNamedFramebufferTextureMultiviewOVR(framebuffer: c_uint, attachment: @"enum", texture: c_uint, level: c_int, baseViewIndex: c_int, numViews: c_int) void {
    procs.glNamedFramebufferTextureMultiviewOVR.?(framebuffer, attachment, texture, level, baseViewIndex, numViews);
}
