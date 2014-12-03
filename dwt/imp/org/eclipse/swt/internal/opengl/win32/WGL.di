// D import file generated from 'org\eclipse\swt\internal\opengl\win32\WGL.d'
module org.eclipse.swt.internal.opengl.win32.WGL;
import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.Platform;
private import org.eclipse.swt.internal.win32.WINAPI;

static import org.eclipse.swt.internal.opengl.win32.native;
alias org.eclipse.swt.internal.opengl.win32.native OPENGL_NATIVE;
public class WGL : Platform
{
	public 
	{
		enum : int
		{
			WGL_FONT_LINES = 0,
			WGL_FONT_POLYGONS = 1,
			LPD_DOUBLEBUFFER = 1,
			LPD_STEREO = 2,
			LPD_SUPPORT_GDI = 16,
			LPD_SUPPORT_OPENGL = 32,
			LPD_SHARE_DEPTH = 64,
			LPD_SHARE_STENCIL = 128,
			LPD_SHARE_ACCUM = 256,
			LPD_SWAP_EXCHANGE = 512,
			LPD_SWAP_COPY = 1024,
			LPD_TRANSPARENT = 4096,
			LPD_TYPE_RGBA = 0,
			LPD_TYPE_COLORINDEX = 1,
			WGL_SWAP_MAIN_PLANE = 1,
			WGL_SWAP_OVERLAY1 = 2,
			WGL_SWAP_OVERLAY2 = 4,
			WGL_SWAP_OVERLAY3 = 8,
			WGL_SWAP_OVERLAY4 = 16,
			WGL_SWAP_OVERLAY5 = 32,
			WGL_SWAP_OVERLAY6 = 64,
			WGL_SWAP_OVERLAY7 = 128,
			WGL_SWAP_OVERLAY8 = 256,
			WGL_SWAP_OVERLAY9 = 512,
			WGL_SWAP_OVERLAY10 = 1024,
			WGL_SWAP_OVERLAY11 = 2048,
			WGL_SWAP_OVERLAY12 = 4096,
			WGL_SWAP_OVERLAY13 = 8192,
			WGL_SWAP_OVERLAY14 = 16384,
			WGL_SWAP_OVERLAY15 = 32768,
			WGL_SWAP_UNDERLAY1 = 65536,
			WGL_SWAP_UNDERLAY2 = 131072,
			WGL_SWAP_UNDERLAY3 = 262144,
			WGL_SWAP_UNDERLAY4 = 524288,
			WGL_SWAP_UNDERLAY5 = 1048576,
			WGL_SWAP_UNDERLAY6 = 2097152,
			WGL_SWAP_UNDERLAY7 = 4194304,
			WGL_SWAP_UNDERLAY8 = 8388608,
			WGL_SWAP_UNDERLAY9 = 16777216,
			WGL_SWAP_UNDERLAY10 = 33554432,
			WGL_SWAP_UNDERLAY11 = 67108864,
			WGL_SWAP_UNDERLAY12 = 134217728,
			WGL_SWAP_UNDERLAY13 = 268435456,
			WGL_SWAP_UNDERLAY14 = 536870912,
			WGL_SWAP_UNDERLAY15 = 1073741824,
			PFD_TYPE_RGBA = 0,
			PFD_TYPE_COLORINDEX = 1,
			PFD_MAIN_PLANE = 0,
			PFD_OVERLAY_PLANE = 1,
			PFD_UNDERLAY_PLANE = -1,
			PFD_DOUBLEBUFFER = 1,
			PFD_STEREO = 2,
			PFD_DRAW_TO_WINDOW = 4,
			PFD_DRAW_TO_BITMAP = 8,
			PFD_SUPPORT_GDI = 16,
			PFD_SUPPORT_OPENGL = 32,
			PFD_GENERIC_FORMAT = 64,
			PFD_NEED_PALETTE = 128,
			PFD_NEED_SYSTEM_PALETTE = 256,
			PFD_SWAP_EXCHANGE = 512,
			PFD_SWAP_COPY = 1024,
			PFD_SWAP_LAYER_BUFFERS = 2048,
			PFD_GENERIC_ACCELERATED = 4096,
			PFD_SUPPORT_DIRECTDRAW = 8192,
			PFD_DEPTH_DONTCARE = 536870912,
			PFD_DOUBLEBUFFER_DONTCARE = 1073741824,
			PFD_STEREO_DONTCARE = 2147483648u,
		}
		alias OPENGL_NATIVE.ChoosePixelFormat ChoosePixelFormat;
		alias OPENGL_NATIVE.DescribePixelFormat DescribePixelFormat;
		alias OPENGL_NATIVE.GetPixelFormat GetPixelFormat;
		alias OPENGL_NATIVE.SetPixelFormat SetPixelFormat;
		alias OPENGL_NATIVE.SwapBuffers SwapBuffers;
		alias OPENGL_NATIVE.wglCopyContext wglCopyContext;
		alias OPENGL_NATIVE.wglCreateContext wglCreateContext;
		alias OPENGL_NATIVE.wglCreateLayerContext wglCreateLayerContext;
		alias OPENGL_NATIVE.wglDeleteContext wglDeleteContext;
		alias OPENGL_NATIVE.wglGetCurrentContext wglGetCurrentContext;
		alias OPENGL_NATIVE.wglGetCurrentDC wglGetCurrentDC;
		alias OPENGL_NATIVE.wglGetProcAddress wglGetProcAddress;
		alias OPENGL_NATIVE.wglMakeCurrent wglMakeCurrent;
		alias OPENGL_NATIVE.wglShareLists wglShareLists;
		alias OPENGL_NATIVE.wglDescribeLayerPlane wglDescribeLayerPlane;
		alias OPENGL_NATIVE.wglSetLayerPaletteEntries wglSetLayerPaletteEntries;
		alias OPENGL_NATIVE.wglGetLayerPaletteEntries wglGetLayerPaletteEntries;
		alias OPENGL_NATIVE.wglRealizeLayerPalette wglRealizeLayerPalette;
		alias OPENGL_NATIVE.wglSwapLayerBuffers wglSwapLayerBuffers;
	}
}

