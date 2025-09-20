pub const c = @cImport(@cInclude("GL/gl.h"));

pub const APIENTRY: @import("std").builtin.CallingConvention = if (@import("builtin").os.tag == .windows) .winapi else .c;

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
pub const GL_FALSE = 0;
pub const GL_TRUE = 1;

// Data types
pub const GL_BYTE = 0x1400;
pub const GL_UNSIGNED_BYTE = 0x1401;
pub const GL_SHORT = 0x1402;
pub const GL_UNSIGNED_SHORT = 0x1403;
pub const GL_INT = 0x1404;
pub const GL_UNSIGNED_INT = 0x1405;
pub const GL_FLOAT = 0x1406;
pub const GL_2_BYTES = 0x1407;
pub const GL_3_BYTES = 0x1408;
pub const GL_4_BYTES = 0x1409;
pub const GL_DOUBLE = 0x140A;

// Primitives
pub const GL_POINTS = 0x0000;
pub const GL_LINES = 0x0001;
pub const GL_LINE_LOOP = 0x0002;
pub const GL_LINE_STRIP = 0x0003;
pub const GL_TRIANGLES = 0x0004;
pub const GL_TRIANGLE_STRIP = 0x0005;
pub const GL_TRIANGLE_FAN = 0x0006;
pub const GL_QUADS = 0x0007;
pub const GL_QUAD_STRIP = 0x0008;
pub const GL_POLYGON = 0x0009;

// Vertex Arrays
pub const GL_VERTEX_ARRAY = 0x8074;
pub const GL_NORMAL_ARRAY = 0x8075;
pub const GL_COLOR_ARRAY = 0x8076;
pub const GL_INDEX_ARRAY = 0x8077;
pub const GL_TEXTURE_COORD_ARRAY = 0x8078;
pub const GL_EDGE_FLAG_ARRAY = 0x8079;
pub const GL_VERTEX_ARRAY_SIZE = 0x807A;
pub const GL_VERTEX_ARRAY_TYPE = 0x807B;
pub const GL_VERTEX_ARRAY_STRIDE = 0x807C;
pub const GL_NORMAL_ARRAY_TYPE = 0x807E;
pub const GL_NORMAL_ARRAY_STRIDE = 0x807F;
pub const GL_COLOR_ARRAY_SIZE = 0x8081;
pub const GL_COLOR_ARRAY_TYPE = 0x8082;
pub const GL_COLOR_ARRAY_STRIDE = 0x8083;
pub const GL_INDEX_ARRAY_TYPE = 0x8085;
pub const GL_INDEX_ARRAY_STRIDE = 0x8086;
pub const GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088;
pub const GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089;
pub const GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
pub const GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C;
pub const GL_VERTEX_ARRAY_POINTER = 0x808E;
pub const GL_NORMAL_ARRAY_POINTER = 0x808F;
pub const GL_COLOR_ARRAY_POINTER = 0x8090;
pub const GL_INDEX_ARRAY_POINTER = 0x8091;
pub const GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092;
pub const GL_EDGE_FLAG_ARRAY_POINTER = 0x8093;
pub const GL_V2F = 0x2A20;
pub const GL_V3F = 0x2A21;
pub const GL_C4UB_V2F = 0x2A22;
pub const GL_C4UB_V3F = 0x2A23;
pub const GL_C3F_V3F = 0x2A24;
pub const GL_N3F_V3F = 0x2A25;
pub const GL_C4F_N3F_V3F = 0x2A26;
pub const GL_T2F_V3F = 0x2A27;
pub const GL_T4F_V4F = 0x2A28;
pub const GL_T2F_C4UB_V3F = 0x2A29;
pub const GL_T2F_C3F_V3F = 0x2A2A;
pub const GL_T2F_N3F_V3F = 0x2A2B;
pub const GL_T2F_C4F_N3F_V3F = 0x2A2C;
pub const GL_T4F_C4F_N3F_V4F = 0x2A2D;

// Matrix Mode
pub const GL_MATRIX_MODE = 0x0BA0;
pub const GL_MODELVIEW = 0x1700;
pub const GL_PROJECTION = 0x1701;
pub const GL_TEXTURE = 0x1702;

// Points
pub const GL_POINT_SMOOTH = 0x0B10;
pub const GL_POINT_SIZE = 0x0B11;
pub const GL_POINT_SIZE_GRANULARITY = 0x0B13;
pub const GL_POINT_SIZE_RANGE = 0x0B12;

// Lines
pub const GL_LINE_SMOOTH = 0x0B20;
pub const GL_LINE_STIPPLE = 0x0B24;
pub const GL_LINE_STIPPLE_PATTERN = 0x0B25;
pub const GL_LINE_STIPPLE_REPEAT = 0x0B26;
pub const GL_LINE_WIDTH = 0x0B21;
pub const GL_LINE_WIDTH_GRANULARITY = 0x0B23;
pub const GL_LINE_WIDTH_RANGE = 0x0B22;

// Polygons
pub const GL_POINT = 0x1B00;
pub const GL_LINE = 0x1B01;
pub const GL_FILL = 0x1B02;
pub const GL_CW = 0x0900;
pub const GL_CCW = 0x0901;
pub const GL_FRONT = 0x0404;
pub const GL_BACK = 0x0405;
pub const GL_POLYGON_MODE = 0x0B40;
pub const GL_POLYGON_SMOOTH = 0x0B41;
pub const GL_POLYGON_STIPPLE = 0x0B42;
pub const GL_EDGE_FLAG = 0x0B43;
pub const GL_CULL_FACE = 0x0B44;
pub const GL_CULL_FACE_MODE = 0x0B45;
pub const GL_FRONT_FACE = 0x0B46;
pub const GL_POLYGON_OFFSET_FACTOR = 0x8038;
pub const GL_POLYGON_OFFSET_UNITS = 0x2A00;
pub const GL_POLYGON_OFFSET_POINT = 0x2A01;
pub const GL_POLYGON_OFFSET_LINE = 0x2A02;
pub const GL_POLYGON_OFFSET_FILL = 0x8037;

// Display Lists
pub const GL_COMPILE = 0x1300;
pub const GL_COMPILE_AND_EXECUTE = 0x1301;
pub const GL_LIST_BASE = 0x0B32;
pub const GL_LIST_INDEX = 0x0B33;
pub const GL_LIST_MODE = 0x0B30;

// Depth buffer
pub const GL_NEVER = 0x0200;
pub const GL_LESS = 0x0201;
pub const GL_EQUAL = 0x0202;
pub const GL_LEQUAL = 0x0203;
pub const GL_GREATER = 0x0204;
pub const GL_NOTEQUAL = 0x0205;
pub const GL_GEQUAL = 0x0206;
pub const GL_ALWAYS = 0x0207;
pub const GL_DEPTH_TEST = 0x0B71;
pub const GL_DEPTH_BITS = 0x0D56;
pub const GL_DEPTH_CLEAR_VALUE = 0x0B73;
pub const GL_DEPTH_FUNC = 0x0B74;
pub const GL_DEPTH_RANGE = 0x0B70;
pub const GL_DEPTH_WRITEMASK = 0x0B72;
pub const GL_DEPTH_COMPONENT = 0x1902;

// Lighting
pub const GL_LIGHTING = 0x0B50;
pub const GL_LIGHT0 = 0x4000;
pub const GL_LIGHT1 = 0x4001;
pub const GL_LIGHT2 = 0x4002;
pub const GL_LIGHT3 = 0x4003;
pub const GL_LIGHT4 = 0x4004;
pub const GL_LIGHT5 = 0x4005;
pub const GL_LIGHT6 = 0x4006;
pub const GL_LIGHT7 = 0x4007;
pub const GL_SPOT_EXPONENT = 0x1205;
pub const GL_SPOT_CUTOFF = 0x1206;
pub const GL_CONSTANT_ATTENUATION = 0x1207;
pub const GL_LINEAR_ATTENUATION = 0x1208;
pub const GL_QUADRATIC_ATTENUATION = 0x1209;
pub const GL_AMBIENT = 0x1200;
pub const GL_DIFFUSE = 0x1201;
pub const GL_SPECULAR = 0x1202;
pub const GL_SHININESS = 0x1601;
pub const GL_EMISSION = 0x1600;
pub const GL_POSITION = 0x1203;
pub const GL_SPOT_DIRECTION = 0x1204;
pub const GL_AMBIENT_AND_DIFFUSE = 0x1602;
pub const GL_COLOR_INDEXES = 0x1603;
pub const GL_LIGHT_MODEL_TWO_SIDE = 0x0B52;
pub const GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51;
pub const GL_LIGHT_MODEL_AMBIENT = 0x0B53;
pub const GL_FRONT_AND_BACK = 0x0408;
pub const GL_SHADE_MODEL = 0x0B54;
pub const GL_FLAT = 0x1D00;
pub const GL_SMOOTH = 0x1D01;
pub const GL_COLOR_MATERIAL = 0x0B57;
pub const GL_COLOR_MATERIAL_FACE = 0x0B55;
pub const GL_COLOR_MATERIAL_PARAMETER = 0x0B56;
pub const GL_NORMALIZE = 0x0BA1;

// User clipping planes
pub const GL_CLIP_PLANE0 = 0x3000;
pub const GL_CLIP_PLANE1 = 0x3001;
pub const GL_CLIP_PLANE2 = 0x3002;
pub const GL_CLIP_PLANE3 = 0x3003;
pub const GL_CLIP_PLANE4 = 0x3004;
pub const GL_CLIP_PLANE5 = 0x3005;

// Accumulation buffer
pub const GL_ACCUM_RED_BITS = 0x0D58;
pub const GL_ACCUM_GREEN_BITS = 0x0D59;
pub const GL_ACCUM_BLUE_BITS = 0x0D5A;
pub const GL_ACCUM_ALPHA_BITS = 0x0D5B;
pub const GL_ACCUM_CLEAR_VALUE = 0x0B80;
pub const GL_ACCUM = 0x0100;
pub const GL_ADD = 0x0104;
pub const GL_LOAD = 0x0101;
pub const GL_MULT = 0x0103;
pub const GL_RETURN = 0x0102;

// Alpha testing
pub const GL_ALPHA_TEST = 0x0BC0;
pub const GL_ALPHA_TEST_REF = 0x0BC2;
pub const GL_ALPHA_TEST_FUNC = 0x0BC1;

// Blending
pub const GL_BLEND = 0x0BE2;
pub const GL_BLEND_SRC = 0x0BE1;
pub const GL_BLEND_DST = 0x0BE0;
pub const GL_ZERO = 0x0;
pub const GL_ONE = 1;
pub const GL_SRC_COLOR = 0x0300;
pub const GL_ONE_MINUS_SRC_COLOR = 0x0301;
pub const GL_SRC_ALPHA = 0x0302;
pub const GL_ONE_MINUS_SRC_ALPHA = 0x0303;
pub const GL_DST_ALPHA = 0x0304;
pub const GL_ONE_MINUS_DST_ALPHA = 0x0305;
pub const GL_DST_COLOR = 0x0306;
pub const GL_ONE_MINUS_DST_COLOR = 0x0307;
pub const GL_SRC_ALPHA_SATURATE = 0x0308;

// Render Mode
pub const GL_FEEDBACK = 0x1C01;
pub const GL_RENDER = 0x1C00;
pub const GL_SELECT = 0x1C02;

// Feedback
pub const GL_2D = 0x0600;
pub const GL_3D = 0x0601;
pub const GL_3D_COLOR = 0x0602;
pub const GL_3D_COLOR_TEXTURE = 0x0603;
pub const GL_4D_COLOR_TEXTURE = 0x0604;
pub const GL_POINT_TOKEN = 0x0701;
pub const GL_LINE_TOKEN = 0x0702;
pub const GL_LINE_RESET_TOKEN = 0x0707;
pub const GL_POLYGON_TOKEN = 0x0703;
pub const GL_BITMAP_TOKEN = 0x0704;
pub const GL_DRAW_PIXEL_TOKEN = 0x0705;
pub const GL_COPY_PIXEL_TOKEN = 0x0706;
pub const GL_PASS_THROUGH_TOKEN = 0x0700;
pub const GL_FEEDBACK_BUFFER_POINTER = 0x0DF0;
pub const GL_FEEDBACK_BUFFER_SIZE = 0x0DF1;
pub const GL_FEEDBACK_BUFFER_TYPE = 0x0DF2;

// Selection
pub const GL_SELECTION_BUFFER_POINTER = 0x0DF3;
pub const GL_SELECTION_BUFFER_SIZE = 0x0DF4;

// Fog
pub const GL_FOG = 0x0B60;
pub const GL_FOG_MODE = 0x0B65;
pub const GL_FOG_DENSITY = 0x0B62;
pub const GL_FOG_COLOR = 0x0B66;
pub const GL_FOG_INDEX = 0x0B61;
pub const GL_FOG_START = 0x0B63;
pub const GL_FOG_END = 0x0B64;
pub const GL_LINEAR = 0x2601;
pub const GL_EXP = 0x0800;
pub const GL_EXP2 = 0x0801;

// Logic Ops
pub const GL_LOGIC_OP = 0x0BF1;
pub const GL_INDEX_LOGIC_OP = 0x0BF1;
pub const GL_COLOR_LOGIC_OP = 0x0BF2;
pub const GL_LOGIC_OP_MODE = 0x0BF0;
pub const GL_CLEAR = 0x1500;
pub const GL_SET = 0x150F;
pub const GL_COPY = 0x1503;
pub const GL_COPY_INVERTED = 0x150C;
pub const GL_NOOP = 0x1505;
pub const GL_INVERT = 0x150A;
pub const GL_AND = 0x1501;
pub const GL_NAND = 0x150E;
pub const GL_OR = 0x1507;
pub const GL_NOR = 0x1508;
pub const GL_XOR = 0x1506;
pub const GL_EQUIV = 0x1509;
pub const GL_AND_REVERSE = 0x1502;
pub const GL_AND_INVERTED = 0x1504;
pub const GL_OR_REVERSE = 0x150B;
pub const GL_OR_INVERTED = 0x150D;

// Stencil
pub const GL_STENCIL_BITS = 0x0D57;
pub const GL_STENCIL_TEST = 0x0B90;
pub const GL_STENCIL_CLEAR_VALUE = 0x0B91;
pub const GL_STENCIL_FUNC = 0x0B92;
pub const GL_STENCIL_VALUE_MASK = 0x0B93;
pub const GL_STENCIL_FAIL = 0x0B94;
pub const GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95;
pub const GL_STENCIL_PASS_DEPTH_PASS = 0x0B96;
pub const GL_STENCIL_REF = 0x0B97;
pub const GL_STENCIL_WRITEMASK = 0x0B98;
pub const GL_STENCIL_INDEX = 0x1901;
pub const GL_KEEP = 0x1E00;
pub const GL_REPLACE = 0x1E01;
pub const GL_INCR = 0x1E02;
pub const GL_DECR = 0x1E03;

// Buffers, Pixel Drawing/Reading
pub const GL_NONE = 0x0;
pub const GL_LEFT = 0x0406;
pub const GL_RIGHT = 0x0407;
//GL_FRONT 0x0404
//GL_BACK 0x0405
//GL_FRONT_AND_BACK 0x0408
pub const GL_FRONT_LEFT = 0x0400;
pub const GL_FRONT_RIGHT = 0x0401;
pub const GL_BACK_LEFT = 0x0402;
pub const GL_BACK_RIGHT = 0x0403;
pub const GL_AUX0 = 0x0409;
pub const GL_AUX1 = 0x040A;
pub const GL_AUX2 = 0x040B;
pub const GL_AUX3 = 0x040C;
pub const GL_COLOR_INDEX = 0x1900;
pub const GL_RED = 0x1903;
pub const GL_GREEN = 0x1904;
pub const GL_BLUE = 0x1905;
pub const GL_ALPHA = 0x1906;
pub const GL_LUMINANCE = 0x1909;
pub const GL_LUMINANCE_ALPHA = 0x190A;
pub const GL_ALPHA_BITS = 0x0D55;
pub const GL_RED_BITS = 0x0D52;
pub const GL_GREEN_BITS = 0x0D53;
pub const GL_BLUE_BITS = 0x0D54;
pub const GL_INDEX_BITS = 0x0D51;
pub const GL_SUBPIXEL_BITS = 0x0D50;
pub const GL_AUX_BUFFERS = 0x0C00;
pub const GL_READ_BUFFER = 0x0C02;
pub const GL_DRAW_BUFFER = 0x0C01;
pub const GL_DOUBLEBUFFER = 0x0C32;
pub const GL_STEREO = 0x0C33;
pub const GL_BITMAP = 0x1A00;
pub const GL_COLOR = 0x1800;
pub const GL_DEPTH = 0x1801;
pub const GL_STENCIL = 0x1802;
pub const GL_DITHER = 0x0BD0;
pub const GL_RGB = 0x1907;
pub const GL_RGBA = 0x1908;

// Implementation limits
pub const GL_MAX_LIST_NESTING = 0x0B31;
pub const GL_MAX_EVAL_ORDER = 0x0D30;
pub const GL_MAX_LIGHTS = 0x0D31;
pub const GL_MAX_CLIP_PLANES = 0x0D32;
pub const GL_MAX_TEXTURE_SIZE = 0x0D33;
pub const GL_MAX_PIXEL_MAP_TABLE = 0x0D34;
pub const GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35;
pub const GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
pub const GL_MAX_NAME_STACK_DEPTH = 0x0D37;
pub const GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38;
pub const GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39;
pub const GL_MAX_VIEWPORT_DIMS = 0x0D3A;
pub const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B;

// Gets
pub const GL_ATTRIB_STACK_DEPTH = 0x0BB0;
pub const GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1;
pub const GL_COLOR_CLEAR_VALUE = 0x0C22;
pub const GL_COLOR_WRITEMASK = 0x0C23;
pub const GL_CURRENT_INDEX = 0x0B01;
pub const GL_CURRENT_COLOR = 0x0B00;
pub const GL_CURRENT_NORMAL = 0x0B02;
pub const GL_CURRENT_RASTER_COLOR = 0x0B04;
pub const GL_CURRENT_RASTER_DISTANCE = 0x0B09;
pub const GL_CURRENT_RASTER_INDEX = 0x0B05;
pub const GL_CURRENT_RASTER_POSITION = 0x0B07;
pub const GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06;
pub const GL_CURRENT_RASTER_POSITION_VALID = 0x0B08;
pub const GL_CURRENT_TEXTURE_COORDS = 0x0B03;
pub const GL_INDEX_CLEAR_VALUE = 0x0C20;
pub const GL_INDEX_MODE = 0x0C30;
pub const GL_INDEX_WRITEMASK = 0x0C21;
pub const GL_MODELVIEW_MATRIX = 0x0BA6;
pub const GL_MODELVIEW_STACK_DEPTH = 0x0BA3;
pub const GL_NAME_STACK_DEPTH = 0x0D70;
pub const GL_PROJECTION_MATRIX = 0x0BA7;
pub const GL_PROJECTION_STACK_DEPTH = 0x0BA4;
pub const GL_RENDER_MODE = 0x0C40;
pub const GL_RGBA_MODE = 0x0C31;
pub const GL_TEXTURE_MATRIX = 0x0BA8;
pub const GL_TEXTURE_STACK_DEPTH = 0x0BA5;
pub const GL_VIEWPORT = 0x0BA2;

// Evaluators
pub const GL_AUTO_NORMAL = 0x0D80;
pub const GL_MAP1_COLOR_4 = 0x0D90;
pub const GL_MAP1_INDEX = 0x0D91;
pub const GL_MAP1_NORMAL = 0x0D92;
pub const GL_MAP1_TEXTURE_COORD_1 = 0x0D93;
pub const GL_MAP1_TEXTURE_COORD_2 = 0x0D94;
pub const GL_MAP1_TEXTURE_COORD_3 = 0x0D95;
pub const GL_MAP1_TEXTURE_COORD_4 = 0x0D96;
pub const GL_MAP1_VERTEX_3 = 0x0D97;
pub const GL_MAP1_VERTEX_4 = 0x0D98;
pub const GL_MAP2_COLOR_4 = 0x0DB0;
pub const GL_MAP2_INDEX = 0x0DB1;
pub const GL_MAP2_NORMAL = 0x0DB2;
pub const GL_MAP2_TEXTURE_COORD_1 = 0x0DB3;
pub const GL_MAP2_TEXTURE_COORD_2 = 0x0DB4;
pub const GL_MAP2_TEXTURE_COORD_3 = 0x0DB5;
pub const GL_MAP2_TEXTURE_COORD_4 = 0x0DB6;
pub const GL_MAP2_VERTEX_3 = 0x0DB7;
pub const GL_MAP2_VERTEX_4 = 0x0DB8;
pub const GL_MAP1_GRID_DOMAIN = 0x0DD0;
pub const GL_MAP1_GRID_SEGMENTS = 0x0DD1;
pub const GL_MAP2_GRID_DOMAIN = 0x0DD2;
pub const GL_MAP2_GRID_SEGMENTS = 0x0DD3;
pub const GL_COEFF = 0x0A00;
pub const GL_ORDER = 0x0A01;
pub const GL_DOMAIN = 0x0A02;

// Hints
pub const GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50;
pub const GL_POINT_SMOOTH_HINT = 0x0C51;
pub const GL_LINE_SMOOTH_HINT = 0x0C52;
pub const GL_POLYGON_SMOOTH_HINT = 0x0C53;
pub const GL_FOG_HINT = 0x0C54;
pub const GL_DONT_CARE = 0x1100;
pub const GL_FASTEST = 0x1101;
pub const GL_NICEST = 0x1102;

// Scissor box
pub const GL_SCISSOR_BOX = 0x0C10;
pub const GL_SCISSOR_TEST = 0x0C11;

// Pixel Mode / Transfer
pub const GL_MAP_COLOR = 0x0D10;
pub const GL_MAP_STENCIL = 0x0D11;
pub const GL_INDEX_SHIFT = 0x0D12;
pub const GL_INDEX_OFFSET = 0x0D13;
pub const GL_RED_SCALE = 0x0D14;
pub const GL_RED_BIAS = 0x0D15;
pub const GL_GREEN_SCALE = 0x0D18;
pub const GL_GREEN_BIAS = 0x0D19;
pub const GL_BLUE_SCALE = 0x0D1A;
pub const GL_BLUE_BIAS = 0x0D1B;
pub const GL_ALPHA_SCALE = 0x0D1C;
pub const GL_ALPHA_BIAS = 0x0D1D;
pub const GL_DEPTH_SCALE = 0x0D1E;
pub const GL_DEPTH_BIAS = 0x0D1F;
pub const GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1;
pub const GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0;
pub const GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2;
pub const GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3;
pub const GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4;
pub const GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5;
pub const GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6;
pub const GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7;
pub const GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8;
pub const GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9;
pub const GL_PIXEL_MAP_S_TO_S = 0x0C71;
pub const GL_PIXEL_MAP_I_TO_I = 0x0C70;
pub const GL_PIXEL_MAP_I_TO_R = 0x0C72;
pub const GL_PIXEL_MAP_I_TO_G = 0x0C73;
pub const GL_PIXEL_MAP_I_TO_B = 0x0C74;
pub const GL_PIXEL_MAP_I_TO_A = 0x0C75;
pub const GL_PIXEL_MAP_R_TO_R = 0x0C76;
pub const GL_PIXEL_MAP_G_TO_G = 0x0C77;
pub const GL_PIXEL_MAP_B_TO_B = 0x0C78;
pub const GL_PIXEL_MAP_A_TO_A = 0x0C79;
pub const GL_PACK_ALIGNMENT = 0x0D05;
pub const GL_PACK_LSB_FIRST = 0x0D01;
pub const GL_PACK_ROW_LENGTH = 0x0D02;
pub const GL_PACK_SKIP_PIXELS = 0x0D04;
pub const GL_PACK_SKIP_ROWS = 0x0D03;
pub const GL_PACK_SWAP_BYTES = 0x0D00;
pub const GL_UNPACK_ALIGNMENT = 0x0CF5;
pub const GL_UNPACK_LSB_FIRST = 0x0CF1;
pub const GL_UNPACK_ROW_LENGTH = 0x0CF2;
pub const GL_UNPACK_SKIP_PIXELS = 0x0CF4;
pub const GL_UNPACK_SKIP_ROWS = 0x0CF3;
pub const GL_UNPACK_SWAP_BYTES = 0x0CF0;
pub const GL_ZOOM_X = 0x0D16;
pub const GL_ZOOM_Y = 0x0D17;

// Texture mapping
pub const GL_TEXTURE_ENV = 0x2300;
pub const GL_TEXTURE_ENV_MODE = 0x2200;
pub const GL_TEXTURE_1D = 0x0DE0;
pub const GL_TEXTURE_2D = 0x0DE1;
pub const GL_TEXTURE_WRAP_S = 0x2802;
pub const GL_TEXTURE_WRAP_T = 0x2803;
pub const GL_TEXTURE_MAG_FILTER = 0x2800;
pub const GL_TEXTURE_MIN_FILTER = 0x2801;
pub const GL_TEXTURE_ENV_COLOR = 0x2201;
pub const GL_TEXTURE_GEN_S = 0x0C60;
pub const GL_TEXTURE_GEN_T = 0x0C61;
pub const GL_TEXTURE_GEN_R = 0x0C62;
pub const GL_TEXTURE_GEN_Q = 0x0C63;
pub const GL_TEXTURE_GEN_MODE = 0x2500;
pub const GL_TEXTURE_BORDER_COLOR = 0x1004;
pub const GL_TEXTURE_WIDTH = 0x1000;
pub const GL_TEXTURE_HEIGHT = 0x1001;
pub const GL_TEXTURE_BORDER = 0x1005;
pub const GL_TEXTURE_COMPONENTS = 0x1003;
pub const GL_TEXTURE_RED_SIZE = 0x805C;
pub const GL_TEXTURE_GREEN_SIZE = 0x805D;
pub const GL_TEXTURE_BLUE_SIZE = 0x805E;
pub const GL_TEXTURE_ALPHA_SIZE = 0x805F;
pub const GL_TEXTURE_LUMINANCE_SIZE = 0x8060;
pub const GL_TEXTURE_INTENSITY_SIZE = 0x8061;
pub const GL_NEAREST_MIPMAP_NEAREST = 0x2700;
pub const GL_NEAREST_MIPMAP_LINEAR = 0x2702;
pub const GL_LINEAR_MIPMAP_NEAREST = 0x2701;
pub const GL_LINEAR_MIPMAP_LINEAR = 0x2703;
pub const GL_OBJECT_LINEAR = 0x2401;
pub const GL_OBJECT_PLANE = 0x2501;
pub const GL_EYE_LINEAR = 0x2400;
pub const GL_EYE_PLANE = 0x2502;
pub const GL_SPHERE_MAP = 0x2402;
pub const GL_DECAL = 0x2101;
pub const GL_MODULATE = 0x2100;
pub const GL_NEAREST = 0x2600;
pub const GL_REPEAT = 0x2901;
pub const GL_CLAMP = 0x2900;
pub const GL_S = 0x2000;
pub const GL_T = 0x2001;
pub const GL_R = 0x2002;
pub const GL_Q = 0x2003;

// Utility
pub const GL_VENDOR = 0x1F00;
pub const GL_RENDERER = 0x1F01;
pub const GL_VERSION = 0x1F02;
pub const GL_EXTENSIONS = 0x1F03;

// Errors
pub const GL_NO_ERROR = 0x0;
pub const GL_INVALID_ENUM = 0x0500;
pub const GL_INVALID_VALUE = 0x0501;
pub const GL_INVALID_OPERATION = 0x0502;
pub const GL_STACK_OVERFLOW = 0x0503;
pub const GL_STACK_UNDERFLOW = 0x0504;
pub const GL_OUT_OF_MEMORY = 0x0505;

// glPush/PopAttrib bits
pub const GL_CURRENT_BIT = 0x00000001;
pub const GL_POINT_BIT = 0x00000002;
pub const GL_LINE_BIT = 0x00000004;
pub const GL_POLYGON_BIT = 0x00000008;
pub const GL_POLYGON_STIPPLE_BIT = 0x00000010;
pub const GL_PIXEL_MODE_BIT = 0x00000020;
pub const GL_LIGHTING_BIT = 0x00000040;
pub const GL_FOG_BIT = 0x00000080;
pub const GL_DEPTH_BUFFER_BIT = 0x00000100;
pub const GL_ACCUM_BUFFER_BIT = 0x00000200;
pub const GL_STENCIL_BUFFER_BIT = 0x00000400;
pub const GL_VIEWPORT_BIT = 0x00000800;
pub const GL_TRANSFORM_BIT = 0x00001000;
pub const GL_ENABLE_BIT = 0x00002000;
pub const GL_COLOR_BUFFER_BIT = 0x00004000;
pub const GL_HINT_BIT = 0x00008000;
pub const GL_EVAL_BIT = 0x00010000;
pub const GL_LIST_BIT = 0x00020000;
pub const GL_TEXTURE_BIT = 0x00040000;
pub const GL_SCISSOR_BIT = 0x00080000;
pub const GL_ALL_ATTRIB_BITS = 0xFFFFFFFF;

// OpenGL 1.1
pub const GL_PROXY_TEXTURE_1D = 0x8063;
pub const GL_PROXY_TEXTURE_2D = 0x8064;
pub const GL_TEXTURE_PRIORITY = 0x8066;
pub const GL_TEXTURE_RESIDENT = 0x8067;
pub const GL_TEXTURE_BINDING_1D = 0x8068;
pub const GL_TEXTURE_BINDING_2D = 0x8069;
pub const GL_TEXTURE_INTERNAL_FORMAT = 0x1003;
pub const GL_ALPHA4 = 0x803B;
pub const GL_ALPHA8 = 0x803C;
pub const GL_ALPHA12 = 0x803D;
pub const GL_ALPHA16 = 0x803E;
pub const GL_LUMINANCE4 = 0x803F;
pub const GL_LUMINANCE8 = 0x8040;
pub const GL_LUMINANCE12 = 0x8041;
pub const GL_LUMINANCE16 = 0x8042;
pub const GL_LUMINANCE4_ALPHA4 = 0x8043;
pub const GL_LUMINANCE6_ALPHA2 = 0x8044;
pub const GL_LUMINANCE8_ALPHA8 = 0x8045;
pub const GL_LUMINANCE12_ALPHA4 = 0x8046;
pub const GL_LUMINANCE12_ALPHA12 = 0x8047;
pub const GL_LUMINANCE16_ALPHA16 = 0x8048;
pub const GL_INTENSITY = 0x8049;
pub const GL_INTENSITY4 = 0x804A;
pub const GL_INTENSITY8 = 0x804B;
pub const GL_INTENSITY12 = 0x804C;
pub const GL_INTENSITY16 = 0x804D;
pub const GL_R3_G3_B2 = 0x2A10;
pub const GL_RGB4 = 0x804F;
pub const GL_RGB5 = 0x8050;
pub const GL_RGB8 = 0x8051;
pub const GL_RGB10 = 0x8052;
pub const GL_RGB12 = 0x8053;
pub const GL_RGB16 = 0x8054;
pub const GL_RGBA2 = 0x8055;
pub const GL_RGBA4 = 0x8056;
pub const GL_RGB5_A1 = 0x8057;
pub const GL_RGBA8 = 0x8058;
pub const GL_RGB10_A2 = 0x8059;
pub const GL_RGBA12 = 0x805A;
pub const GL_RGBA16 = 0x805B;
pub const GL_CLIENT_PIXEL_STORE_BIT = 0x00000001;
pub const GL_CLIENT_VERTEX_ARRAY_BIT = 0x00000002;
pub const GL_ALL_CLIENT_ATTRIB_BITS = 0xFFFFFFFF;
pub const GL_CLIENT_ALL_ATTRIB_BITS = 0xFFFFFFFF;

glClearIndex: *const fn (c: f32) callconv(APIENTRY) void,
glClearColor: *const fn (red: GLclampf, green: GLclampf, blue: GLclampf, alpha: GLclampf) callconv(APIENTRY) void,
glClear: *const fn (mask: GLbitfield) callconv(APIENTRY) void,
glIndexMask: *const fn (mask: GLuint) callconv(APIENTRY) void,
glColorMask: *const fn (red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) callconv(APIENTRY) void,
glAlphaFunc: *const fn (func: GLenum, ref: GLclampf) callconv(APIENTRY) void,
glBlendFunc: *const fn (sfactor: GLenum, dfactor: GLenum) callconv(APIENTRY) void,
glLogicOp: *const fn (opcode: GLenum) callconv(APIENTRY) void,
glCullFace: *const fn (mode: GLenum) callconv(APIENTRY) void,
glFrontFace: *const fn (mode: GLenum) callconv(APIENTRY) void,
glPointSize: *const fn (size: f32) callconv(APIENTRY) void,
glLineWidth: *const fn (width: f32) callconv(APIENTRY) void,
glLineStipple: *const fn (factor: GLint, pattern: GLushort) callconv(APIENTRY) void,
glPolygonMode: *const fn (face: GLenum, mode: GLenum) callconv(APIENTRY) void,
glPolygonOffset: *const fn (factor: f32, units: f32) callconv(APIENTRY) void,
glPolygonStipple: *const fn (mask: [*c]const GLubyte) callconv(APIENTRY) void,
glGetPolygonStipple: *const fn (mask: [*c]GLubyte) callconv(APIENTRY) void,
glEdgeFlag: *const fn (flag: GLboolean) callconv(APIENTRY) void,
glEdgeFlagv: *const fn (flag: [*c]const GLboolean) callconv(APIENTRY) void,
glScissor: *const fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void,
glClipPlane: *const fn (plane: GLenum, equation: [*c]const f64) callconv(APIENTRY) void,
glGetClipPlane: *const fn (plane: GLenum, equation: [*c]f64) callconv(APIENTRY) void,
glDrawBuffer: *const fn (mode: GLenum) callconv(APIENTRY) void,
glReadBuffer: *const fn (mode: GLenum) callconv(APIENTRY) void,
glEnable: *const fn (cap: GLenum) callconv(APIENTRY) void,
glDisable: *const fn (cap: GLenum) callconv(APIENTRY) void,
glIsEnabled: *const fn (cap: GLenum) callconv(APIENTRY) GLboolean,
glEnableClientState: *const fn (cap: GLenum) callconv(APIENTRY) void,
glDisableClientState: *const fn (cap: GLenum) callconv(APIENTRY) void,
glGetBooleanv: *const fn (pname: GLenum, params: [*c]GLboolean) callconv(APIENTRY) void,
glGetDoublev: *const fn (pname: GLenum, params: [*c]f64) callconv(APIENTRY) void,
glGetFloatv: *const fn (pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetIntegerv: *const fn (pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glPushAttrib: *const fn (mask: GLbitfield) callconv(APIENTRY) void,
glPopAttrib: *const fn () callconv(APIENTRY) void,
glPushClientAttrib: *const fn (mask: GLbitfield) callconv(APIENTRY) void,
glPopClientAttrib: *const fn () callconv(APIENTRY) void,
glRenderMode: *const fn (mode: GLenum) callconv(APIENTRY) GLint,
glGetError: *const fn () callconv(APIENTRY) GLenum,
glGetString: *const fn (name: GLenum) callconv(APIENTRY) [*c]const GLubyte,
glFinish: *const fn () callconv(APIENTRY) void,
glFlush: *const fn () callconv(APIENTRY) void,
glHint: *const fn (target: GLenum, mode: GLenum) callconv(APIENTRY) void,
glClearDepth: *const fn (depth: GLclampd) callconv(APIENTRY) void,
glDepthFunc: *const fn (func: GLenum) callconv(APIENTRY) void,
glDepthMask: *const fn (flag: GLboolean) callconv(APIENTRY) void,
glDepthRange: *const fn (near_val: GLclampd, far_val: GLclampd) callconv(APIENTRY) void,
glClearAccum: *const fn (red: f32, green: f32, blue: f32, alpha: f32) callconv(APIENTRY) void,
glAccum: *const fn (op: GLenum, value: f32) callconv(APIENTRY) void,
glMatrixMode: *const fn (mode: GLenum) callconv(APIENTRY) void,
glOrtho: *const fn (left: f64, right: f64, bottom: f64, top: f64, near_val: f64, far_val: f64) callconv(APIENTRY) void,
glFrustum: *const fn (left: f64, right: f64, bottom: f64, top: f64, near_val: f64, far_val: f64) callconv(APIENTRY) void,
glViewport: *const fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void,
glPushMatrix: *const fn () callconv(APIENTRY) void,
glPopMatrix: *const fn () callconv(APIENTRY) void,
glLoadIdentity: *const fn () callconv(APIENTRY) void,
glLoadMatrixd: *const fn (m: [*c]const f64) callconv(APIENTRY) void,
glLoadMatrixf: *const fn (m: [*c]const f32) callconv(APIENTRY) void,
glMultMatrixd: *const fn (m: [*c]const f64) callconv(APIENTRY) void,
glMultMatrixf: *const fn (m: [*c]const f32) callconv(APIENTRY) void,
glRotated: *const fn (angle: f64, x: f64, y: f64, z: f64) callconv(APIENTRY) void,
glRotatef: *const fn (angle: f32, x: f32, y: f32, z: f32) callconv(APIENTRY) void,
glScaled: *const fn (x: f64, y: f64, z: f64) callconv(APIENTRY) void,
glScalef: *const fn (x: f32, y: f32, z: f32) callconv(APIENTRY) void,
glTranslated: *const fn (x: f64, y: f64, z: f64) callconv(APIENTRY) void,
glTranslatef: *const fn (x: f32, y: f32, z: f32) callconv(APIENTRY) void,
glIsList: *const fn (list: GLuint) callconv(APIENTRY) GLboolean,
glDeleteLists: *const fn (list: GLuint, range: GLsizei) callconv(APIENTRY) void,
glGenLists: *const fn (range: GLsizei) callconv(APIENTRY) GLuint,
glNewList: *const fn (list: GLuint, mode: GLenum) callconv(APIENTRY) void,
glEndList: *const fn () callconv(APIENTRY) void,
glCallList: *const fn (list: GLuint) callconv(APIENTRY) void,
glCallLists: *const fn (n: GLsizei, @"type": GLenum, lists: ?*const GLvoid) callconv(APIENTRY) void,
glListBase: *const fn (base: GLuint) callconv(APIENTRY) void,
glBegin: *const fn (mode: GLenum) callconv(APIENTRY) void,
glEnd: *const fn () callconv(APIENTRY) void,
glVertex2d: *const fn (x: f64, y: f64) callconv(APIENTRY) void,
glVertex2f: *const fn (x: f32, y: f32) callconv(APIENTRY) void,
glVertex2i: *const fn (x: GLint, y: GLint) callconv(APIENTRY) void,
glVertex2s: *const fn (x: GLshort, y: GLshort) callconv(APIENTRY) void,
glVertex3d: *const fn (x: f64, y: f64, z: f64) callconv(APIENTRY) void,
glVertex3f: *const fn (x: f32, y: f32, z: f32) callconv(APIENTRY) void,
glVertex3i: *const fn (x: GLint, y: GLint, z: GLint) callconv(APIENTRY) void,
glVertex3s: *const fn (x: GLshort, y: GLshort, z: GLshort) callconv(APIENTRY) void,
glVertex4d: *const fn (x: f64, y: f64, z: f64, w: f64) callconv(APIENTRY) void,
glVertex4f: *const fn (x: f32, y: f32, z: f32, w: f32) callconv(APIENTRY) void,
glVertex4i: *const fn (x: GLint, y: GLint, z: GLint, w: GLint) callconv(APIENTRY) void,
glVertex4s: *const fn (x: GLshort, y: GLshort, z: GLshort, w: GLshort) callconv(APIENTRY) void,
glVertex2dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glVertex2fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glVertex2iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glVertex2sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glVertex3dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glVertex3fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glVertex3iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glVertex3sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glVertex4dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glVertex4fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glVertex4iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glVertex4sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glNormal3b: *const fn (nx: GLbyte, ny: GLbyte, nz: GLbyte) callconv(APIENTRY) void,
glNormal3d: *const fn (nx: f64, ny: f64, nz: f64) callconv(APIENTRY) void,
glNormal3f: *const fn (nx: f32, ny: f32, nz: f32) callconv(APIENTRY) void,
glNormal3i: *const fn (nx: GLint, ny: GLint, nz: GLint) callconv(APIENTRY) void,
glNormal3s: *const fn (nx: GLshort, ny: GLshort, nz: GLshort) callconv(APIENTRY) void,
glNormal3bv: *const fn (v: [*c]const GLbyte) callconv(APIENTRY) void,
glNormal3dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glNormal3fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glNormal3iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glNormal3sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glIndexd: *const fn (c: f64) callconv(APIENTRY) void,
glIndexf: *const fn (c: f32) callconv(APIENTRY) void,
glIndexi: *const fn (c: GLint) callconv(APIENTRY) void,
glIndexs: *const fn (c: GLshort) callconv(APIENTRY) void,
glIndexub: *const fn (c: GLubyte) callconv(APIENTRY) void,
glIndexdv: *const fn (c: [*c]const f64) callconv(APIENTRY) void,
glIndexfv: *const fn (c: [*c]const f32) callconv(APIENTRY) void,
glIndexiv: *const fn (c: [*c]const GLint) callconv(APIENTRY) void,
glIndexsv: *const fn (c: [*c]const GLshort) callconv(APIENTRY) void,
glIndexubv: *const fn (c: [*c]const GLubyte) callconv(APIENTRY) void,
glColor3b: *const fn (red: GLbyte, green: GLbyte, blue: GLbyte) callconv(APIENTRY) void,
glColor3d: *const fn (red: f64, green: f64, blue: f64) callconv(APIENTRY) void,
glColor3f: *const fn (red: f32, green: f32, blue: f32) callconv(APIENTRY) void,
glColor3i: *const fn (red: GLint, green: GLint, blue: GLint) callconv(APIENTRY) void,
glColor3s: *const fn (red: GLshort, green: GLshort, blue: GLshort) callconv(APIENTRY) void,
glColor3ub: *const fn (red: GLubyte, green: GLubyte, blue: GLubyte) callconv(APIENTRY) void,
glColor3ui: *const fn (red: GLuint, green: GLuint, blue: GLuint) callconv(APIENTRY) void,
glColor3us: *const fn (red: GLushort, green: GLushort, blue: GLushort) callconv(APIENTRY) void,
glColor4b: *const fn (red: GLbyte, green: GLbyte, blue: GLbyte, alpha: GLbyte) callconv(APIENTRY) void,
glColor4d: *const fn (red: f64, green: f64, blue: f64, alpha: f64) callconv(APIENTRY) void,
glColor4f: *const fn (red: f32, green: f32, blue: f32, alpha: f32) callconv(APIENTRY) void,
glColor4i: *const fn (red: GLint, green: GLint, blue: GLint, alpha: GLint) callconv(APIENTRY) void,
glColor4s: *const fn (red: GLshort, green: GLshort, blue: GLshort, alpha: GLshort) callconv(APIENTRY) void,
glColor4ub: *const fn (red: GLubyte, green: GLubyte, blue: GLubyte, alpha: GLubyte) callconv(APIENTRY) void,
glColor4ui: *const fn (red: GLuint, green: GLuint, blue: GLuint, alpha: GLuint) callconv(APIENTRY) void,
glColor4us: *const fn (red: GLushort, green: GLushort, blue: GLushort, alpha: GLushort) callconv(APIENTRY) void,
glColor3bv: *const fn (v: [*c]const GLbyte) callconv(APIENTRY) void,
glColor3dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glColor3fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glColor3iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glColor3sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glColor3ubv: *const fn (v: [*c]const GLubyte) callconv(APIENTRY) void,
glColor3uiv: *const fn (v: [*c]const GLuint) callconv(APIENTRY) void,
glColor3usv: *const fn (v: [*c]const GLushort) callconv(APIENTRY) void,
glColor4bv: *const fn (v: [*c]const GLbyte) callconv(APIENTRY) void,
glColor4dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glColor4fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glColor4iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glColor4sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glColor4ubv: *const fn (v: [*c]const GLubyte) callconv(APIENTRY) void,
glColor4uiv: *const fn (v: [*c]const GLuint) callconv(APIENTRY) void,
glColor4usv: *const fn (v: [*c]const GLushort) callconv(APIENTRY) void,
glTexCoord1d: *const fn (s: f64) callconv(APIENTRY) void,
glTexCoord1f: *const fn (s: f32) callconv(APIENTRY) void,
glTexCoord1i: *const fn (s: GLint) callconv(APIENTRY) void,
glTexCoord1s: *const fn (s: GLshort) callconv(APIENTRY) void,
glTexCoord2d: *const fn (s: f64, t: f64) callconv(APIENTRY) void,
glTexCoord2f: *const fn (s: f32, t: f32) callconv(APIENTRY) void,
glTexCoord2i: *const fn (s: GLint, t: GLint) callconv(APIENTRY) void,
glTexCoord2s: *const fn (s: GLshort, t: GLshort) callconv(APIENTRY) void,
glTexCoord3d: *const fn (s: f64, t: f64, r: f64) callconv(APIENTRY) void,
glTexCoord3f: *const fn (s: f32, t: f32, r: f32) callconv(APIENTRY) void,
glTexCoord3i: *const fn (s: GLint, t: GLint, r: GLint) callconv(APIENTRY) void,
glTexCoord3s: *const fn (s: GLshort, t: GLshort, r: GLshort) callconv(APIENTRY) void,
glTexCoord4d: *const fn (s: f64, t: f64, r: f64, q: f64) callconv(APIENTRY) void,
glTexCoord4f: *const fn (s: f32, t: f32, r: f32, q: f32) callconv(APIENTRY) void,
glTexCoord4i: *const fn (s: GLint, t: GLint, r: GLint, q: GLint) callconv(APIENTRY) void,
glTexCoord4s: *const fn (s: GLshort, t: GLshort, r: GLshort, q: GLshort) callconv(APIENTRY) void,
glTexCoord1dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glTexCoord1fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glTexCoord1iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glTexCoord1sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glTexCoord2dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glTexCoord2fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glTexCoord2iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glTexCoord2sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glTexCoord3dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glTexCoord3fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glTexCoord3iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glTexCoord3sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glTexCoord4dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glTexCoord4fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glTexCoord4iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glTexCoord4sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glRasterPos2d: *const fn (x: f64, y: f64) callconv(APIENTRY) void,
glRasterPos2f: *const fn (x: f32, y: f32) callconv(APIENTRY) void,
glRasterPos2i: *const fn (x: GLint, y: GLint) callconv(APIENTRY) void,
glRasterPos2s: *const fn (x: GLshort, y: GLshort) callconv(APIENTRY) void,
glRasterPos3d: *const fn (x: f64, y: f64, z: f64) callconv(APIENTRY) void,
glRasterPos3f: *const fn (x: f32, y: f32, z: f32) callconv(APIENTRY) void,
glRasterPos3i: *const fn (x: GLint, y: GLint, z: GLint) callconv(APIENTRY) void,
glRasterPos3s: *const fn (x: GLshort, y: GLshort, z: GLshort) callconv(APIENTRY) void,
glRasterPos4d: *const fn (x: f64, y: f64, z: f64, w: f64) callconv(APIENTRY) void,
glRasterPos4f: *const fn (x: f32, y: f32, z: f32, w: f32) callconv(APIENTRY) void,
glRasterPos4i: *const fn (x: GLint, y: GLint, z: GLint, w: GLint) callconv(APIENTRY) void,
glRasterPos4s: *const fn (x: GLshort, y: GLshort, z: GLshort, w: GLshort) callconv(APIENTRY) void,
glRasterPos2dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glRasterPos2fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glRasterPos2iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glRasterPos2sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glRasterPos3dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glRasterPos3fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glRasterPos3iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glRasterPos3sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glRasterPos4dv: *const fn (v: [*c]const f64) callconv(APIENTRY) void,
glRasterPos4fv: *const fn (v: [*c]const f32) callconv(APIENTRY) void,
glRasterPos4iv: *const fn (v: [*c]const GLint) callconv(APIENTRY) void,
glRasterPos4sv: *const fn (v: [*c]const GLshort) callconv(APIENTRY) void,
glRectd: *const fn (x1: f64, y1: f64, x2: f64, y2: f64) callconv(APIENTRY) void,
glRectf: *const fn (x1: f32, y1: f32, x2: f32, y2: f32) callconv(APIENTRY) void,
glRecti: *const fn (x1: GLint, y1: GLint, x2: GLint, y2: GLint) callconv(APIENTRY) void,
glRects: *const fn (x1: GLshort, y1: GLshort, x2: GLshort, y2: GLshort) callconv(APIENTRY) void,
glRectdv: *const fn (v1: [*c]const f64, v2: [*c]const f64) callconv(APIENTRY) void,
glRectfv: *const fn (v1: [*c]const f32, v2: [*c]const f32) callconv(APIENTRY) void,
glRectiv: *const fn (v1: [*c]const GLint, v2: [*c]const GLint) callconv(APIENTRY) void,
glRectsv: *const fn (v1: [*c]const GLshort, v2: [*c]const GLshort) callconv(APIENTRY) void,
glVertexPointer: *const fn (size: GLint, @"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void,
glNormalPointer: *const fn (@"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void,
glColorPointer: *const fn (size: GLint, @"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void,
glIndexPointer: *const fn (@"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void,
glTexCoordPointer: *const fn (size: GLint, @"type": GLenum, stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void,
glEdgeFlagPointer: *const fn (stride: GLsizei, ptr: ?*const GLvoid) callconv(APIENTRY) void,
glGetPointerv: *const fn (pname: GLenum, params: [*c]?*GLvoid) callconv(APIENTRY) void,
glArrayElement: *const fn (i: GLint) callconv(APIENTRY) void,
glDrawArrays: *const fn (mode: GLenum, first: GLint, count: GLsizei) callconv(APIENTRY) void,
glDrawElements: *const fn (mode: GLenum, count: GLsizei, @"type": GLenum, indices: ?*const GLvoid) callconv(APIENTRY) void,
glInterleavedArrays: *const fn (format: GLenum, stride: GLsizei, pointer: ?*const GLvoid) callconv(APIENTRY) void,
glShadeModel: *const fn (mode: GLenum) callconv(APIENTRY) void,
glLightf: *const fn (light: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void,
glLighti: *const fn (light: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void,
glLightfv: *const fn (light: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void,
glLightiv: *const fn (light: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void,
glGetLightfv: *const fn (light: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetLightiv: *const fn (light: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glLightModelf: *const fn (pname: GLenum, param: f32) callconv(APIENTRY) void,
glLightModeli: *const fn (pname: GLenum, param: GLint) callconv(APIENTRY) void,
glLightModelfv: *const fn (pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void,
glLightModeliv: *const fn (pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void,
glMaterialf: *const fn (face: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void,
glMateriali: *const fn (face: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void,
glMaterialfv: *const fn (face: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void,
glMaterialiv: *const fn (face: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void,
glGetMaterialfv: *const fn (face: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetMaterialiv: *const fn (face: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glColorMaterial: *const fn (face: GLenum, mode: GLenum) callconv(APIENTRY) void,
glPixelZoom: *const fn (xfactor: f32, yfactor: f32) callconv(APIENTRY) void,
glPixelStoref: *const fn (pname: GLenum, param: f32) callconv(APIENTRY) void,
glPixelStorei: *const fn (pname: GLenum, param: GLint) callconv(APIENTRY) void,
glPixelTransferf: *const fn (pname: GLenum, param: f32) callconv(APIENTRY) void,
glPixelTransferi: *const fn (pname: GLenum, param: GLint) callconv(APIENTRY) void,
glPixelMapfv: *const fn (map: GLenum, mapsize: GLsizei, values: [*c]const f32) callconv(APIENTRY) void,
glPixelMapuiv: *const fn (map: GLenum, mapsize: GLsizei, values: [*c]const GLuint) callconv(APIENTRY) void,
glPixelMapusv: *const fn (map: GLenum, mapsize: GLsizei, values: [*c]const GLushort) callconv(APIENTRY) void,
glGetPixelMapfv: *const fn (map: GLenum, values: [*c]f32) callconv(APIENTRY) void,
glGetPixelMapuiv: *const fn (map: GLenum, values: [*c]GLuint) callconv(APIENTRY) void,
glGetPixelMapusv: *const fn (map: GLenum, values: [*c]GLushort) callconv(APIENTRY) void,
glBitmap: *const fn (width: GLsizei, height: GLsizei, xorig: f32, yorig: f32, xmove: f32, ymove: f32, bitmap: [*c]const GLubyte) callconv(APIENTRY) void,
glReadPixels: *const fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*GLvoid) callconv(APIENTRY) void,
glDrawPixels: *const fn (width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void,
glCopyPixels: *const fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, @"type": GLenum) callconv(APIENTRY) void,
glStencilFunc: *const fn (func: GLenum, ref: GLint, mask: GLuint) callconv(APIENTRY) void,
glStencilMask: *const fn (mask: GLuint) callconv(APIENTRY) void,
glStencilOp: *const fn (fail: GLenum, zfail: GLenum, zpass: GLenum) callconv(APIENTRY) void,
glClearStencil: *const fn (s: GLint) callconv(APIENTRY) void,
glTexGend: *const fn (coord: GLenum, pname: GLenum, param: f64) callconv(APIENTRY) void,
glTexGenf: *const fn (coord: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void,
glTexGeni: *const fn (coord: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void,
glTexGendv: *const fn (coord: GLenum, pname: GLenum, params: [*c]const f64) callconv(APIENTRY) void,
glTexGenfv: *const fn (coord: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void,
glTexGeniv: *const fn (coord: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void,
glGetTexGendv: *const fn (coord: GLenum, pname: GLenum, params: [*c]f64) callconv(APIENTRY) void,
glGetTexGenfv: *const fn (coord: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetTexGeniv: *const fn (coord: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glTexEnvf: *const fn (target: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void,
glTexEnvi: *const fn (target: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void,
glTexEnvfv: *const fn (target: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void,
glTexEnviv: *const fn (target: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void,
glGetTexEnvfv: *const fn (target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetTexEnviv: *const fn (target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glTexParameterf: *const fn (target: GLenum, pname: GLenum, param: f32) callconv(APIENTRY) void,
glTexParameteri: *const fn (target: GLenum, pname: GLenum, param: GLint) callconv(APIENTRY) void,
glTexParameterfv: *const fn (target: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void,
glTexParameteriv: *const fn (target: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void,
glGetTexParameterfv: *const fn (target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetTexParameteriv: *const fn (target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glGetTexLevelParameterfv: *const fn (target: GLenum, level: GLint, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetTexLevelParameteriv: *const fn (target: GLenum, level: GLint, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glTexImage1D: *const fn (target: GLenum, level: GLint, internalFormat: GLint, width: GLsizei, border: GLint, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void,
glTexImage2D: *const fn (target: GLenum, level: GLint, internalFormat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void,
glGetTexImage: *const fn (target: GLenum, level: GLint, format: GLenum, @"type": GLenum, pixels: ?*GLvoid) callconv(APIENTRY) void,
glGenTextures: *const fn (n: GLsizei, textures: [*c]GLuint) callconv(APIENTRY) void,
glDeleteTextures: *const fn (n: GLsizei, textures: [*c]const GLuint) callconv(APIENTRY) void,
glBindTexture: *const fn (target: GLenum, texture: GLuint) callconv(APIENTRY) void,
glPrioritizeTextures: *const fn (n: GLsizei, textures: [*c]const GLuint, priorities: [*c]const GLclampf) callconv(APIENTRY) void,
glAreTexturesResident: *const fn (n: GLsizei, textures: [*c]const GLuint, residences: [*c]GLboolean) callconv(APIENTRY) GLboolean,
glIsTexture: *const fn (texture: GLuint) callconv(APIENTRY) GLboolean,
glTexSubImage1D: *const fn (target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void,
glTexSubImage2D: *const fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void,
glCopyTexImage1D: *const fn (target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, border: GLint) callconv(APIENTRY) void,
glCopyTexImage2D: *const fn (target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) callconv(APIENTRY) void,
glCopyTexSubImage1D: *const fn (target: GLenum, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) callconv(APIENTRY) void,
glCopyTexSubImage2D: *const fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void,
glMap1d: *const fn (target: GLenum, @"u1": f64, @"u2": f64, stride: GLint, order: GLint, points: [*c]const f64) callconv(APIENTRY) void,
glMap1f: *const fn (target: GLenum, @"u1": f32, @"u2": f32, stride: GLint, order: GLint, points: [*c]const f32) callconv(APIENTRY) void,
glMap2d: *const fn (target: GLenum, @"u1": f64, @"u2": f64, ustride: GLint, uorder: GLint, v1: f64, v2: f64, vstride: GLint, vorder: GLint, points: [*c]const f64) callconv(APIENTRY) void,
glMap2f: *const fn (target: GLenum, @"u1": f32, @"u2": f32, ustride: GLint, uorder: GLint, v1: f32, v2: f32, vstride: GLint, vorder: GLint, points: [*c]const f32) callconv(APIENTRY) void,
glGetMapdv: *const fn (target: GLenum, query: GLenum, v: [*c]f64) callconv(APIENTRY) void,
glGetMapfv: *const fn (target: GLenum, query: GLenum, v: [*c]f32) callconv(APIENTRY) void,
glGetMapiv: *const fn (target: GLenum, query: GLenum, v: [*c]GLint) callconv(APIENTRY) void,
glEvalCoord1d: *const fn (u: f64) callconv(APIENTRY) void,
glEvalCoord1f: *const fn (u: f32) callconv(APIENTRY) void,
glEvalCoord1dv: *const fn (u: [*c]const f64) callconv(APIENTRY) void,
glEvalCoord1fv: *const fn (u: [*c]const f32) callconv(APIENTRY) void,
glEvalCoord2d: *const fn (u: f64, v: f64) callconv(APIENTRY) void,
glEvalCoord2f: *const fn (u: f32, v: f32) callconv(APIENTRY) void,
glEvalCoord2dv: *const fn (u: [*c]const f64) callconv(APIENTRY) void,
glEvalCoord2fv: *const fn (u: [*c]const f32) callconv(APIENTRY) void,
glMapGrid1d: *const fn (un: GLint, @"u1": f64, @"u2": f64) callconv(APIENTRY) void,
glMapGrid1f: *const fn (un: GLint, @"u1": f32, @"u2": f32) callconv(APIENTRY) void,
glMapGrid2d: *const fn (un: GLint, @"u1": f64, @"u2": f64, vn: GLint, v1: f64, v2: f64) callconv(APIENTRY) void,
glMapGrid2f: *const fn (un: GLint, @"u1": f32, @"u2": f32, vn: GLint, v1: f32, v2: f32) callconv(APIENTRY) void,
glEvalPoint1: *const fn (i: GLint) callconv(APIENTRY) void,
glEvalPoint2: *const fn (i: GLint, j: GLint) callconv(APIENTRY) void,
glEvalMesh1: *const fn (mode: GLenum, @"i1": GLint, @"i2": GLint) callconv(APIENTRY) void,
glEvalMesh2: *const fn (mode: GLenum, @"i1": GLint, @"i2": GLint, j1: GLint, j2: GLint) callconv(APIENTRY) void,
glFogf: *const fn (pname: GLenum, param: f32) callconv(APIENTRY) void,
glFogi: *const fn (pname: GLenum, param: GLint) callconv(APIENTRY) void,
glFogfv: *const fn (pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void,
glFogiv: *const fn (pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void,
glFeedbackBuffer: *const fn (size: GLsizei, @"type": GLenum, buffer: [*c]f32) callconv(APIENTRY) void,
glPassThrough: *const fn (token: f32) callconv(APIENTRY) void,
glSelectBuffer: *const fn (size: GLsizei, buffer: [*c]GLuint) callconv(APIENTRY) void,
glInitNames: *const fn () callconv(APIENTRY) void,
glLoadName: *const fn (name: GLuint) callconv(APIENTRY) void,
glPushName: *const fn (name: GLuint) callconv(APIENTRY) void,
glPopName: *const fn () callconv(APIENTRY) void,
glDrawRangeElements: *const fn (mode: GLenum, start: GLuint, end: GLuint, count: GLsizei, @"type": GLenum, indices: ?*const GLvoid) callconv(APIENTRY) void,
glTexImage3D: *const fn (target: GLenum, level: GLint, internalFormat: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void,
glTexSubImage3D: *const fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, @"type": GLenum, pixels: ?*const GLvoid) callconv(APIENTRY) void,
glCopyTexSubImage3D: *const fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void,
glColorTable: *const fn (target: GLenum, internalformat: GLenum, width: GLsizei, format: GLenum, @"type": GLenum, table: ?*const GLvoid) callconv(APIENTRY) void,
glColorSubTable: *const fn (target: GLenum, start: GLsizei, count: GLsizei, format: GLenum, @"type": GLenum, data: ?*const GLvoid) callconv(APIENTRY) void,
glColorTableParameteriv: *const fn (target: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void,
glColorTableParameterfv: *const fn (target: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void,
glCopyColorSubTable: *const fn (target: GLenum, start: GLsizei, x: GLint, y: GLint, width: GLsizei) callconv(APIENTRY) void,
glCopyColorTable: *const fn (target: GLenum, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei) callconv(APIENTRY) void,
glGetColorTable: *const fn (target: GLenum, format: GLenum, @"type": GLenum, table: ?*GLvoid) callconv(APIENTRY) void,
glGetColorTableParameterfv: *const fn (target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetColorTableParameteriv: *const fn (target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glBlendEquation: *const fn (mode: GLenum) callconv(APIENTRY) void,
glBlendColor: *const fn (red: GLclampf, green: GLclampf, blue: GLclampf, alpha: GLclampf) callconv(APIENTRY) void,
glHistogram: *const fn (target: GLenum, width: GLsizei, internalformat: GLenum, sink: GLboolean) callconv(APIENTRY) void,
glResetHistogram: *const fn (target: GLenum) callconv(APIENTRY) void,
glGetHistogram: *const fn (target: GLenum, reset: GLboolean, format: GLenum, @"type": GLenum, values: ?*GLvoid) callconv(APIENTRY) void,
glGetHistogramParameterfv: *const fn (target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetHistogramParameteriv: *const fn (target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glMinmax: *const fn (target: GLenum, internalformat: GLenum, sink: GLboolean) callconv(APIENTRY) void,
glResetMinmax: *const fn (target: GLenum) callconv(APIENTRY) void,
glGetMinmax: *const fn (target: GLenum, reset: GLboolean, format: GLenum, types: GLenum, values: ?*GLvoid) callconv(APIENTRY) void,
glGetMinmaxParameterfv: *const fn (target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetMinmaxParameteriv: *const fn (target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glConvolutionFilter1D: *const fn (target: GLenum, internalformat: GLenum, width: GLsizei, format: GLenum, @"type": GLenum, image: ?*const GLvoid) callconv(APIENTRY) void,
glConvolutionFilter2D: *const fn (target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, image: ?*const GLvoid) callconv(APIENTRY) void,
glConvolutionParameterf: *const fn (target: GLenum, pname: GLenum, params: f32) callconv(APIENTRY) void,
glConvolutionParameterfv: *const fn (target: GLenum, pname: GLenum, params: [*c]const f32) callconv(APIENTRY) void,
glConvolutionParameteri: *const fn (target: GLenum, pname: GLenum, params: GLint) callconv(APIENTRY) void,
glConvolutionParameteriv: *const fn (target: GLenum, pname: GLenum, params: [*c]const GLint) callconv(APIENTRY) void,
glCopyConvolutionFilter1D: *const fn (target: GLenum, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei) callconv(APIENTRY) void,
glCopyConvolutionFilter2D: *const fn (target: GLenum, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei) callconv(APIENTRY) void,
glGetConvolutionFilter: *const fn (target: GLenum, format: GLenum, @"type": GLenum, image: ?*GLvoid) callconv(APIENTRY) void,
glGetConvolutionParameterfv: *const fn (target: GLenum, pname: GLenum, params: [*c]f32) callconv(APIENTRY) void,
glGetConvolutionParameteriv: *const fn (target: GLenum, pname: GLenum, params: [*c]GLint) callconv(APIENTRY) void,
glSeparableFilter2D: *const fn (target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei, format: GLenum, @"type": GLenum, row: ?*const GLvoid, column: ?*const GLvoid) callconv(APIENTRY) void,
glGetSeparableFilter: *const fn (target: GLenum, format: GLenum, @"type": GLenum, row: ?*GLvoid, column: ?*GLvoid, span: ?*GLvoid) callconv(APIENTRY) void,
glActiveTexture: *const fn (texture: GLenum) callconv(APIENTRY) void,
glClientActiveTexture: *const fn (texture: GLenum) callconv(APIENTRY) void,
glCompressedTexImage1D: *const fn (target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, border: GLint, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void,
glCompressedTexImage2D: *const fn (target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void,
glCompressedTexImage3D: *const fn (target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void,
glCompressedTexSubImage1D: *const fn (target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void,
glCompressedTexSubImage2D: *const fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void,
glCompressedTexSubImage3D: *const fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const GLvoid) callconv(APIENTRY) void,
glGetCompressedTexImage: *const fn (target: GLenum, lod: GLint, img: ?*GLvoid) callconv(APIENTRY) void,
glMultiTexCoord1d: *const fn (target: GLenum, s: f64) callconv(APIENTRY) void,
glMultiTexCoord1dv: *const fn (target: GLenum, v: [*c]const f64) callconv(APIENTRY) void,
glMultiTexCoord1f: *const fn (target: GLenum, s: f32) callconv(APIENTRY) void,
glMultiTexCoord1fv: *const fn (target: GLenum, v: [*c]const f32) callconv(APIENTRY) void,
glMultiTexCoord1i: *const fn (target: GLenum, s: GLint) callconv(APIENTRY) void,
glMultiTexCoord1iv: *const fn (target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void,
glMultiTexCoord1s: *const fn (target: GLenum, s: GLshort) callconv(APIENTRY) void,
glMultiTexCoord1sv: *const fn (target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void,
glMultiTexCoord2d: *const fn (target: GLenum, s: f64, t: f64) callconv(APIENTRY) void,
glMultiTexCoord2dv: *const fn (target: GLenum, v: [*c]const f64) callconv(APIENTRY) void,
glMultiTexCoord2f: *const fn (target: GLenum, s: f32, t: f32) callconv(APIENTRY) void,
glMultiTexCoord2fv: *const fn (target: GLenum, v: [*c]const f32) callconv(APIENTRY) void,
glMultiTexCoord2i: *const fn (target: GLenum, s: GLint, t: GLint) callconv(APIENTRY) void,
glMultiTexCoord2iv: *const fn (target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void,
glMultiTexCoord2s: *const fn (target: GLenum, s: GLshort, t: GLshort) callconv(APIENTRY) void,
glMultiTexCoord2sv: *const fn (target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void,
glMultiTexCoord3d: *const fn (target: GLenum, s: f64, t: f64, r: f64) callconv(APIENTRY) void,
glMultiTexCoord3dv: *const fn (target: GLenum, v: [*c]const f64) callconv(APIENTRY) void,
glMultiTexCoord3f: *const fn (target: GLenum, s: f32, t: f32, r: f32) callconv(APIENTRY) void,
glMultiTexCoord3fv: *const fn (target: GLenum, v: [*c]const f32) callconv(APIENTRY) void,
glMultiTexCoord3i: *const fn (target: GLenum, s: GLint, t: GLint, r: GLint) callconv(APIENTRY) void,
glMultiTexCoord3iv: *const fn (target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void,
glMultiTexCoord3s: *const fn (target: GLenum, s: GLshort, t: GLshort, r: GLshort) callconv(APIENTRY) void,
glMultiTexCoord3sv: *const fn (target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void,
glMultiTexCoord4d: *const fn (target: GLenum, s: f64, t: f64, r: f64, q: f64) callconv(APIENTRY) void,
glMultiTexCoord4dv: *const fn (target: GLenum, v: [*c]const f64) callconv(APIENTRY) void,
glMultiTexCoord4f: *const fn (target: GLenum, s: f32, t: f32, r: f32, q: f32) callconv(APIENTRY) void,
glMultiTexCoord4fv: *const fn (target: GLenum, v: [*c]const f32) callconv(APIENTRY) void,
glMultiTexCoord4i: *const fn (target: GLenum, s: GLint, t: GLint, r: GLint, q: GLint) callconv(APIENTRY) void,
glMultiTexCoord4iv: *const fn (target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void,
glMultiTexCoord4s: *const fn (target: GLenum, s: GLshort, t: GLshort, r: GLshort, q: GLshort) callconv(APIENTRY) void,
glMultiTexCoord4sv: *const fn (target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void,
glLoadTransposeMatrixd: *const fn (m: [*c]const f64) callconv(APIENTRY) void,
glLoadTransposeMatrixf: *const fn (m: [*c]const f32) callconv(APIENTRY) void,
glMultTransposeMatrixd: *const fn (m: [*c]const f64) callconv(APIENTRY) void,
glMultTransposeMatrixf: *const fn (m: [*c]const f32) callconv(APIENTRY) void,
glSampleCoverage: *const fn (value: GLclampf, invert: GLboolean) callconv(APIENTRY) void,
glActiveTextureARB: *const fn (texture: GLenum) callconv(APIENTRY) void,
glClientActiveTextureARB: *const fn (texture: GLenum) callconv(APIENTRY) void,
glMultiTexCoord1dARB: *const fn (target: GLenum, s: f64) callconv(APIENTRY) void,
glMultiTexCoord1dvARB: *const fn (target: GLenum, v: [*c]const f64) callconv(APIENTRY) void,
glMultiTexCoord1fARB: *const fn (target: GLenum, s: f32) callconv(APIENTRY) void,
glMultiTexCoord1fvARB: *const fn (target: GLenum, v: [*c]const f32) callconv(APIENTRY) void,
glMultiTexCoord1iARB: *const fn (target: GLenum, s: GLint) callconv(APIENTRY) void,
glMultiTexCoord1ivARB: *const fn (target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void,
glMultiTexCoord1sARB: *const fn (target: GLenum, s: GLshort) callconv(APIENTRY) void,
glMultiTexCoord1svARB: *const fn (target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void,
glMultiTexCoord2dARB: *const fn (target: GLenum, s: f64, t: f64) callconv(APIENTRY) void,
glMultiTexCoord2dvARB: *const fn (target: GLenum, v: [*c]const f64) callconv(APIENTRY) void,
glMultiTexCoord2fARB: *const fn (target: GLenum, s: f32, t: f32) callconv(APIENTRY) void,
glMultiTexCoord2fvARB: *const fn (target: GLenum, v: [*c]const f32) callconv(APIENTRY) void,
glMultiTexCoord2iARB: *const fn (target: GLenum, s: GLint, t: GLint) callconv(APIENTRY) void,
glMultiTexCoord2ivARB: *const fn (target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void,
glMultiTexCoord2sARB: *const fn (target: GLenum, s: GLshort, t: GLshort) callconv(APIENTRY) void,
glMultiTexCoord2svARB: *const fn (target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void,
glMultiTexCoord3dARB: *const fn (target: GLenum, s: f64, t: f64, r: f64) callconv(APIENTRY) void,
glMultiTexCoord3dvARB: *const fn (target: GLenum, v: [*c]const f64) callconv(APIENTRY) void,
glMultiTexCoord3fARB: *const fn (target: GLenum, s: f32, t: f32, r: f32) callconv(APIENTRY) void,
glMultiTexCoord3fvARB: *const fn (target: GLenum, v: [*c]const f32) callconv(APIENTRY) void,
glMultiTexCoord3iARB: *const fn (target: GLenum, s: GLint, t: GLint, r: GLint) callconv(APIENTRY) void,
glMultiTexCoord3ivARB: *const fn (target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void,
glMultiTexCoord3sARB: *const fn (target: GLenum, s: GLshort, t: GLshort, r: GLshort) callconv(APIENTRY) void,
glMultiTexCoord3svARB: *const fn (target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void,
glMultiTexCoord4dARB: *const fn (target: GLenum, s: f64, t: f64, r: f64, q: f64) callconv(APIENTRY) void,
glMultiTexCoord4dvARB: *const fn (target: GLenum, v: [*c]const f64) callconv(APIENTRY) void,
glMultiTexCoord4fARB: *const fn (target: GLenum, s: f32, t: f32, r: f32, q: f32) callconv(APIENTRY) void,
glMultiTexCoord4fvARB: *const fn (target: GLenum, v: [*c]const f32) callconv(APIENTRY) void,
glMultiTexCoord4iARB: *const fn (target: GLenum, s: GLint, t: GLint, r: GLint, q: GLint) callconv(APIENTRY) void,
glMultiTexCoord4ivARB: *const fn (target: GLenum, v: [*c]const GLint) callconv(APIENTRY) void,
glMultiTexCoord4sARB: *const fn (target: GLenum, s: GLshort, t: GLshort, r: GLshort, q: GLshort) callconv(APIENTRY) void,
glMultiTexCoord4svARB: *const fn (target: GLenum, v: [*c]const GLshort) callconv(APIENTRY) void,
glBlendEquationSeparateATI: *const fn (modeRGB: GLenum, modeA: GLenum) callconv(APIENTRY) void,
