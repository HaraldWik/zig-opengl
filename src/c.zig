pub const APIENTRY: @import("std").builtin.CallingConvention = if (@import("builtin").os.tag == .windows) .winapi else .c;

const procs = @import("root.zig").procs;

pub const GLenum = c_uint;
pub const GLboolean = u8;
pub const GLbitfield = c_uint;
pub const GLvoid = anyopaque;
pub const GLbyte = i8;
pub const GLshort = c_short;
pub const GLint = c_int;
pub const GLubyte = u8;
pub const GLushort = c_ushort;
pub const GLuint = c_uint;
pub const GLsizei = c_int;
pub const GLclampf = f32;
pub const GLclampd = f64;

// Boolean values
pub const GL_FALSE: c_int = 0;
pub const GL_TRUE: c_int = 1;

// Data types
pub const GL_BYTE: c_int = 0x1400;
pub const GL_UNSIGNED_BYTE: c_int = 0x1401;
pub const GL_SHORT: c_int = 0x1402;
pub const GL_UNSIGNED_SHORT: c_int = 0x1403;
pub const GL_INT: c_int = 0x1404;
pub const GL_UNSIGNED_INT: c_int = 0x1405;
pub const GL_FLOAT: c_int = 0x1406;
pub const GL_2_BYTES: c_int = 0x1407;
pub const GL_3_BYTES: c_int = 0x1408;
pub const GL_4_BYTES: c_int = 0x1409;
pub const GL_DOUBLE: c_int = 0x140A;

// Primitives
pub const GL_POINTS: c_int = 0x0000;
pub const GL_LINES: c_int = 0x0001;
pub const GL_LINE_LOOP: c_int = 0x0002;
pub const GL_LINE_STRIP: c_int = 0x0003;
pub const GL_TRIANGLES: c_int = 0x0004;
pub const GL_TRIANGLE_STRIP: c_int = 0x0005;
pub const GL_TRIANGLE_FAN: c_int = 0x0006;
pub const GL_QUADS: c_int = 0x0007;
pub const GL_QUAD_STRIP: c_int = 0x0008;
pub const GL_POLYGON: c_int = 0x0009;

// Vertex Arrays
pub const GL_VERTEX_ARRAY: c_int = 0x8074;
pub const GL_NORMAL_ARRAY: c_int = 0x8075;
pub const GL_COLOR_ARRAY: c_int = 0x8076;
pub const GL_INDEX_ARRAY: c_int = 0x8077;
pub const GL_TEXTURE_COORD_ARRAY: c_int = 0x8078;
pub const GL_EDGE_FLAG_ARRAY: c_int = 0x8079;
pub const GL_VERTEX_ARRAY_SIZE: c_int = 0x807A;
pub const GL_VERTEX_ARRAY_TYPE: c_int = 0x807B;
pub const GL_VERTEX_ARRAY_STRIDE: c_int = 0x807C;
pub const GL_NORMAL_ARRAY_TYPE: c_int = 0x807E;
pub const GL_NORMAL_ARRAY_STRIDE: c_int = 0x807F;
pub const GL_COLOR_ARRAY_SIZE: c_int = 0x8081;
pub const GL_COLOR_ARRAY_TYPE: c_int = 0x8082;
pub const GL_COLOR_ARRAY_STRIDE: c_int = 0x8083;
pub const GL_INDEX_ARRAY_TYPE: c_int = 0x8085;
pub const GL_INDEX_ARRAY_STRIDE: c_int = 0x8086;
pub const GL_TEXTURE_COORD_ARRAY_SIZE: c_int = 0x8088;
pub const GL_TEXTURE_COORD_ARRAY_TYPE: c_int = 0x8089;
pub const GL_TEXTURE_COORD_ARRAY_STRIDE: c_int = 0x808A;
pub const GL_EDGE_FLAG_ARRAY_STRIDE: c_int = 0x808C;
pub const GL_VERTEX_ARRAY_POINTER: c_int = 0x808E;
pub const GL_NORMAL_ARRAY_POINTER: c_int = 0x808F;
pub const GL_COLOR_ARRAY_POINTER: c_int = 0x8090;
pub const GL_INDEX_ARRAY_POINTER: c_int = 0x8091;
pub const GL_TEXTURE_COORD_ARRAY_POINTER: c_int = 0x8092;
pub const GL_EDGE_FLAG_ARRAY_POINTER: c_int = 0x8093;
pub const GL_V2F: c_int = 0x2A20;
pub const GL_V3F: c_int = 0x2A21;
pub const GL_C4UB_V2F: c_int = 0x2A22;
pub const GL_C4UB_V3F: c_int = 0x2A23;
pub const GL_C3F_V3F: c_int = 0x2A24;
pub const GL_N3F_V3F: c_int = 0x2A25;
pub const GL_C4F_N3F_V3F: c_int = 0x2A26;
pub const GL_T2F_V3F: c_int = 0x2A27;
pub const GL_T4F_V4F: c_int = 0x2A28;
pub const GL_T2F_C4UB_V3F: c_int = 0x2A29;
pub const GL_T2F_C3F_V3F: c_int = 0x2A2A;
pub const GL_T2F_N3F_V3F: c_int = 0x2A2B;
pub const GL_T2F_C4F_N3F_V3F: c_int = 0x2A2C;
pub const GL_T4F_C4F_N3F_V4F: c_int = 0x2A2D;

// Matrix Mode
pub const GL_MATRIX_MODE: c_int = 0x0BA0;
pub const GL_MODELVIEW: c_int = 0x1700;
pub const GL_PROJECTION: c_int = 0x1701;
pub const GL_TEXTURE: c_int = 0x1702;

// Points
pub const GL_POINT_SMOOTH: c_int = 0x0B10;
pub const GL_POINT_SIZE: c_int = 0x0B11;
pub const GL_POINT_SIZE_GRANULARITY: c_int = 0x0B13;
pub const GL_POINT_SIZE_RANGE: c_int = 0x0B12;

// Lines
pub const GL_LINE_SMOOTH: c_int = 0x0B20;
pub const GL_LINE_STIPPLE: c_int = 0x0B24;
pub const GL_LINE_STIPPLE_PATTERN: c_int = 0x0B25;
pub const GL_LINE_STIPPLE_REPEAT: c_int = 0x0B26;
pub const GL_LINE_WIDTH: c_int = 0x0B21;
pub const GL_LINE_WIDTH_GRANULARITY: c_int = 0x0B23;
pub const GL_LINE_WIDTH_RANGE: c_int = 0x0B22;

// Polygons
pub const GL_POINT: c_int = 0x1B00;
pub const GL_LINE: c_int = 0x1B01;
pub const GL_FILL: c_int = 0x1B02;
pub const GL_CW: c_int = 0x0900;
pub const GL_CCW: c_int = 0x0901;
pub const GL_FRONT: c_int = 0x0404;
pub const GL_BACK: c_int = 0x0405;
pub const GL_POLYGON_MODE: c_int = 0x0B40;
pub const GL_POLYGON_SMOOTH: c_int = 0x0B41;
pub const GL_POLYGON_STIPPLE: c_int = 0x0B42;
pub const GL_EDGE_FLAG: c_int = 0x0B43;
pub const GL_CULL_FACE: c_int = 0x0B44;
pub const GL_CULL_FACE_MODE: c_int = 0x0B45;
pub const GL_FRONT_FACE: c_int = 0x0B46;
pub const GL_POLYGON_OFFSET_FACTOR: c_int = 0x8038;
pub const GL_POLYGON_OFFSET_UNITS: c_int = 0x2A00;
pub const GL_POLYGON_OFFSET_POINT: c_int = 0x2A01;
pub const GL_POLYGON_OFFSET_LINE: c_int = 0x2A02;
pub const GL_POLYGON_OFFSET_FILL: c_int = 0x8037;

// Display Lists
pub const GL_COMPILE: c_int = 0x1300;
pub const GL_COMPILE_AND_EXECUTE: c_int = 0x1301;
pub const GL_LIST_BASE: c_int = 0x0B32;
pub const GL_LIST_INDEX: c_int = 0x0B33;
pub const GL_LIST_MODE: c_int = 0x0B30;

// Depth buffer
pub const GL_NEVER: c_int = 0x0200;
pub const GL_LESS: c_int = 0x0201;
pub const GL_EQUAL: c_int = 0x0202;
pub const GL_LEQUAL: c_int = 0x0203;
pub const GL_GREATER: c_int = 0x0204;
pub const GL_NOTEQUAL: c_int = 0x0205;
pub const GL_GEQUAL: c_int = 0x0206;
pub const GL_ALWAYS: c_int = 0x0207;
pub const GL_DEPTH_TEST: c_int = 0x0B71;
pub const GL_DEPTH_BITS: c_int = 0x0D56;
pub const GL_DEPTH_CLEAR_VALUE: c_int = 0x0B73;
pub const GL_DEPTH_FUNC: c_int = 0x0B74;
pub const GL_DEPTH_RANGE: c_int = 0x0B70;
pub const GL_DEPTH_WRITEMASK: c_int = 0x0B72;
pub const GL_DEPTH_COMPONENT: c_int = 0x1902;

// Lighting
pub const GL_LIGHTING: c_int = 0x0B50;
pub const GL_LIGHT0: c_int = 0x4000;
pub const GL_LIGHT1: c_int = 0x4001;
pub const GL_LIGHT2: c_int = 0x4002;
pub const GL_LIGHT3: c_int = 0x4003;
pub const GL_LIGHT4: c_int = 0x4004;
pub const GL_LIGHT5: c_int = 0x4005;
pub const GL_LIGHT6: c_int = 0x4006;
pub const GL_LIGHT7: c_int = 0x4007;
pub const GL_SPOT_EXPONENT: c_int = 0x1205;
pub const GL_SPOT_CUTOFF: c_int = 0x1206;
pub const GL_CONSTANT_ATTENUATION: c_int = 0x1207;
pub const GL_LINEAR_ATTENUATION: c_int = 0x1208;
pub const GL_QUADRATIC_ATTENUATION: c_int = 0x1209;
pub const GL_AMBIENT: c_int = 0x1200;
pub const GL_DIFFUSE: c_int = 0x1201;
pub const GL_SPECULAR: c_int = 0x1202;
pub const GL_SHININESS: c_int = 0x1601;
pub const GL_EMISSION: c_int = 0x1600;
pub const GL_POSITION: c_int = 0x1203;
pub const GL_SPOT_DIRECTION: c_int = 0x1204;
pub const GL_AMBIENT_AND_DIFFUSE: c_int = 0x1602;
pub const GL_COLOR_INDEXES: c_int = 0x1603;
pub const GL_LIGHT_MODEL_TWO_SIDE: c_int = 0x0B52;
pub const GL_LIGHT_MODEL_LOCAL_VIEWER: c_int = 0x0B51;
pub const GL_LIGHT_MODEL_AMBIENT: c_int = 0x0B53;
pub const GL_FRONT_AND_BACK: c_int = 0x0408;
pub const GL_SHADE_MODEL: c_int = 0x0B54;
pub const GL_FLAT: c_int = 0x1D00;
pub const GL_SMOOTH: c_int = 0x1D01;
pub const GL_COLOR_MATERIAL: c_int = 0x0B57;
pub const GL_COLOR_MATERIAL_FACE: c_int = 0x0B55;
pub const GL_COLOR_MATERIAL_PARAMETER: c_int = 0x0B56;
pub const GL_NORMALIZE: c_int = 0x0BA1;

// User clipping planes
pub const GL_CLIP_PLANE0: c_int = 0x3000;
pub const GL_CLIP_PLANE1: c_int = 0x3001;
pub const GL_CLIP_PLANE2: c_int = 0x3002;
pub const GL_CLIP_PLANE3: c_int = 0x3003;
pub const GL_CLIP_PLANE4: c_int = 0x3004;
pub const GL_CLIP_PLANE5: c_int = 0x3005;

// Accumulation buffer
pub const GL_ACCUM_RED_BITS: c_int = 0x0D58;
pub const GL_ACCUM_GREEN_BITS: c_int = 0x0D59;
pub const GL_ACCUM_BLUE_BITS: c_int = 0x0D5A;
pub const GL_ACCUM_ALPHA_BITS: c_int = 0x0D5B;
pub const GL_ACCUM_CLEAR_VALUE: c_int = 0x0B80;
pub const GL_ACCUM: c_int = 0x0100;
pub const GL_ADD: c_int = 0x0104;
pub const GL_LOAD: c_int = 0x0101;
pub const GL_MULT: c_int = 0x0103;
pub const GL_RETURN: c_int = 0x0102;

// Alpha testing
pub const GL_ALPHA_TEST: c_int = 0x0BC0;
pub const GL_ALPHA_TEST_REF: c_int = 0x0BC2;
pub const GL_ALPHA_TEST_FUNC: c_int = 0x0BC1;

// Blending
pub const GL_BLEND: c_int = 0x0BE2;
pub const GL_BLEND_SRC: c_int = 0x0BE1;
pub const GL_BLEND_DST: c_int = 0x0BE0;
pub const GL_ZERO: c_int = 0x0;
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

// Render Mode
pub const GL_FEEDBACK: c_int = 0x1C01;
pub const GL_RENDER: c_int = 0x1C00;
pub const GL_SELECT: c_int = 0x1C02;

// Feedback
pub const GL_2D: c_int = 0x0600;
pub const GL_3D: c_int = 0x0601;
pub const GL_3D_COLOR: c_int = 0x0602;
pub const GL_3D_COLOR_TEXTURE: c_int = 0x0603;
pub const GL_4D_COLOR_TEXTURE: c_int = 0x0604;
pub const GL_POINT_TOKEN: c_int = 0x0701;
pub const GL_LINE_TOKEN: c_int = 0x0702;
pub const GL_LINE_RESET_TOKEN: c_int = 0x0707;
pub const GL_POLYGON_TOKEN: c_int = 0x0703;
pub const GL_BITMAP_TOKEN: c_int = 0x0704;
pub const GL_DRAW_PIXEL_TOKEN: c_int = 0x0705;
pub const GL_COPY_PIXEL_TOKEN: c_int = 0x0706;
pub const GL_PASS_THROUGH_TOKEN: c_int = 0x0700;
pub const GL_FEEDBACK_BUFFER_POINTER: c_int = 0x0DF0;
pub const GL_FEEDBACK_BUFFER_SIZE: c_int = 0x0DF1;
pub const GL_FEEDBACK_BUFFER_TYPE: c_int = 0x0DF2;

// Selection
pub const GL_SELECTION_BUFFER_POINTER: c_int = 0x0DF3;
pub const GL_SELECTION_BUFFER_SIZE: c_int = 0x0DF4;

// Fog
pub const GL_FOG: c_int = 0x0B60;
pub const GL_FOG_MODE: c_int = 0x0B65;
pub const GL_FOG_DENSITY: c_int = 0x0B62;
pub const GL_FOG_COLOR: c_int = 0x0B66;
pub const GL_FOG_INDEX: c_int = 0x0B61;
pub const GL_FOG_START: c_int = 0x0B63;
pub const GL_FOG_END: c_int = 0x0B64;
pub const GL_LINEAR: c_int = 0x2601;
pub const GL_EXP: c_int = 0x0800;
pub const GL_EXP2: c_int = 0x0801;

// Logic Ops
pub const GL_LOGIC_OP: c_int = 0x0BF1;
pub const GL_INDEX_LOGIC_OP: c_int = 0x0BF1;
pub const GL_COLOR_LOGIC_OP: c_int = 0x0BF2;
pub const GL_LOGIC_OP_MODE: c_int = 0x0BF0;
pub const GL_CLEAR: c_int = 0x1500;
pub const GL_SET: c_int = 0x150F;
pub const GL_COPY: c_int = 0x1503;
pub const GL_COPY_INVERTED: c_int = 0x150C;
pub const GL_NOOP: c_int = 0x1505;
pub const GL_INVERT: c_int = 0x150A;
pub const GL_AND: c_int = 0x1501;
pub const GL_NAND: c_int = 0x150E;
pub const GL_OR: c_int = 0x1507;
pub const GL_NOR: c_int = 0x1508;
pub const GL_XOR: c_int = 0x1506;
pub const GL_EQUIV: c_int = 0x1509;
pub const GL_AND_REVERSE: c_int = 0x1502;
pub const GL_AND_INVERTED: c_int = 0x1504;
pub const GL_OR_REVERSE: c_int = 0x150B;
pub const GL_OR_INVERTED: c_int = 0x150D;

// Stencil
pub const GL_STENCIL_BITS: c_int = 0x0D57;
pub const GL_STENCIL_TEST: c_int = 0x0B90;
pub const GL_STENCIL_CLEAR_VALUE: c_int = 0x0B91;
pub const GL_STENCIL_FUNC: c_int = 0x0B92;
pub const GL_STENCIL_VALUE_MASK: c_int = 0x0B93;
pub const GL_STENCIL_FAIL: c_int = 0x0B94;
pub const GL_STENCIL_PASS_DEPTH_FAIL: c_int = 0x0B95;
pub const GL_STENCIL_PASS_DEPTH_PASS: c_int = 0x0B96;
pub const GL_STENCIL_REF: c_int = 0x0B97;
pub const GL_STENCIL_WRITEMASK: c_int = 0x0B98;
pub const GL_STENCIL_INDEX: c_int = 0x1901;
pub const GL_KEEP: c_int = 0x1E00;
pub const GL_REPLACE: c_int = 0x1E01;
pub const GL_INCR: c_int = 0x1E02;
pub const GL_DECR: c_int = 0x1E03;

// Buffers, Pixel Drawing/Reading
pub const GL_NONE: c_int = 0x0;
pub const GL_LEFT: c_int = 0x0406;
pub const GL_RIGHT: c_int = 0x0407;
//GL_FRONT 0x0404
//GL_BACK 0x0405
//GL_FRONT_AND_BACK 0x0408
pub const GL_FRONT_LEFT: c_int = 0x0400;
pub const GL_FRONT_RIGHT: c_int = 0x0401;
pub const GL_BACK_LEFT: c_int = 0x0402;
pub const GL_BACK_RIGHT: c_int = 0x0403;
pub const GL_AUX0: c_int = 0x0409;
pub const GL_AUX1: c_int = 0x040A;
pub const GL_AUX2: c_int = 0x040B;
pub const GL_AUX3: c_int = 0x040C;
pub const GL_COLOR_INDEX: c_int = 0x1900;
pub const GL_RED: c_int = 0x1903;
pub const GL_GREEN: c_int = 0x1904;
pub const GL_BLUE: c_int = 0x1905;
pub const GL_ALPHA: c_int = 0x1906;
pub const GL_LUMINANCE: c_int = 0x1909;
pub const GL_LUMINANCE_ALPHA: c_int = 0x190A;
pub const GL_ALPHA_BITS: c_int = 0x0D55;
pub const GL_RED_BITS: c_int = 0x0D52;
pub const GL_GREEN_BITS: c_int = 0x0D53;
pub const GL_BLUE_BITS: c_int = 0x0D54;
pub const GL_INDEX_BITS: c_int = 0x0D51;
pub const GL_SUBPIXEL_BITS: c_int = 0x0D50;
pub const GL_AUX_BUFFERS: c_int = 0x0C00;
pub const GL_READ_BUFFER: c_int = 0x0C02;
pub const GL_DRAW_BUFFER: c_int = 0x0C01;
pub const GL_DOUBLEBUFFER: c_int = 0x0C32;
pub const GL_STEREO: c_int = 0x0C33;
pub const GL_BITMAP: c_int = 0x1A00;
pub const GL_COLOR: c_int = 0x1800;
pub const GL_DEPTH: c_int = 0x1801;
pub const GL_STENCIL: c_int = 0x1802;
pub const GL_DITHER: c_int = 0x0BD0;
pub const GL_RGB: c_int = 0x1907;
pub const GL_RGBA: c_int = 0x1908;

// Implementation limits
pub const GL_MAX_LIST_NESTING: c_int = 0x0B31;
pub const GL_MAX_EVAL_ORDER: c_int = 0x0D30;
pub const GL_MAX_LIGHTS: c_int = 0x0D31;
pub const GL_MAX_CLIP_PLANES: c_int = 0x0D32;
pub const GL_MAX_TEXTURE_SIZE: c_int = 0x0D33;
pub const GL_MAX_PIXEL_MAP_TABLE: c_int = 0x0D34;
pub const GL_MAX_ATTRIB_STACK_DEPTH: c_int = 0x0D35;
pub const GL_MAX_MODELVIEW_STACK_DEPTH: c_int = 0x0D36;
pub const GL_MAX_NAME_STACK_DEPTH: c_int = 0x0D37;
pub const GL_MAX_PROJECTION_STACK_DEPTH: c_int = 0x0D38;
pub const GL_MAX_TEXTURE_STACK_DEPTH: c_int = 0x0D39;
pub const GL_MAX_VIEWPORT_DIMS: c_int = 0x0D3A;
pub const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH: c_int = 0x0D3B;

// Gets
pub const GL_ATTRIB_STACK_DEPTH: c_int = 0x0BB0;
pub const GL_CLIENT_ATTRIB_STACK_DEPTH: c_int = 0x0BB1;
pub const GL_COLOR_CLEAR_VALUE: c_int = 0x0C22;
pub const GL_COLOR_WRITEMASK: c_int = 0x0C23;
pub const GL_CURRENT_INDEX: c_int = 0x0B01;
pub const GL_CURRENT_COLOR: c_int = 0x0B00;
pub const GL_CURRENT_NORMAL: c_int = 0x0B02;
pub const GL_CURRENT_RASTER_COLOR: c_int = 0x0B04;
pub const GL_CURRENT_RASTER_DISTANCE: c_int = 0x0B09;
pub const GL_CURRENT_RASTER_INDEX: c_int = 0x0B05;
pub const GL_CURRENT_RASTER_POSITION: c_int = 0x0B07;
pub const GL_CURRENT_RASTER_TEXTURE_COORDS: c_int = 0x0B06;
pub const GL_CURRENT_RASTER_POSITION_VALID: c_int = 0x0B08;
pub const GL_CURRENT_TEXTURE_COORDS: c_int = 0x0B03;
pub const GL_INDEX_CLEAR_VALUE: c_int = 0x0C20;
pub const GL_INDEX_MODE: c_int = 0x0C30;
pub const GL_INDEX_WRITEMASK: c_int = 0x0C21;
pub const GL_MODELVIEW_MATRIX: c_int = 0x0BA6;
pub const GL_MODELVIEW_STACK_DEPTH: c_int = 0x0BA3;
pub const GL_NAME_STACK_DEPTH: c_int = 0x0D70;
pub const GL_PROJECTION_MATRIX: c_int = 0x0BA7;
pub const GL_PROJECTION_STACK_DEPTH: c_int = 0x0BA4;
pub const GL_RENDER_MODE: c_int = 0x0C40;
pub const GL_RGBA_MODE: c_int = 0x0C31;
pub const GL_TEXTURE_MATRIX: c_int = 0x0BA8;
pub const GL_TEXTURE_STACK_DEPTH: c_int = 0x0BA5;
pub const GL_VIEWPORT: c_int = 0x0BA2;

// Evaluators
pub const GL_AUTO_NORMAL: c_int = 0x0D80;
pub const GL_MAP1_COLOR_4: c_int = 0x0D90;
pub const GL_MAP1_INDEX: c_int = 0x0D91;
pub const GL_MAP1_NORMAL: c_int = 0x0D92;
pub const GL_MAP1_TEXTURE_COORD_1: c_int = 0x0D93;
pub const GL_MAP1_TEXTURE_COORD_2: c_int = 0x0D94;
pub const GL_MAP1_TEXTURE_COORD_3: c_int = 0x0D95;
pub const GL_MAP1_TEXTURE_COORD_4: c_int = 0x0D96;
pub const GL_MAP1_VERTEX_3: c_int = 0x0D97;
pub const GL_MAP1_VERTEX_4: c_int = 0x0D98;
pub const GL_MAP2_COLOR_4: c_int = 0x0DB0;
pub const GL_MAP2_INDEX: c_int = 0x0DB1;
pub const GL_MAP2_NORMAL: c_int = 0x0DB2;
pub const GL_MAP2_TEXTURE_COORD_1: c_int = 0x0DB3;
pub const GL_MAP2_TEXTURE_COORD_2: c_int = 0x0DB4;
pub const GL_MAP2_TEXTURE_COORD_3: c_int = 0x0DB5;
pub const GL_MAP2_TEXTURE_COORD_4: c_int = 0x0DB6;
pub const GL_MAP2_VERTEX_3: c_int = 0x0DB7;
pub const GL_MAP2_VERTEX_4: c_int = 0x0DB8;
pub const GL_MAP1_GRID_DOMAIN: c_int = 0x0DD0;
pub const GL_MAP1_GRID_SEGMENTS: c_int = 0x0DD1;
pub const GL_MAP2_GRID_DOMAIN: c_int = 0x0DD2;
pub const GL_MAP2_GRID_SEGMENTS: c_int = 0x0DD3;
pub const GL_COEFF: c_int = 0x0A00;
pub const GL_ORDER: c_int = 0x0A01;
pub const GL_DOMAIN: c_int = 0x0A02;

// Hints
pub const GL_PERSPECTIVE_CORRECTION_HINT: c_int = 0x0C50;
pub const GL_POINT_SMOOTH_HINT: c_int = 0x0C51;
pub const GL_LINE_SMOOTH_HINT: c_int = 0x0C52;
pub const GL_POLYGON_SMOOTH_HINT: c_int = 0x0C53;
pub const GL_FOG_HINT: c_int = 0x0C54;
pub const GL_DONT_CARE: c_int = 0x1100;
pub const GL_FASTEST: c_int = 0x1101;
pub const GL_NICEST: c_int = 0x1102;

// Scissor box
pub const GL_SCISSOR_BOX: c_int = 0x0C10;
pub const GL_SCISSOR_TEST: c_int = 0x0C11;

// Pixel Mode / Transfer
pub const GL_MAP_COLOR: c_int = 0x0D10;
pub const GL_MAP_STENCIL: c_int = 0x0D11;
pub const GL_INDEX_SHIFT: c_int = 0x0D12;
pub const GL_INDEX_OFFSET: c_int = 0x0D13;
pub const GL_RED_SCALE: c_int = 0x0D14;
pub const GL_RED_BIAS: c_int = 0x0D15;
pub const GL_GREEN_SCALE: c_int = 0x0D18;
pub const GL_GREEN_BIAS: c_int = 0x0D19;
pub const GL_BLUE_SCALE: c_int = 0x0D1A;
pub const GL_BLUE_BIAS: c_int = 0x0D1B;
pub const GL_ALPHA_SCALE: c_int = 0x0D1C;
pub const GL_ALPHA_BIAS: c_int = 0x0D1D;
pub const GL_DEPTH_SCALE: c_int = 0x0D1E;
pub const GL_DEPTH_BIAS: c_int = 0x0D1F;
pub const GL_PIXEL_MAP_S_TO_S_SIZE: c_int = 0x0CB1;
pub const GL_PIXEL_MAP_I_TO_I_SIZE: c_int = 0x0CB0;
pub const GL_PIXEL_MAP_I_TO_R_SIZE: c_int = 0x0CB2;
pub const GL_PIXEL_MAP_I_TO_G_SIZE: c_int = 0x0CB3;
pub const GL_PIXEL_MAP_I_TO_B_SIZE: c_int = 0x0CB4;
pub const GL_PIXEL_MAP_I_TO_A_SIZE: c_int = 0x0CB5;
pub const GL_PIXEL_MAP_R_TO_R_SIZE: c_int = 0x0CB6;
pub const GL_PIXEL_MAP_G_TO_G_SIZE: c_int = 0x0CB7;
pub const GL_PIXEL_MAP_B_TO_B_SIZE: c_int = 0x0CB8;
pub const GL_PIXEL_MAP_A_TO_A_SIZE: c_int = 0x0CB9;
pub const GL_PIXEL_MAP_S_TO_S: c_int = 0x0C71;
pub const GL_PIXEL_MAP_I_TO_I: c_int = 0x0C70;
pub const GL_PIXEL_MAP_I_TO_R: c_int = 0x0C72;
pub const GL_PIXEL_MAP_I_TO_G: c_int = 0x0C73;
pub const GL_PIXEL_MAP_I_TO_B: c_int = 0x0C74;
pub const GL_PIXEL_MAP_I_TO_A: c_int = 0x0C75;
pub const GL_PIXEL_MAP_R_TO_R: c_int = 0x0C76;
pub const GL_PIXEL_MAP_G_TO_G: c_int = 0x0C77;
pub const GL_PIXEL_MAP_B_TO_B: c_int = 0x0C78;
pub const GL_PIXEL_MAP_A_TO_A: c_int = 0x0C79;
pub const GL_PACK_ALIGNMENT: c_int = 0x0D05;
pub const GL_PACK_LSB_FIRST: c_int = 0x0D01;
pub const GL_PACK_ROW_LENGTH: c_int = 0x0D02;
pub const GL_PACK_SKIP_PIXELS: c_int = 0x0D04;
pub const GL_PACK_SKIP_ROWS: c_int = 0x0D03;
pub const GL_PACK_SWAP_BYTES: c_int = 0x0D00;
pub const GL_UNPACK_ALIGNMENT: c_int = 0x0CF5;
pub const GL_UNPACK_LSB_FIRST: c_int = 0x0CF1;
pub const GL_UNPACK_ROW_LENGTH: c_int = 0x0CF2;
pub const GL_UNPACK_SKIP_PIXELS: c_int = 0x0CF4;
pub const GL_UNPACK_SKIP_ROWS: c_int = 0x0CF3;
pub const GL_UNPACK_SWAP_BYTES: c_int = 0x0CF0;
pub const GL_ZOOM_X: c_int = 0x0D16;
pub const GL_ZOOM_Y: c_int = 0x0D17;

// Texture mapping
pub const GL_TEXTURE_ENV: c_int = 0x2300;
pub const GL_TEXTURE_ENV_MODE: c_int = 0x2200;
pub const GL_TEXTURE_1D: c_int = 0x0DE0;
pub const GL_TEXTURE_2D: c_int = 0x0DE1;
pub const GL_TEXTURE_WRAP_S: c_int = 0x2802;
pub const GL_TEXTURE_WRAP_T: c_int = 0x2803;
pub const GL_TEXTURE_MAG_FILTER: c_int = 0x2800;
pub const GL_TEXTURE_MIN_FILTER: c_int = 0x2801;
pub const GL_TEXTURE_ENV_COLOR: c_int = 0x2201;
pub const GL_TEXTURE_GEN_S: c_int = 0x0C60;
pub const GL_TEXTURE_GEN_T: c_int = 0x0C61;
pub const GL_TEXTURE_GEN_R: c_int = 0x0C62;
pub const GL_TEXTURE_GEN_Q: c_int = 0x0C63;
pub const GL_TEXTURE_GEN_MODE: c_int = 0x2500;
pub const GL_TEXTURE_BORDER_COLOR: c_int = 0x1004;
pub const GL_TEXTURE_WIDTH: c_int = 0x1000;
pub const GL_TEXTURE_HEIGHT: c_int = 0x1001;
pub const GL_TEXTURE_BORDER: c_int = 0x1005;
pub const GL_TEXTURE_COMPONENTS: c_int = 0x1003;
pub const GL_TEXTURE_RED_SIZE: c_int = 0x805C;
pub const GL_TEXTURE_GREEN_SIZE: c_int = 0x805D;
pub const GL_TEXTURE_BLUE_SIZE: c_int = 0x805E;
pub const GL_TEXTURE_ALPHA_SIZE: c_int = 0x805F;
pub const GL_TEXTURE_LUMINANCE_SIZE: c_int = 0x8060;
pub const GL_TEXTURE_INTENSITY_SIZE: c_int = 0x8061;
pub const GL_NEAREST_MIPMAP_NEAREST: c_int = 0x2700;
pub const GL_NEAREST_MIPMAP_LINEAR: c_int = 0x2702;
pub const GL_LINEAR_MIPMAP_NEAREST: c_int = 0x2701;
pub const GL_LINEAR_MIPMAP_LINEAR: c_int = 0x2703;
pub const GL_OBJECT_LINEAR: c_int = 0x2401;
pub const GL_OBJECT_PLANE: c_int = 0x2501;
pub const GL_EYE_LINEAR: c_int = 0x2400;
pub const GL_EYE_PLANE: c_int = 0x2502;
pub const GL_SPHERE_MAP: c_int = 0x2402;
pub const GL_DECAL: c_int = 0x2101;
pub const GL_MODULATE: c_int = 0x2100;
pub const GL_NEAREST: c_int = 0x2600;
pub const GL_REPEAT: c_int = 0x2901;
pub const GL_CLAMP: c_int = 0x2900;
pub const GL_S: c_int = 0x2000;
pub const GL_T: c_int = 0x2001;
pub const GL_R: c_int = 0x2002;
pub const GL_Q: c_int = 0x2003;

// Utility
pub const GL_VENDOR: c_int = 0x1F00;
pub const GL_RENDERER: c_int = 0x1F01;
pub const GL_VERSION: c_int = 0x1F02;
pub const GL_EXTENSIONS: c_int = 0x1F03;

// Errors
pub const GL_NO_ERROR: c_int = 0x0;
pub const GL_INVALID_ENUM: c_int = 0x0500;
pub const GL_INVALID_VALUE: c_int = 0x0501;
pub const GL_INVALID_OPERATION: c_int = 0x0502;
pub const GL_STACK_OVERFLOW: c_int = 0x0503;
pub const GL_STACK_UNDERFLOW: c_int = 0x0504;
pub const GL_OUT_OF_MEMORY: c_int = 0x0505;

// glPush/PopAttrib bits
pub const GL_CURRENT_BIT: c_int = 0x00000001;
pub const GL_POINT_BIT: c_int = 0x00000002;
pub const GL_LINE_BIT: c_int = 0x00000004;
pub const GL_POLYGON_BIT: c_int = 0x00000008;
pub const GL_POLYGON_STIPPLE_BIT: c_int = 0x00000010;
pub const GL_PIXEL_MODE_BIT: c_int = 0x00000020;
pub const GL_LIGHTING_BIT: c_int = 0x00000040;
pub const GL_FOG_BIT: c_int = 0x00000080;
pub const GL_DEPTH_BUFFER_BIT: c_int = 0x00000100;
pub const GL_ACCUM_BUFFER_BIT: c_int = 0x00000200;
pub const GL_STENCIL_BUFFER_BIT: c_int = 0x00000400;
pub const GL_VIEWPORT_BIT: c_int = 0x00000800;
pub const GL_TRANSFORM_BIT: c_int = 0x00001000;
pub const GL_ENABLE_BIT: c_int = 0x00002000;
pub const GL_COLOR_BUFFER_BIT: c_int = 0x00004000;
pub const GL_HINT_BIT: c_int = 0x00008000;
pub const GL_EVAL_BIT: c_int = 0x00010000;
pub const GL_LIST_BIT: c_int = 0x00020000;
pub const GL_TEXTURE_BIT: c_int = 0x00040000;
pub const GL_SCISSOR_BIT: c_int = 0x00080000;
pub const GL_ALL_ATTRIB_BITS: c_int = 0xFFFFFFFF;

// OpenGL 1.1
pub const GL_PROXY_TEXTURE_1D: c_int = 0x8063;
pub const GL_PROXY_TEXTURE_2D: c_int = 0x8064;
pub const GL_TEXTURE_PRIORITY: c_int = 0x8066;
pub const GL_TEXTURE_RESIDENT: c_int = 0x8067;
pub const GL_TEXTURE_BINDING_1D: c_int = 0x8068;
pub const GL_TEXTURE_BINDING_2D: c_int = 0x8069;
pub const GL_TEXTURE_INTERNAL_FORMAT: c_int = 0x1003;
pub const GL_ALPHA4: c_int = 0x803B;
pub const GL_ALPHA8: c_int = 0x803C;
pub const GL_ALPHA12: c_int = 0x803D;
pub const GL_ALPHA16: c_int = 0x803E;
pub const GL_LUMINANCE4: c_int = 0x803F;
pub const GL_LUMINANCE8: c_int = 0x8040;
pub const GL_LUMINANCE12: c_int = 0x8041;
pub const GL_LUMINANCE16: c_int = 0x8042;
pub const GL_LUMINANCE4_ALPHA4: c_int = 0x8043;
pub const GL_LUMINANCE6_ALPHA2: c_int = 0x8044;
pub const GL_LUMINANCE8_ALPHA8: c_int = 0x8045;
pub const GL_LUMINANCE12_ALPHA4: c_int = 0x8046;
pub const GL_LUMINANCE12_ALPHA12: c_int = 0x8047;
pub const GL_LUMINANCE16_ALPHA16: c_int = 0x8048;
pub const GL_INTENSITY: c_int = 0x8049;
pub const GL_INTENSITY4: c_int = 0x804A;
pub const GL_INTENSITY8: c_int = 0x804B;
pub const GL_INTENSITY12: c_int = 0x804C;
pub const GL_INTENSITY16: c_int = 0x804D;
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
pub const GL_CLIENT_PIXEL_STORE_BIT: c_int = 0x00000001;
pub const GL_CLIENT_VERTEX_ARRAY_BIT: c_int = 0x00000002;
pub const GL_ALL_CLIENT_ATTRIB_BITS: c_int = 0xFFFFFFFF;
pub const GL_CLIENT_ALL_ATTRIB_BITS: c_int = 0xFFFFFFFF;

pub fn glClearIndex(c: f32) callconv(APIENTRY) void {
    procs.glClearIndex(c);
}
pub fn glClearColor(red: GLclampf, green: GLclampf, blue: GLclampf, alpha: GLclampf) callconv(APIENTRY) void {
    procs.glClearColor(red, green, blue, alpha);
}
pub fn glClear(mask: GLbitfield) callconv(APIENTRY) void {
    procs.glClear(mask);
}
pub fn glIndexMask(mask: GLuint) callconv(APIENTRY) void {
    procs.glIndexMask(mask);
}
pub fn glColorMask(red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) callconv(APIENTRY) void {
    procs.glColorMask(red, green, blue, alpha);
}
pub fn glAlphaFunc(func: GLenum, ref: GLclampf) callconv(APIENTRY) void {
    procs.glAlphaFunc(func, ref);
}
pub fn glBlendFunc(sfactor: GLenum, dfactor: GLenum) callconv(APIENTRY) void {
    procs.glBlendFunc(sfactor, dfactor);
}
pub fn glLogicOp(opcode: GLenum) callconv(APIENTRY) void {
    procs.glLogicOp(opcode);
}
pub fn glCullFace(mode: GLenum) callconv(APIENTRY) void {
    procs.glCullFace(mode);
}
pub fn glFrontFace(mode: GLenum) callconv(APIENTRY) void {
    procs.glFrontFace(mode);
}
pub fn glPointSize(size: f32) callconv(APIENTRY) void {
    procs.glPointSize(size);
}
pub fn glLineWidth(width: f32) callconv(APIENTRY) void {
    procs.glLineWidth(width);
}
pub fn glLineStipple(factor: GLint, pattern: GLushort) callconv(APIENTRY) void {
    procs.glLineStipple(factor, pattern);
}
pub fn glPolygonMode(face: GLenum, mode: GLenum) callconv(APIENTRY) void {
    procs.glPolygonMode(face, mode);
}
pub fn glPolygonOffset(factor: f32, units: f32) callconv(APIENTRY) void {
    procs.glPolygonOffset(factor, units);
}
pub fn glPolygonStipple(mask: [*c]const GLubyte) callconv(APIENTRY) void {
    procs.glPolygonStipple(mask);
}
pub fn glGetPolygonStipple(mask: [*c]GLubyte) callconv(APIENTRY) void {
    procs.glGetPolygonStipple(mask);
}
pub fn glEdgeFlag(flag: GLboolean) callconv(APIENTRY) void {
    procs.glEdgeFlag(flag);
}
pub fn glEdgeFlagv(flag: [*c]const GLboolean) callconv(APIENTRY) void {
    procs.glEdgeFlagv(flag);
}
pub fn glScissor(x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void {
    procs.glScissor(x, y, width, height);
}
pub fn glClipPlane(plane: GLenum, equation: [*c]const f64) callconv(APIENTRY) void {
    procs.glClipPlane(plane, equation);
}
pub fn glGetClipPlane(plane: GLenum, equation: [*c]f64) callconv(APIENTRY) void {
    procs.glGetClipPlane(plane, equation);
}
pub fn glDrawBuffer(mode: GLenum) callconv(APIENTRY) void {
    procs.glDrawBuffer(mode);
}
pub fn glReadBuffer(mode: GLenum) callconv(APIENTRY) void {
    procs.glReadBuffer(mode);
}
pub fn glEnable(cap: GLenum) callconv(APIENTRY) void {
    procs.glEnable(cap);
}
pub fn glDisable(cap: GLenum) callconv(APIENTRY) void {
    procs.glDisable(cap);
}
pub fn glIsEnabled(cap: GLenum) callconv(APIENTRY) GLboolean {
    return procs.glIsEnabled(cap);
}
pub fn glEnableClientState(cap: GLenum) callconv(APIENTRY) void {
    procs.glEnableClientState(cap);
}
pub fn glDisableClientState(cap: GLenum) callconv(APIENTRY) void {
    procs.glDisableClientState(cap);
}
pub fn glGetBooleanv(pname: GLenum, params: [*c]GLboolean) callconv(APIENTRY) void {
    procs.glGetBooleanv(pname, params);
}
pub fn glGetDoublev(pname: GLenum, params: [*c]f64) callconv(APIENTRY) void {
    procs.glGetDoublev(pname, params);
}
pub fn glGetFloatv(pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetFloatv(pname, params);
}
pub fn glGetIntegerv(pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetIntegerv(pname, params);
}
pub fn glPushAttrib(mask: GLbitfield) callconv(APIENTRY) void {
    procs.glPushAttrib(mask);
}
pub fn glPopAttrib() callconv(APIENTRY) void {
    procs.glPopAttrib();
}
pub fn glPushClientAttrib(mask: GLbitfield) callconv(APIENTRY) void {
    procs.glPushClientAttrib(mask);
}
pub fn glPopClientAttrib() callconv(APIENTRY) void {
    procs.glPopClientAttrib();
}
pub fn glRenderMode(mode: GLenum) callconv(APIENTRY) GLint {
    return procs.glRenderMode(mode);
}
pub fn glGetError() callconv(APIENTRY) GLenum {
    return procs.glGetError();
}
pub fn glGetString(name: GLenum) callconv(APIENTRY) [*c]const GLubyte {
    return procs.glGetString(name);
}
pub fn glFinish() callconv(APIENTRY) void {
    procs.glFinish();
}
pub fn glFlush() callconv(APIENTRY) void {
    procs.glFlush();
}
pub fn glHint(target: GLenum, mode: GLenum) callconv(APIENTRY) void {
    procs.glHint(target, mode);
}
pub fn glClearDepth(depth: GLclampd) callconv(APIENTRY) void {
    procs.glClearDepth(depth);
}
pub fn glDepthFunc(func: GLenum) callconv(APIENTRY) void {
    procs.glDepthFunc(func);
}
pub fn glDepthMask(flag: GLboolean) callconv(APIENTRY) void {
    procs.glDepthMask(flag);
}
pub fn glDepthRange(near_val: GLclampd, far_val: GLclampd) callconv(APIENTRY) void {
    procs.glDepthRange(near_val, far_val);
}
pub fn glClearAccum(red: f32, green: f32, blue: f32, alpha: f32) callconv(APIENTRY) void {
    procs.glClearAccum(red, green, blue, alpha);
}
pub fn glAccum(op: GLenum, value: f32) callconv(APIENTRY) void {
    procs.glAccum(op, value);
}
pub fn glMatrixMode(mode: GLenum) callconv(APIENTRY) void {
    procs.glMatrixMode(mode);
}
pub fn glOrtho(left: f64, right: f64, bottom: f64, top: f64, near_val: f64, far_val: f64) callconv(APIENTRY) void {
    procs.glOrtho(left, right, bottom, top, near_val, far_val);
}
pub fn glFrustum(left: f64, right: f64, bottom: f64, top: f64, near_val: f64, far_val: f64) callconv(APIENTRY) void {
    procs.glFrustum(left, right, bottom, top, near_val, far_val);
}
pub fn glViewport(x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void {
    procs.glViewport(x, y, width, height);
}
pub fn glPushMatrix() callconv(APIENTRY) void {
    procs.glPushMatrix();
}
pub fn glPopMatrix() callconv(APIENTRY) void {
    procs.glPopMatrix();
}
pub fn glLoadIdentity() callconv(APIENTRY) void {
    procs.glLoadIdentity();
}
pub fn glLoadMatrixd(m: [*c]const f64) callconv(APIENTRY) void {
    procs.glLoadMatrixd(m);
}
pub fn glLoadMatrixf(m: [*c]const f32) callconv(APIENTRY) void {
    procs.glLoadMatrixf(m);
}
pub fn glMultMatrixd(m: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultMatrixd(m);
}
pub fn glMultMatrixf(m: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultMatrixf(m);
}
pub fn glRotated(angle: f64, x: f64, y: f64, z: f64) callconv(APIENTRY) void {
    procs.glRotated(angle, x, y, z);
}
pub fn glRotatef(angle: f32, x: f32, y: f32, z: f32) callconv(APIENTRY) void {
    procs.glRotatef(angle, x, y, z);
}
pub fn glScaled(x: f64, y: f64, z: f64) callconv(APIENTRY) void {
    procs.glScaled(x, y, z);
}
pub fn glScalef(x: f32, y: f32, z: f32) callconv(APIENTRY) void {
    procs.glScalef(x, y, z);
}
pub fn glTranslated(x: f64, y: f64, z: f64) callconv(APIENTRY) void {
    procs.glTranslated(x, y, z);
}
pub fn glTranslatef(x: f32, y: f32, z: f32) callconv(APIENTRY) void {
    procs.glTranslatef(x, y, z);
}
pub fn glIsList(list: GLuint) callconv(APIENTRY) GLboolean {
    return procs.glIsList(list);
}
pub fn glDeleteLists(list: GLuint, range: GLsizei) callconv(APIENTRY) void {
    procs.glDeleteLists(list, range);
}
pub fn glGenLists(range: GLsizei) callconv(APIENTRY) GLuint {
    return procs.glGenLists(range);
}
pub fn glNewList(list: GLuint, mode: GLenum) callconv(APIENTRY) void {
    procs.glNewList(list, mode);
}
pub fn glEndList() callconv(APIENTRY) void {
    procs.glEndList();
}
pub fn glCallList(list: GLuint) callconv(APIENTRY) void {
    procs.glCallList(list);
}
pub fn glCallLists(n: GLsizei, @"type": GLenum, lists: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glCallLists(n, @"type", lists);
}
pub fn glListBase(base: GLuint) callconv(APIENTRY) void {
    procs.glListBase(base);
}
pub fn glBegin(mode: GLenum) callconv(APIENTRY) void {
    procs.glBegin(mode);
}
pub fn glEnd() callconv(APIENTRY) void {
    procs.glEnd();
}
pub fn glVertex2d(x: f64, y: f64) callconv(APIENTRY) void {
    procs.glVertex2d(x, y);
}
pub fn glVertex2f(x: f32, y: f32) callconv(APIENTRY) void {
    procs.glVertex2f(x, y);
}
pub fn glVertex2i(x: GLint, y: GLint) callconv(APIENTRY) void {
    procs.glVertex2i(x, y);
}
pub fn glVertex2s(x: GLshort, y: GLshort) callconv(APIENTRY) void {
    procs.glVertex2s(x, y);
}
pub fn glVertex3d(x: f64, y: f64, z: f64) callconv(APIENTRY) void {
    procs.glVertex3d(x, y, z);
}
pub fn glVertex3f(x: f32, y: f32, z: f32) callconv(APIENTRY) void {
    procs.glVertex3f(x, y, z);
}
pub fn glVertex3i(x: GLint, y: GLint, z: GLint) callconv(APIENTRY) void {
    procs.glVertex3i(x, y, z);
}
pub fn glVertex3s(x: GLshort, y: GLshort, z: GLshort) callconv(APIENTRY) void {
    procs.glVertex3s(x, y, z);
}
pub fn glVertex4d(x: f64, y: f64, z: f64, w: f64) callconv(APIENTRY) void {
    procs.glVertex4d(x, y, z, w);
}
pub fn glVertex4f(x: f32, y: f32, z: f32, w: f32) callconv(APIENTRY) void {
    procs.glVertex4f(x, y, z, w);
}
pub fn glVertex4i(x: GLint, y: GLint, z: GLint, w: GLint) callconv(APIENTRY) void {
    procs.glVertex4i(x, y, z, w);
}
pub fn glVertex4s(x: GLshort, y: GLshort, z: GLshort, w: GLshort) callconv(APIENTRY) void {
    procs.glVertex4s(x, y, z, w);
}
pub fn glVertex2dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glVertex2dv(v);
}
pub fn glVertex2fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glVertex2fv(v);
}
pub fn glVertex2iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glVertex2iv(v);
}
pub fn glVertex2sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glVertex2sv(v);
}
pub fn glVertex3dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glVertex3dv(v);
}
pub fn glVertex3fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glVertex3fv(v);
}
pub fn glVertex3iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glVertex3iv(v);
}
pub fn glVertex3sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glVertex3sv(v);
}
pub fn glVertex4dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glVertex4dv(v);
}
pub fn glVertex4fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glVertex4fv(v);
}
pub fn glVertex4iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glVertex4iv(v);
}
pub fn glVertex4sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glVertex4sv(v);
}
pub fn glNormal3b(nx: GLbyte, ny: GLbyte, nz: GLbyte) callconv(APIENTRY) void {
    procs.glNormal3b(nx, ny, nz);
}
pub fn glNormal3d(nx: f64, ny: f64, nz: f64) callconv(APIENTRY) void {
    procs.glNormal3d(nx, ny, nz);
}
pub fn glNormal3f(nx: f32, ny: f32, nz: f32) callconv(APIENTRY) void {
    procs.glNormal3f(nx, ny, nz);
}
pub fn glNormal3i(nx: GLint, ny: GLint, nz: GLint) callconv(APIENTRY) void {
    procs.glNormal3i(nx, ny, nz);
}
pub fn glNormal3s(nx: GLshort, ny: GLshort, nz: GLshort) callconv(APIENTRY) void {
    procs.glNormal3s(nx, ny, nz);
}
pub fn glNormal3bv(v: [*c]const GLbyte) callconv(APIENTRY) void {
    procs.glNormal3bv(v);
}
pub fn glNormal3dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glNormal3dv(v);
}
pub fn glNormal3fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glNormal3fv(v);
}
pub fn glNormal3iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glNormal3iv(v);
}
pub fn glNormal3sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glNormal3sv(v);
}
pub fn glIndexd(c: f64) callconv(APIENTRY) void {
    procs.glIndexd(c);
}
pub fn glIndexf(c: f32) callconv(APIENTRY) void {
    procs.glIndexf(c);
}
pub fn glIndexi(c: GLint) callconv(APIENTRY) void {
    procs.glIndexi(c);
}
pub fn glIndexs(c: GLshort) callconv(APIENTRY) void {
    procs.glIndexs(c);
}
pub fn glIndexub(c: GLubyte) callconv(APIENTRY) void {
    procs.glIndexub(c);
}
pub fn glIndexdv(c: [*c]const f64) callconv(APIENTRY) void {
    procs.glIndexdv(c);
}
pub fn glIndexfv(c: [*c]const f32) callconv(APIENTRY) void {
    procs.glIndexfv(c);
}
pub fn glIndexiv(c: [*c]const GLint) callconv(APIENTRY) void {
    procs.glIndexiv(c);
}
pub fn glIndexsv(c: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glIndexsv(c);
}
pub fn glIndexubv(c: [*c]const GLubyte) callconv(APIENTRY) void {
    procs.glIndexubv(c);
}
pub fn glColor3b(red: GLbyte, green: GLbyte, blue: GLbyte) callconv(APIENTRY) void {
    procs.glColor3b(red, green, blue);
}
pub fn glColor3d(red: f64, green: f64, blue: f64) callconv(APIENTRY) void {
    procs.glColor3d(red, green, blue);
}
pub fn glColor3f(red: f32, green: f32, blue: f32) callconv(APIENTRY) void {
    procs.glColor3f(red, green, blue);
}
pub fn glColor3i(red: GLint, green: GLint, blue: GLint) callconv(APIENTRY) void {
    procs.glColor3i(red, green, blue);
}
pub fn glColor3s(red: GLshort, green: GLshort, blue: GLshort) callconv(APIENTRY) void {
    procs.glColor3s(red, green, blue);
}
pub fn glColor3ub(red: GLubyte, green: GLubyte, blue: GLubyte) callconv(APIENTRY) void {
    procs.glColor3ub(red, green, blue);
}
pub fn glColor3ui(red: GLuint, green: GLuint, blue: GLuint) callconv(APIENTRY) void {
    procs.glColor3ui(red, green, blue);
}
pub fn glColor3us(red: GLushort, green: GLushort, blue: GLushort) callconv(APIENTRY) void {
    procs.glColor3us(red, green, blue);
}
pub fn glColor4b(red: GLbyte, green: GLbyte, blue: GLbyte, alpha: GLbyte) callconv(APIENTRY) void {
    procs.glColor4b(red, green, blue, alpha);
}
pub fn glColor4d(red: f64, green: f64, blue: f64, alpha: f64) callconv(APIENTRY) void {
    procs.glColor4d(red, green, blue, alpha);
}
pub fn glColor4f(red: f32, green: f32, blue: f32, alpha: f32) callconv(APIENTRY) void {
    procs.glColor4f(red, green, blue, alpha);
}
pub fn glColor4i(red: GLint, green: GLint, blue: GLint, alpha: GLint) callconv(APIENTRY) void {
    procs.glColor4i(red, green, blue, alpha);
}
pub fn glColor4s(red: GLshort, green: GLshort, blue: GLshort, alpha: GLshort) callconv(APIENTRY) void {
    procs.glColor4s(red, green, blue, alpha);
}
pub fn glColor4ub(red: GLubyte, green: GLubyte, blue: GLubyte, alpha: GLubyte) callconv(APIENTRY) void {
    procs.glColor4ub(red, green, blue, alpha);
}
pub fn glColor4ui(red: GLuint, green: GLuint, blue: GLuint, alpha: GLuint) callconv(APIENTRY) void {
    procs.glColor4ui(red, green, blue, alpha);
}
pub fn glColor4us(red: GLushort, green: GLushort, blue: GLushort, alpha: GLushort) callconv(APIENTRY) void {
    procs.glColor4us(red, green, blue, alpha);
}
pub fn glColor3bv(v: [*c]const GLbyte) callconv(APIENTRY) void {
    procs.glColor3bv(v);
}
pub fn glColor3dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glColor3dv(v);
}
pub fn glColor3fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glColor3fv(v);
}
pub fn glColor3iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glColor3iv(v);
}
pub fn glColor3sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glColor3sv(v);
}
pub fn glColor3ubv(v: [*c]const GLubyte) callconv(APIENTRY) void {
    procs.glColor3ubv(v);
}
pub fn glColor3uiv(v: [*c]const GLuint) callconv(APIENTRY) void {
    procs.glColor3uiv(v);
}
pub fn glColor3usv(v: [*c]const GLushort) callconv(APIENTRY) void {
    procs.glColor3usv(v);
}
pub fn glColor4bv(v: [*c]const GLbyte) callconv(APIENTRY) void {
    procs.glColor4bv(v);
}
pub fn glColor4dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glColor4dv(v);
}
pub fn glColor4fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glColor4fv(v);
}
pub fn glColor4iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glColor4iv(v);
}
pub fn glColor4sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glColor4sv(v);
}
pub fn glColor4ubv(v: [*c]const GLubyte) callconv(APIENTRY) void {
    procs.glColor4ubv(v);
}
pub fn glColor4uiv(v: [*c]const GLuint) callconv(APIENTRY) void {
    procs.glColor4uiv(v);
}
pub fn glColor4usv(v: [*c]const GLushort) callconv(APIENTRY) void {
    procs.glColor4usv(v);
}
pub fn glTexCoord1d(s: f64) callconv(APIENTRY) void {
    procs.glTexCoord1d(s);
}
pub fn glTexCoord1f(s: f32) callconv(APIENTRY) void {
    procs.glTexCoord1f(s);
}
pub fn glTexCoord1i(s: GLint) callconv(APIENTRY) void {
    procs.glTexCoord1i(s);
}
pub fn glTexCoord1s(s: GLshort) callconv(APIENTRY) void {
    procs.glTexCoord1s(s);
}
pub fn glTexCoord2d(s: f64, t: f64) callconv(APIENTRY) void {
    procs.glTexCoord2d(s, t);
}
pub fn glTexCoord2f(s: f32, t: f32) callconv(APIENTRY) void {
    procs.glTexCoord2f(s, t);
}
pub fn glTexCoord2i(s: GLint, t: GLint) callconv(APIENTRY) void {
    procs.glTexCoord2i(s, t);
}
pub fn glTexCoord2s(s: GLshort, t: GLshort) callconv(APIENTRY) void {
    procs.glTexCoord2s(s, t);
}
pub fn glTexCoord3d(s: f64, t: f64, r: f64) callconv(APIENTRY) void {
    procs.glTexCoord3d(s, t, r);
}
pub fn glTexCoord3f(s: f32, t: f32, r: f32) callconv(APIENTRY) void {
    procs.glTexCoord3f(s, t, r);
}
pub fn glTexCoord3i(s: GLint, t: GLint, r: GLint) callconv(APIENTRY) void {
    procs.glTexCoord3i(s, t, r);
}
pub fn glTexCoord3s(s: GLshort, t: GLshort, r: GLshort) callconv(APIENTRY) void {
    procs.glTexCoord3s(s, t, r);
}
pub fn glTexCoord4d(s: f64, t: f64, r: f64, q: f64) callconv(APIENTRY) void {
    procs.glTexCoord4d(s, t, r, q);
}
pub fn glTexCoord4f(s: f32, t: f32, r: f32, q: f32) callconv(APIENTRY) void {
    procs.glTexCoord4f(s, t, r, q);
}
pub fn glTexCoord4i(s: GLint, t: GLint, r: GLint, q: GLint) callconv(APIENTRY) void {
    procs.glTexCoord4i(s, t, r, q);
}
pub fn glTexCoord4s(s: GLshort, t: GLshort, r: GLshort, q: GLshort) callconv(APIENTRY) void {
    procs.glTexCoord4s(s, t, r, q);
}
pub fn glTexCoord1dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glTexCoord1dv(v);
}
pub fn glTexCoord1fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glTexCoord1fv(v);
}
pub fn glTexCoord1iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glTexCoord1iv(v);
}
pub fn glTexCoord1sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glTexCoord1sv(v);
}
pub fn glTexCoord2dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glTexCoord2dv(v);
}
pub fn glTexCoord2fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glTexCoord2fv(v);
}
pub fn glTexCoord2iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glTexCoord2iv(v);
}
pub fn glTexCoord2sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glTexCoord2sv(v);
}
pub fn glTexCoord3dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glTexCoord3dv(v);
}
pub fn glTexCoord3fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glTexCoord3fv(v);
}
pub fn glTexCoord3iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glTexCoord3iv(v);
}
pub fn glTexCoord3sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glTexCoord3sv(v);
}
pub fn glTexCoord4dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glTexCoord4dv(v);
}
pub fn glTexCoord4fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glTexCoord4fv(v);
}
pub fn glTexCoord4iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glTexCoord4iv(v);
}
pub fn glTexCoord4sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glTexCoord4sv(v);
}
pub fn glRasterPos2d(x: f64, y: f64) callconv(APIENTRY) void {
    procs.glRasterPos2d(x, y);
}
pub fn glRasterPos2f(x: f32, y: f32) callconv(APIENTRY) void {
    procs.glRasterPos2f(x, y);
}
pub fn glRasterPos2i(x: GLint, y: GLint) callconv(APIENTRY) void {
    procs.glRasterPos2i(x, y);
}
pub fn glRasterPos2s(x: GLshort, y: GLshort) callconv(APIENTRY) void {
    procs.glRasterPos2s(x, y);
}
pub fn glRasterPos3d(x: f64, y: f64, z: f64) callconv(APIENTRY) void {
    procs.glRasterPos3d(x, y, z);
}
pub fn glRasterPos3f(x: f32, y: f32, z: f32) callconv(APIENTRY) void {
    procs.glRasterPos3f(x, y, z);
}
pub fn glRasterPos3i(x: GLint, y: GLint, z: GLint) callconv(APIENTRY) void {
    procs.glRasterPos3i(x, y, z);
}
pub fn glRasterPos3s(x: GLshort, y: GLshort, z: GLshort) callconv(APIENTRY) void {
    procs.glRasterPos3s(x, y, z);
}
pub fn glRasterPos4d(x: f64, y: f64, z: f64, w: f64) callconv(APIENTRY) void {
    procs.glRasterPos4d(x, y, z, w);
}
pub fn glRasterPos4f(x: f32, y: f32, z: f32, w: f32) callconv(APIENTRY) void {
    procs.glRasterPos4f(x, y, z, w);
}
pub fn glRasterPos4i(x: GLint, y: GLint, z: GLint, w: GLint) callconv(APIENTRY) void {
    procs.glRasterPos4i(x, y, z, w);
}
pub fn glRasterPos4s(x: GLshort, y: GLshort, z: GLshort, w: GLshort) callconv(APIENTRY) void {
    procs.glRasterPos4s(x, y, z, w);
}
pub fn glRasterPos2dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glRasterPos2dv(v);
}
pub fn glRasterPos2fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glRasterPos2fv(v);
}
pub fn glRasterPos2iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glRasterPos2iv(v);
}
pub fn glRasterPos2sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glRasterPos2sv(v);
}
pub fn glRasterPos3dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glRasterPos3dv(v);
}
pub fn glRasterPos3fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glRasterPos3fv(v);
}
pub fn glRasterPos3iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glRasterPos3iv(v);
}
pub fn glRasterPos3sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glRasterPos3sv(v);
}
pub fn glRasterPos4dv(v: [*c]const f64) callconv(APIENTRY) void {
    procs.glRasterPos4dv(v);
}
pub fn glRasterPos4fv(v: [*c]const f32) callconv(APIENTRY) void {
    procs.glRasterPos4fv(v);
}
pub fn glRasterPos4iv(v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glRasterPos4iv(v);
}
pub fn glRasterPos4sv(v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glRasterPos4sv(v);
}
pub fn glRectd(x1: f64, y1: f64, x2: f64, y2: f64) callconv(APIENTRY) void {
    procs.glRectd(x1, y1, x2, y2);
}
pub fn glRectf(x1: f32, y1: f32, x2: f32, y2: f32) callconv(APIENTRY) void {
    procs.glRectf(x1, y1, x2, y2);
}
pub fn glRecti(x1: GLint, y1: GLint, x2: GLint, y2: GLint) callconv(APIENTRY) void {
    procs.glRecti(x1, y1, x2, y2);
}
pub fn glRects(x1: GLshort, y1: GLshort, x2: GLshort, y2: GLshort) callconv(APIENTRY) void {
    procs.glRects(x1, y1, x2, y2);
}
pub fn glRectdv(v1: [*c]const f64, v2: [*c]const f64) callconv(APIENTRY) void {
    procs.glRectdv(v1, v2);
}
pub fn glRectfv(v1: [*c]const f32, v2: [*c]const f32) callconv(APIENTRY) void {
    procs.glRectfv(v1, v2);
}
pub fn glRectiv(v1: [*c]const GLint, v2: [*c]const GLint) callconv(APIENTRY) void {
    procs.glRectiv(v1, v2);
}
pub fn glRectsv(v1: [*c]const GLshort, v2: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glRectsv(v1, v2);
}
pub fn glVertexPointer(size: GLint, @"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glVertexPointer(size, @"type", stride, ptr);
}
pub fn glNormalPointer(@"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glNormalPointer(@"type", stride, ptr);
}
pub fn glColorPointer(size: GLint, @"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glColorPointer(size, @"type", stride, ptr);
}
pub fn glIndexPointer(@"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glIndexPointer(@"type", stride, ptr);
}
pub fn glTexCoordPointer(size: GLint, @"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glTexCoordPointer(size, @"type", stride, ptr);
}
pub fn glEdgeFlagPointer(stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glEdgeFlagPointer(stride, ptr);
}
pub fn glGetPointerv(pname: GLenum, params: [*c]?*GLvoid) callconv(APIENTRY) void {
    procs.glGetPointerv(pname, params);
}
pub fn glArrayElement(i: GLint) callconv(APIENTRY) void {
    procs.glArrayElement(i);
}
pub fn glDrawArrays(mode: GLenum, first: GLint, count: GLsizei) callconv(APIENTRY) void {
    procs.glDrawArrays(mode, first, count);
}
pub fn glDrawElements(mode: GLenum, count: GLsizei, @"type": GLenum, indices: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glDrawElements(mode, count, @"type", indices);
}
pub fn glInterleavedArrays(format: GLenum, stride: GLsizei, pointer: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glInterleavedArrays(format, stride, pointer);
}
pub fn glShadeModel(mode: GLenum) callconv(APIENTRY) void {
    procs.glShadeModel(mode);
}
pub fn glLightf(light: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void {
    procs.glLightf(light, pname, param);
}
pub fn glLighti(light: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void {
    procs.glLighti(light, pname, param);
}
pub fn glLightfv(light: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void {
    procs.glLightfv(light, pname, params);
}
pub fn glLightiv(light: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void {
    procs.glLightiv(light, pname, params);
}
pub fn glGetLightfv(light: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetLightfv(light, pname, params);
}
pub fn glGetLightiv(light: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetLightiv(light, pname, params);
}
pub fn glLightModelf(pname: GLenum, param: f32) callconv(APIENTRY) void {
    procs.glLightModelf(pname, param);
}
pub fn glLightModeli(pname: GLenum, param: GLint) callconv(APIENTRY) void {
    procs.glLightModeli(pname, param);
}
pub fn glLightModelfv(pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void {
    procs.glLightModelfv(pname, params);
}
pub fn glLightModeliv(pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void {
    procs.glLightModeliv(pname, params);
}
pub fn glMaterialf(face: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void {
    procs.glMaterialf(face, pname, param);
}
pub fn glMateriali(face: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void {
    procs.glMateriali(face, pname, param);
}
pub fn glMaterialfv(face: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void {
    procs.glMaterialfv(face, pname, params);
}
pub fn glMaterialiv(face: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void {
    procs.glMaterialiv(face, pname, params);
}
pub fn glGetMaterialfv(face: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetMaterialfv(face, pname, params);
}
pub fn glGetMaterialiv(face: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetMaterialiv(face, pname, params);
}
pub fn glColorMaterial(face: GLenum, mode: GLenum) callconv(APIENTRY) void {
    procs.glColorMaterial(face, mode);
}
pub fn glPixelZoom(xfactor: f32, yfactor: f32) callconv(APIENTRY) void {
    procs.glPixelZoom(xfactor, yfactor);
}
pub fn glPixelStoref(pname: GLenum, param: f32) callconv(APIENTRY) void {
    procs.glPixelStoref(pname, param);
}
pub fn glPixelStorei(pname: GLenum, param: GLint) callconv(APIENTRY) void {
    procs.glPixelStorei(pname, param);
}
pub fn glPixelTransferf(pname: GLenum, param: f32) callconv(APIENTRY) void {
    procs.glPixelTransferf(pname, param);
}
pub fn glPixelTransferi(pname: GLenum, param: GLint) callconv(APIENTRY) void {
    procs.glPixelTransferi(pname, param);
}
pub fn glPixelMapfv(map: GLenum, mapsize: GLsizei, values: [*c]const f32) callconv(APIENTRY) void {
    procs.glPixelMapfv(map, mapsize, values);
}
pub fn glPixelMapuiv(map: GLenum, mapsize: GLsizei, values: [*c]const GLuint) callconv(APIENTRY) void {
    procs.glPixelMapuiv(map, mapsize, values);
}
pub fn glPixelMapusv(map: GLenum, mapsize: GLsizei, values: [*c]const GLushort) callconv(APIENTRY) void {
    procs.glPixelMapusv(map, mapsize, values);
}
pub fn glGetPixelMapfv(map: GLenum, values: [*c]f32) callconv(APIENTRY) void {
    procs.glGetPixelMapfv(map, values);
}
pub fn glGetPixelMapuiv(map: GLenum, values: [*c]GLuint) callconv(APIENTRY) void {
    procs.glGetPixelMapuiv(map, values);
}
pub fn glGetPixelMapusv(map: GLenum, values: [*c]GLushort) callconv(APIENTRY) void {
    procs.glGetPixelMapusv(map, values);
}
pub fn glBitmap(width: GLsizei, height: GLsizei, xorig: f32, yorig: f32, xmove: f32, ymove: f32, bitmap: [*c]const GLubyte) callconv(APIENTRY) void {
    procs.glBitmap(width, height, xorig, yorig, xmove, ymove, bitmap);
}
pub fn glReadPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*GLvoid) callconv(APIENTRY) void {
    procs.glReadPixels(x, y, width, height, format, @"type", pixels);
}
pub fn glDrawPixels(width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glDrawPixels(width, height, format, @"type", pixels);
}
pub fn glCopyPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, @"type": GLenum) callconv(APIENTRY) void {
    procs.glCopyPixels(x, y, width, height, @"type");
}
pub fn glStencilFunc(func: GLenum, ref: GLint, mask: GLuint) callconv(APIENTRY) void {
    procs.glStencilFunc(func, ref, mask);
}
pub fn glStencilMask(mask: GLuint) callconv(APIENTRY) void {
    procs.glStencilMask(mask);
}
pub fn glStencilOp(fail: GLenum, zfail: GLenum, zpass: GLenum) callconv(APIENTRY) void {
    procs.glStencilOp(fail, zfail, zpass);
}
pub fn glClearStencil(s: GLint) callconv(APIENTRY) void {
    procs.glClearStencil(s);
}
pub fn glTexGend(coord: GLenum, pname: GLenum, param: f64) callconv(APIENTRY) void {
    procs.glTexGend(coord, pname, param);
}
pub fn glTexGenf(coord: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void {
    procs.glTexGenf(coord, pname, param);
}
pub fn glTexGeni(coord: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void {
    procs.glTexGeni(coord, pname, param);
}
pub fn glTexGendv(coord: GLenum, pname: GLenum, params: [*c]const f64) callconv(APIENTRY) void {
    procs.glTexGendv(coord, pname, params);
}
pub fn glTexGenfv(coord: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void {
    procs.glTexGenfv(coord, pname, params);
}
pub fn glTexGeniv(coord: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void {
    procs.glTexGeniv(coord, pname, params);
}
pub fn glGetTexGendv(coord: GLenum, pname: GLenum, params: [*c]f64) callconv(APIENTRY) void {
    procs.glGetTexGendv(coord, pname, params);
}
pub fn glGetTexGenfv(coord: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetTexGenfv(coord, pname, params);
}
pub fn glGetTexGeniv(coord: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetTexGeniv(coord, pname, params);
}
pub fn glTexEnvf(target: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void {
    procs.glTexEnvf(target, pname, param);
}
pub fn glTexEnvi(target: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void {
    procs.glTexEnvi(target, pname, param);
}
pub fn glTexEnvfv(target: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void {
    procs.glTexEnvfv(target, pname, params);
}
pub fn glTexEnviv(target: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void {
    procs.glTexEnviv(target, pname, params);
}
pub fn glGetTexEnvfv(target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetTexEnvfv(target, pname, params);
}
pub fn glGetTexEnviv(target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetTexEnviv(target, pname, params);
}
pub fn glTexParameterf(target: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void {
    procs.glTexParameterf(target, pname, param);
}
pub fn glTexParameteri(target: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void {
    procs.glTexParameteri(target, pname, param);
}
pub fn glTexParameterfv(target: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void {
    procs.glTexParameterfv(target, pname, params);
}
pub fn glTexParameteriv(target: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void {
    procs.glTexParameteriv(target, pname, params);
}
pub fn glGetTexParameterfv(target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetTexParameterfv(target, pname, params);
}
pub fn glGetTexParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetTexParameteriv(target, pname, params);
}
pub fn glGetTexLevelParameterfv(target: GLenum, level: GLint, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetTexLevelParameterfv(target, level, pname, params);
}
pub fn glGetTexLevelParameteriv(target: GLenum, level: GLint, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetTexLevelParameteriv(target, level, pname, params);
}
pub fn glTexImage1D(target: GLenum, level: GLint, internal_format: GLint, width: GLsizei, border: GLint, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glTexImage1D(target, level, internal_format, width, border, format, @"type", pixels);
}
pub fn glTexImage2D(target: GLenum, level: GLint, internal_format: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glTexImage2D(target, level, internal_format, width, height, border, format, @"type", pixels);
}
pub fn glGetTexImage(target: GLenum, level: GLint, format: GLenum, @"type": GLenum, pixels: ?*GLvoid) callconv(APIENTRY) void {
    procs.glGetTexImage(target, level, format, @"type", pixels);
}
pub fn glGenTextures(n: GLsizei, textures: [*c]GLuint) callconv(APIENTRY) void {
    procs.glGenTextures(n, textures);
}
pub fn glDeleteTextures(n: GLsizei, textures: [*c]const GLuint) callconv(APIENTRY) void {
    procs.glDeleteTextures(n, textures);
}
pub fn glBindTexture(target: GLenum, texture: GLuint) callconv(APIENTRY) void {
    procs.glBindTexture(target, texture);
}
pub fn glPrioritizeTextures(n: GLsizei, textures: [*c]const GLuint, priorities: [*c]const GLclampf) callconv(APIENTRY) void {
    procs.glPrioritizeTextures(n, textures, priorities);
}
pub fn glAreTexturesResident(n: GLsizei, textures: [*c]const GLuint, residences: [*c]GLboolean) callconv(APIENTRY) GLboolean {
    return procs.glAreTexturesResident(n, textures, residences);
}
pub fn glIsTexture(texture: GLuint) callconv(APIENTRY) GLboolean {
    return procs.glIsTexture(texture);
}
pub fn glTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glTexSubImage1D(target, level, xoffset, width, format, @"type", pixels);
}
pub fn glTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, @"type", pixels);
}
pub fn glCopyTexImage1D(target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, border: GLint) callconv(APIENTRY) void {
    procs.glCopyTexImage1D(target, level, internalformat, x, y, width, border);
}
pub fn glCopyTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) callconv(APIENTRY) void {
    procs.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border);
}
pub fn glCopyTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) callconv(APIENTRY) void {
    procs.glCopyTexSubImage1D(target, level, xoffset, x, y, width);
}
pub fn glCopyTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void {
    procs.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
}
pub fn glMap1d(target: GLenum, @"u1": f64, @"u2": f64, stride: GLint, order: GLint, points: [*c]const f64) callconv(APIENTRY) void {
    procs.glMap1d(target, @"u1", @"u2", stride, order, points);
}
pub fn glMap1f(target: GLenum, @"u1": f32, @"u2": f32, stride: GLint, order: GLint, points: [*c]const f32) callconv(APIENTRY) void {
    procs.glMap1f(target, @"u1", @"u2", stride, order, points);
}
pub fn glMap2d(target: GLenum, @"u1": f64, @"u2": f64, ustride: GLint, uorder: GLint, v1: f64, v2: f64, vstride: GLint, vorder: GLint, points: [*c]const f64) callconv(APIENTRY) void {
    procs.glMap2d(target, @"u1", @"u2", ustride, uorder, v1, v2, vstride, vorder, points);
}
pub fn glMap2f(target: GLenum, @"u1": f32, @"u2": f32, ustride: GLint, uorder: GLint, v1: f32, v2: f32, vstride: GLint, vorder: GLint, points: [*c]const f32) callconv(APIENTRY) void {
    procs.glMap2f(target, @"u1", @"u2", ustride, uorder, v1, v2, vstride, vorder, points);
}
pub fn glGetMapdv(target: GLenum, query: GLenum, v: [*c]f64) callconv(APIENTRY) void {
    procs.glGetMapdv(target, query, v);
}
pub fn glGetMapfv(target: GLenum, query: GLenum, v: [*c]f32) callconv(APIENTRY) void {
    procs.glGetMapfv(target, query, v);
}
pub fn glGetMapiv(target: GLenum, query: GLenum, v: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetMapiv(target, query, v);
}
pub fn glEvalCoord1d(u: f64) callconv(APIENTRY) void {
    procs.glEvalCoord1d(u);
}
pub fn glEvalCoord1f(u: f32) callconv(APIENTRY) void {
    procs.glEvalCoord1f(u);
}
pub fn glEvalCoord1dv(u: [*c]const f64) callconv(APIENTRY) void {
    procs.glEvalCoord1dv(u);
}
pub fn glEvalCoord1fv(u: [*c]const f32) callconv(APIENTRY) void {
    procs.glEvalCoord1fv(u);
}
pub fn glEvalCoord2d(u: f64, v: f64) callconv(APIENTRY) void {
    procs.glEvalCoord2d(u, v);
}
pub fn glEvalCoord2f(u: f32, v: f32) callconv(APIENTRY) void {
    procs.glEvalCoord2f(u, v);
}
pub fn glEvalCoord2dv(u: [*c]const f64) callconv(APIENTRY) void {
    procs.glEvalCoord2dv(u);
}
pub fn glEvalCoord2fv(u: [*c]const f32) callconv(APIENTRY) void {
    procs.glEvalCoord2fv(u);
}
pub fn glMapGrid1d(un: GLint, @"u1": f64, @"u2": f64) callconv(APIENTRY) void {
    procs.glMapGrid1d(un, @"u1", @"u2");
}
pub fn glMapGrid1f(un: GLint, @"u1": f32, @"u2": f32) callconv(APIENTRY) void {
    procs.glMapGrid1f(un, @"u1", @"u2");
}
pub fn glMapGrid2d(un: GLint, @"u1": f64, @"u2": f64, vn: GLint, v1: f64, v2: f64) callconv(APIENTRY) void {
    procs.glMapGrid2d(un, @"u1", @"u2", vn, v1, v2);
}
pub fn glMapGrid2f(un: GLint, @"u1": f32, @"u2": f32, vn: GLint, v1: f32, v2: f32) callconv(APIENTRY) void {
    procs.glMapGrid2f(un, @"u1", @"u2", vn, v1, v2);
}
pub fn glEvalPoint1(i: GLint) callconv(APIENTRY) void {
    procs.glEvalPoint1(i);
}
pub fn glEvalPoint2(i: GLint, j: GLint) callconv(APIENTRY) void {
    procs.glEvalPoint2(i, j);
}
pub fn glEvalMesh1(mode: GLenum, @"i1": GLint, @"i2": GLint) callconv(APIENTRY) void {
    procs.glEvalMesh1(mode, @"i1", @"i2");
}
pub fn glEvalMesh2(mode: GLenum, @"i1": GLint, @"i2": GLint, j1: GLint, j2: GLint) callconv(APIENTRY) void {
    procs.glEvalMesh2(mode, @"i1", @"i2", j1, j2);
}
pub fn glFogf(pname: GLenum, param: f32) callconv(APIENTRY) void {
    procs.glFogf(pname, param);
}
pub fn glFogi(pname: GLenum, param: GLint) callconv(APIENTRY) void {
    procs.glFogi(pname, param);
}
pub fn glFogfv(pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void {
    procs.glFogfv(pname, params);
}
pub fn glFogiv(pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void {
    procs.glFogiv(pname, params);
}
pub fn glFeedbackBuffer(size: GLsizei, @"type": GLenum, buffer: [*c]f32) callconv(APIENTRY) void {
    procs.glFeedbackBuffer(size, @"type", buffer);
}
pub fn glPassThrough(token: f32) callconv(APIENTRY) void {
    procs.glPassThrough(token);
}
pub fn glSelectBuffer(size: GLsizei, buffer: [*c]GLuint) callconv(APIENTRY) void {
    procs.glSelectBuffer(size, buffer);
}
pub fn glInitNames() callconv(APIENTRY) void {
    procs.glInitNames();
}
pub fn glLoadName(name: GLuint) callconv(APIENTRY) void {
    procs.glLoadName(name);
}
pub fn glPushName(name: GLuint) callconv(APIENTRY) void {
    procs.glPushName(name);
}
pub fn glPopName() callconv(APIENTRY) void {
    procs.glPopName();
}
pub fn glDrawRangeElements(mode: GLenum, start: GLuint, end: GLuint, count: GLsizei, @"type": GLenum, indices: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glDrawRangeElements(mode, start, end, count, @"type", indices);
}
pub fn glTexImage3D(target: GLenum, level: GLint, internal_format: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glTexImage3D(target, level, internal_format, width, height, depth, border, format, @"type", pixels);
}
pub fn glTexSubImage3D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, @"type", pixels);
}
pub fn glCopyTexSubImage3D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void {
    procs.glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height);
}
pub fn glColorTable(target: GLenum, internalformat: GLenum, width: GLsizei, format: GLenum, @"type": GLenum, table: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glColorTable(target, internalformat, width, format, @"type", table);
}
pub fn glColorSubTable(target: GLenum, start: GLsizei, count: GLsizei, format: GLenum, @"type": GLenum, data: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glColorSubTable(target, start, count, format, @"type", data);
}
pub fn glColorTableParameteriv(target: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void {
    procs.glColorTableParameteriv(target, pname, params);
}
pub fn glColorTableParameterfv(target: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void {
    procs.glColorTableParameterfv(target, pname, params);
}
pub fn glCopyColorSubTable(target: GLenum, start: GLsizei, x: GLint, y: GLint, width: GLsizei) callconv(APIENTRY) void {
    procs.glCopyColorSubTable(target, start, x, y, width);
}
pub fn glCopyColorTable(target: GLenum, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei) callconv(APIENTRY) void {
    procs.glCopyColorTable(target, internalformat, x, y, width);
}
pub fn glGetColorTable(target: GLenum, format: GLenum, @"type": GLenum, table: ?*GLvoid) callconv(APIENTRY) void {
    procs.glGetColorTable(target, format, @"type", table);
}
pub fn glGetColorTableParameterfv(target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetColorTableParameterfv(target, pname, params);
}
pub fn glGetColorTableParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetColorTableParameteriv(target, pname, params);
}
pub fn glBlendEquation(mode: GLenum) callconv(APIENTRY) void {
    procs.glBlendEquation(mode);
}
pub fn glBlendColor(red: GLclampf, green: GLclampf, blue: GLclampf, alpha: GLclampf) callconv(APIENTRY) void {
    procs.glBlendColor(red, green, blue, alpha);
}
pub fn glHistogram(target: GLenum, width: GLsizei, internalformat: GLenum, sink: GLboolean) callconv(APIENTRY) void {
    procs.glHistogram(target, width, internalformat, sink);
}
pub fn glResetHistogram(target: GLenum) callconv(APIENTRY) void {
    procs.glResetHistogram(target);
}
pub fn glGetHistogram(target: GLenum, reset: GLboolean, format: GLenum, @"type": GLenum, values: ?*GLvoid) callconv(APIENTRY) void {
    procs.glGetHistogram(target, reset, format, @"type", values);
}
pub fn glGetHistogramParameterfv(target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetHistogramParameterfv(target, pname, params);
}
pub fn glGetHistogramParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetHistogramParameteriv(target, pname, params);
}
pub fn glMinmax(target: GLenum, internalformat: GLenum, sink: GLboolean) callconv(APIENTRY) void {
    procs.glMinmax(target, internalformat, sink);
}
pub fn glResetMinmax(target: GLenum) callconv(APIENTRY) void {
    procs.glResetMinmax(target);
}
pub fn glGetMinmax(target: GLenum, reset: GLboolean, format: GLenum, types: GLenum, values: ?*GLvoid) callconv(APIENTRY) void {
    procs.glGetMinmax(target, reset, format, types, values);
}
pub fn glGetMinmaxParameterfv(target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetMinmaxParameterfv(target, pname, params);
}
pub fn glGetMinmaxParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetMinmaxParameteriv(target, pname, params);
}
pub fn glConvolutionFilter1D(target: GLenum, internalformat: GLenum, width: GLsizei, format: GLenum, @"type": GLenum, image: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glConvolutionFilter1D(target, internalformat, width, format, @"type", image);
}
pub fn glConvolutionFilter2D(target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, image: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glConvolutionFilter2D(target, internalformat, width, height, format, @"type", image);
}
pub fn glConvolutionParameterf(target: GLenum, pname: GLenum, params: f32) callconv(APIENTRY) void {
    procs.glConvolutionParameterf();
}
pub fn glConvolutionParameterfv(target: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void {
    procs.glConvolutionParameterfv();
}
pub fn glConvolutionParameteri(target: GLenum, pname: GLenum, params: GLint) callconv(APIENTRY) void {
    procs.glConvolutionParameteri();
}
pub fn glConvolutionParameteriv(target: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void {
    procs.glConvolutionParameteriv();
}
pub fn glCopyConvolutionFilter1D(target: GLenum, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei) callconv(APIENTRY) void {
    procs.glCopyConvolutionFilter1D();
}
pub fn glCopyConvolutionFilter2D(target: GLenum, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void {
    procs.glCopyConvolutionFilter2D();
}
pub fn glGetConvolutionFilter(target: GLenum, format: GLenum, @"type": GLenum, image: ?*GLvoid) callconv(APIENTRY) void {
    procs.glGetConvolutionFilter();
}
pub fn glGetConvolutionParameterfv(target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void {
    procs.glGetConvolutionParameterfv();
}
pub fn glGetConvolutionParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void {
    procs.glGetConvolutionParameteriv();
}
pub fn glSeparableFilter2D(target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, row: ?*const GLvoid, column: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glSeparableFilter2D();
}
pub fn glGetSeparableFilter(target: GLenum, format: GLenum, @"type": GLenum, row: ?*GLvoid, column: ?*GLvoid, span: ?*GLvoid) callconv(APIENTRY) void {
    procs.glGetSeparableFilter();
}
pub fn glActiveTexture(texture: GLenum) callconv(APIENTRY) void {
    procs.glActiveTexture();
}
pub fn glClientActiveTexture(texture: GLenum) callconv(APIENTRY) void {
    procs.glClientActiveTexture();
}
pub fn glCompressedTexImage1D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, border: GLint, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glCompressedTexImage1D();
}
pub fn glCompressedTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glCompressedTexImage2D();
}
pub fn glCompressedTexImage3D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glCompressedTexImage3D();
}
pub fn glCompressedTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glCompressedTexSubImage1D();
}
pub fn glCompressedTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glCompressedTexSubImage2D();
}
pub fn glCompressedTexSubImage3D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void {
    procs.glCompressedTexSubImage3D();
}
pub fn glGetCompressedTexImage(target: GLenum, lod: GLint, img: ?*GLvoid) callconv(APIENTRY) void {
    procs.glGetCompressedTexImage();
}
pub fn glMultiTexCoord1d(target: GLenum, s: f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord1d();
}
pub fn glMultiTexCoord1dv(target: GLenum, v: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord1dv();
}
pub fn glMultiTexCoord1f(target: GLenum, s: f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord1f();
}
pub fn glMultiTexCoord1fv(target: GLenum, v: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord1fv();
}
pub fn glMultiTexCoord1i(target: GLenum, s: GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord1i();
}
pub fn glMultiTexCoord1iv(target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord1iv();
}
pub fn glMultiTexCoord1s(target: GLenum, s: GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord1s();
}
pub fn glMultiTexCoord1sv(target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord1sv();
}
pub fn glMultiTexCoord2d(target: GLenum, s: f64, t: f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord2d();
}
pub fn glMultiTexCoord2dv(target: GLenum, v: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord2dv();
}
pub fn glMultiTexCoord2f(target: GLenum, s: f32, t: f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord2f();
}
pub fn glMultiTexCoord2fv(target: GLenum, v: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord2fv();
}
pub fn glMultiTexCoord2i(target: GLenum, s: GLint, t: GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord2i();
}
pub fn glMultiTexCoord2iv(target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord2iv();
}
pub fn glMultiTexCoord2s(target: GLenum, s: GLshort, t: GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord2s();
}
pub fn glMultiTexCoord2sv(target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord2sv();
}
pub fn glMultiTexCoord3d(target: GLenum, s: f64, t: f64, r: f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord3d();
}
pub fn glMultiTexCoord3dv(target: GLenum, v: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord3dv();
}
pub fn glMultiTexCoord3f(target: GLenum, s: f32, t: f32, r: f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord3f();
}
pub fn glMultiTexCoord3fv(target: GLenum, v: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord3fv();
}
pub fn glMultiTexCoord3i(target: GLenum, s: GLint, t: GLint, r: GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord3i();
}
pub fn glMultiTexCoord3iv(target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord3iv();
}
pub fn glMultiTexCoord3s(target: GLenum, s: GLshort, t: GLshort, r: GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord3s();
}
pub fn glMultiTexCoord3sv(target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord3sv();
}
pub fn glMultiTexCoord4d(target: GLenum, s: f64, t: f64, r: f64, q: f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord4d();
}
pub fn glMultiTexCoord4dv(target: GLenum, v: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord4dv();
}
pub fn glMultiTexCoord4f(target: GLenum, s: f32, t: f32, r: f32, q: f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord4f();
}
pub fn glMultiTexCoord4fv(target: GLenum, v: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord4fv();
}
pub fn glMultiTexCoord4i(target: GLenum, s: GLint, t: GLint, r: GLint, q: GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord4i();
}
pub fn glMultiTexCoord4iv(target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord4iv();
}
pub fn glMultiTexCoord4s(target: GLenum, s: GLshort, t: GLshort, r: GLshort, q: GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord4s();
}
pub fn glMultiTexCoord4sv(target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord4sv();
}
pub fn glLoadTransposeMatrixd(m: [*c]const f64) callconv(APIENTRY) void {
    procs.glLoadTransposeMatrixd();
}
pub fn glLoadTransposeMatrixf(m: [*c]const f32) callconv(APIENTRY) void {
    procs.glLoadTransposeMatrixf();
}
pub fn glMultTransposeMatrixd(m: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultTransposeMatrixd();
}
pub fn glMultTransposeMatrixf(m: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultTransposeMatrixf();
}
pub fn glSampleCoverage(value: GLclampf, invert: GLboolean) callconv(APIENTRY) void {
    procs.glSampleCoverage();
}
pub fn glActiveTextureARB(texture: GLenum) callconv(APIENTRY) void {
    procs.glActiveTextureARB();
}
pub fn glClientActiveTextureARB(texture: GLenum) callconv(APIENTRY) void {
    procs.glClientActiveTextureARB();
}
pub fn glMultiTexCoord1dARB(target: GLenum, s: f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord1dARB();
}
pub fn glMultiTexCoord1dvARB(target: GLenum, v: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord1dvARB();
}
pub fn glMultiTexCoord1fARB(target: GLenum, s: f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord1fARB();
}
pub fn glMultiTexCoord1fvARB(target: GLenum, v: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord1fvARB();
}
pub fn glMultiTexCoord1iARB(target: GLenum, s: GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord1iARB();
}
pub fn glMultiTexCoord1ivARB(target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord1ivARB();
}
pub fn glMultiTexCoord1sARB(target: GLenum, s: GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord1sARB();
}
pub fn glMultiTexCoord1svARB(target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord1svARB();
}
pub fn glMultiTexCoord2dARB(target: GLenum, s: f64, t: f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord2dARB();
}
pub fn glMultiTexCoord2dvARB(target: GLenum, v: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord2dvARB();
}
pub fn glMultiTexCoord2fARB(target: GLenum, s: f32, t: f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord2fARB();
}
pub fn glMultiTexCoord2fvARB(target: GLenum, v: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord2fvARB();
}
pub fn glMultiTexCoord2iARB(target: GLenum, s: GLint, t: GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord2iARB();
}
pub fn glMultiTexCoord2ivARB(target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord2ivARB();
}
pub fn glMultiTexCoord2sARB(target: GLenum, s: GLshort, t: GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord2sARB();
}
pub fn glMultiTexCoord2svARB(target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord2svARB();
}
pub fn glMultiTexCoord3dARB(target: GLenum, s: f64, t: f64, r: f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord3dARB();
}
pub fn glMultiTexCoord3dvARB(target: GLenum, v: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord3dvARB();
}
pub fn glMultiTexCoord3fARB(target: GLenum, s: f32, t: f32, r: f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord3fARB();
}
pub fn glMultiTexCoord3fvARB(target: GLenum, v: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord3fvARB();
}
pub fn glMultiTexCoord3iARB(target: GLenum, s: GLint, t: GLint, r: GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord3iARB();
}
pub fn glMultiTexCoord3ivARB(target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord3ivARB();
}
pub fn glMultiTexCoord3sARB(target: GLenum, s: GLshort, t: GLshort, r: GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord3sARB();
}
pub fn glMultiTexCoord3svARB(target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord3svARB();
}
pub fn glMultiTexCoord4dARB(target: GLenum, s: f64, t: f64, r: f64, q: f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord4dARB();
}
pub fn glMultiTexCoord4dvARB(target: GLenum, v: [*c]const f64) callconv(APIENTRY) void {
    procs.glMultiTexCoord4dvARB();
}
pub fn glMultiTexCoord4fARB(target: GLenum, s: f32, t: f32, r: f32, q: f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord4fARB();
}
pub fn glMultiTexCoord4fvARB(target: GLenum, v: [*c]const f32) callconv(APIENTRY) void {
    procs.glMultiTexCoord4fvARB();
}
pub fn glMultiTexCoord4iARB(target: GLenum, s: GLint, t: GLint, r: GLint, q: GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord4iARB();
}
pub fn glMultiTexCoord4ivARB(target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void {
    procs.glMultiTexCoord4ivARB();
}
pub fn glMultiTexCoord4sARB(target: GLenum, s: GLshort, t: GLshort, r: GLshort, q: GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord4sARB();
}
pub fn glMultiTexCoord4svARB(target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void {
    procs.glMultiTexCoord4svARB();
}
pub fn glBlendEquationSeparateATI(modeRGB: GLenum, modeA: GLenum) callconv(APIENTRY) void {
    procs.glBlendEquationSeparateATI();
}
