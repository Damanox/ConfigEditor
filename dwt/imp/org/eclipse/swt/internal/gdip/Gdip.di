// D import file generated from 'org\eclipse\swt\internal\gdip\Gdip.d'
module org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.gdip.native;
import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.Platform;
import org.eclipse.swt.internal.win32.WINTYPES;
import org.eclipse.swt.internal.win32.WINAPI;
import org.eclipse.swt.internal.win32.OS;
import java.lang.all;
version (Tango)
{
	import tango.sys.win32.UserGdi;
}
else
{
}
alias org.eclipse.swt.internal.gdip.native.GdiplusStartupInput GdiplusStartupInput;
alias org.eclipse.swt.internal.gdip.native.GdiplusStartupOutput GdiplusStartupOutput;
public class Gdip : Platform
{
	mixin(sharedStaticThis!"{\x0a        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION (5, 1)) {\x0a            loadLib_Gdip();\x0a        }\x0a    }");
	private 
	{
		static FontFamily GenericSansSerifFontFamily = null;

		static FontFamily GenericSerifFontFamily = null;

		static FontFamily GenericMonospaceFontFamily = null;

		struct FontFamily_T
		{
			Handle nativeFamily;
			Status lastResult;
		}
		struct StringFormat_T
		{
			StringFormat format;
			Status lastError;
		}
		static ubyte[StringFormat_T.sizeof] GenericTypographicStringFormatBuffer = 0;

		static ubyte[StringFormat_T.sizeof] GenericDefaultStringFormatBuffer = 0;

		static ubyte[FontFamily_T.sizeof] GenericSansSerifFontFamilyBuffer = 0;

		static ubyte[FontFamily_T.sizeof] GenericSerifFontFamilyBuffer = 0;

		static ubyte[FontFamily_T.sizeof] GenericMonospaceFontFamilyBuffer = 0;

		public 
		{
			alias GpPoint Point;
			alias GpPointF PointF;
			alias GpRect Rect;
			alias GpRectF RectF;
			alias GpBitmapData BitmapData;
			alias GpColorPalette ColorPalette;
			alias GpDrawImageAbort DrawImageAbort;
			alias GpColorMatrix ColorMatrix;
			alias GpFontFamily FontFamily;
			alias GpImage Image;
			alias GpBrush Brush;
			alias GpFont Font;
			alias GpFontCollection FontCollection;
			alias GpGraphics Graphics;
			alias GpGraphicsPath GraphicsPath;
			alias GpImageAttributes ImageAttributes;
			alias GpHatchBrush HatchBrush;
			alias GpLinearGradientBrush LinearGradientBrush;
			alias GpMatrix Matrix;
			alias GpPen Pen;
			alias GpRegion Region;
			alias GpSolidBrush SolidBrush;
			alias GpStringFormat StringFormat;
			alias GpTextureBrush TextureBrush;
			alias GpPath Path;
			alias Image Bitmap;
			alias uint ARGB;
			alias org.eclipse.swt.internal.gdip.native.GdiplusStartupInput GdiplusStartupInput;
			alias org.eclipse.swt.internal.gdip.native.GdiplusStartupOutput GdiplusStartupOutput;
			enum 
			{
				BrushTypeSolidColor = 0,
				BrushTypeHatchFill = 1,
				BrushTypeTextureFill = 2,
				BrushTypePathGradient = 3,
				BrushTypeLinearGradient = 4,
				ColorMatrixFlagsDefault = 0,
				CombineModeReplace = 0,
				CombineModeIntersect = 1,
				CombineModeUnion = 2,
				CombineModeXor = 3,
				CombineModeExclude = 4,
				CombineModeComplement = 5,
				FillModeAlternate = 0,
				FillModeWinding = 1,
				DashCapFlat = 0,
				DashCapRound = 2,
				DashCapTriangle = 3,
				DashStyleSolid = 0,
				DashStyleDash = 1,
				DashStyleDot = 2,
				DashStyleDashDot = 3,
				DashStyleDashDotDot = 4,
				DashStyleCustom = 5,
				FontStyleRegular = 0,
				FontStyleBold = 1,
				FontStyleItalic = 2,
				FontStyleBoldItalic = 3,
				FontStyleUnderline = 4,
				FontStyleStrikeout = 8,
				PaletteFlagsHasAlpha = 1,
				FlushIntentionFlush = 0,
				FlushIntentionSync = 1,
				HotkeyPrefixNone = 0,
				HotkeyPrefixShow = 1,
				HotkeyPrefixHide = 2,
				LineJoinMiter = 0,
				LineJoinBevel = 1,
				LineJoinRound = 2,
				LineCapFlat = 0,
				LineCapSquare = 1,
				LineCapRound = 2,
				MatrixOrderPrepend = 0,
				MatrixOrderAppend = 1,
				QualityModeDefault = 0,
				QualityModeLow = 1,
				QualityModeHigh = 2,
				InterpolationModeInvalid = -1,
				InterpolationModeDefault = QualityModeDefault,
				InterpolationModeLowQuality = QualityModeLow,
				InterpolationModeHighQuality = QualityModeHigh,
				InterpolationModeBilinear = QualityModeHigh + 1,
				InterpolationModeBicubic = QualityModeHigh + 2,
				InterpolationModeNearestNeighbor = QualityModeHigh + 3,
				InterpolationModeHighQualityBilinear = QualityModeHigh + 4,
				InterpolationModeHighQualityBicubic = QualityModeHigh + 5,
				PathPointTypeStart = 0,
				PathPointTypeLine = 1,
				PathPointTypeBezier = 3,
				PathPointTypePathTypeMask = 7,
				PathPointTypePathDashMode = 16,
				PathPointTypePathMarker = 32,
				PathPointTypeCloseSubpath = 128,
				PathPointTypeBezier3 = 3,
				PixelFormatIndexed = 65536,
				PixelFormatGDI = 131072,
				PixelFormatAlpha = 262144,
				PixelFormatPAlpha = 524288,
				PixelFormatExtended = 1048576,
				PixelFormatCanonical = 2097152,
				PixelFormat1bppIndexed = 1 | 1 << 8 | PixelFormatIndexed | PixelFormatGDI,
				PixelFormat4bppIndexed = 2 | 4 << 8 | PixelFormatIndexed | PixelFormatGDI,
				PixelFormat8bppIndexed = 3 | 8 << 8 | PixelFormatIndexed | PixelFormatGDI,
				PixelFormat16bppGrayScale = 4 | 16 << 8 | PixelFormatExtended,
				PixelFormat16bppRGB555 = 5 | 16 << 8 | PixelFormatGDI,
				PixelFormat16bppRGB565 = 6 | 16 << 8 | PixelFormatGDI,
				PixelFormat16bppARGB1555 = 7 | 16 << 8 | PixelFormatAlpha | PixelFormatGDI,
				PixelFormat24bppRGB = 8 | 24 << 8 | PixelFormatGDI,
				PixelFormat32bppRGB = 9 | 32 << 8 | PixelFormatGDI,
				PixelFormat32bppARGB = 10 | 32 << 8 | PixelFormatAlpha | PixelFormatGDI | PixelFormatCanonical,
				PixelFormat32bppPARGB = 11 | 32 << 8 | PixelFormatAlpha | PixelFormatPAlpha | PixelFormatGDI,
				PixelFormat48bppRGB = 12 | 48 << 8 | PixelFormatExtended,
				PixelFormat64bppARGB = 13 | 64 << 8 | PixelFormatAlpha | PixelFormatCanonical | PixelFormatExtended,
				PixelFormat64bppPARGB = 14 | 64 << 8 | PixelFormatAlpha | PixelFormatPAlpha | PixelFormatExtended,
				PixelFormatMax = 15,
				PixelOffsetModeNone = QualityModeHigh + 1,
				PixelOffsetModeHalf = QualityModeHigh + 2,
				SmoothingModeInvalid = -1,
				SmoothingModeDefault = QualityModeDefault,
				SmoothingModeHighSpeed = QualityModeLow,
				SmoothingModeHighQuality = QualityModeHigh,
				SmoothingModeNone = 3,
				SmoothingModeAntiAlias8x4 = 4,
				SmoothingModeAntiAlias = SmoothingModeAntiAlias8x4,
				SmoothingModeAntiAlias8x8 = 5,
				StringFormatFlagsDirectionRightToLeft = 1,
				StringFormatFlagsDirectionVertical = 2,
				StringFormatFlagsNoFitBlackBox = 4,
				StringFormatFlagsDisplayFormatControl = 32,
				StringFormatFlagsNoFontFallback = 1024,
				StringFormatFlagsMeasureTrailingSpaces = 2048,
				StringFormatFlagsNoWrap = 4096,
				StringFormatFlagsLineLimit = 8192,
				StringFormatFlagsNoClip = 16384,
				TextRenderingHintSystemDefault = 0,
				TextRenderingHintSingleBitPerPixelGridFit = 1,
				TextRenderingHintSingleBitPerPixel = 2,
				TextRenderingHintAntiAliasGridFit = 3,
				TextRenderingHintAntiAlias = 4,
				TextRenderingHintClearTypeGridFit = 5,
				WrapModeTile = 0,
				WrapModeTileFlipX = 1,
				WrapModeTileFlipY = 2,
				WrapModeTileFlipXY = 3,
				WrapModeClamp = 4,
			}
			enum 
			{
				PenTypeSolidColor = BrushTypeSolidColor,
				PenTypeHatchFill = BrushTypeHatchFill,
				PenTypeTextureFill = BrushTypeTextureFill,
				PenTypePathGradient = BrushTypePathGradient,
				PenTypeLinearGradient = BrushTypeLinearGradient,
				PenTypeUnknown = -1,
			}
			enum 
			{
				UnitWorld,
				UnitDisplay,
				UnitPixel,
				UnitPoint,
				UnitInch,
				UnitDocument,
				UnitMillimeter,
			}
			enum 
			{
				AliceBlue = 4293982463u,
				AntiqueWhite = 4294634455u,
				Aqua = 4278255615u,
				Aquamarine = 4286578644u,
				Azure = 4293984255u,
				Beige = 4294309340u,
				Bisque = 4294960324u,
				Black = 4278190080u,
				BlanchedAlmond = 4294962125u,
				Blue = 4278190335u,
				BlueViolet = 4287245282u,
				Brown = 4289014314u,
				BurlyWood = 4292786311u,
				CadetBlue = 4284456608u,
				Chartreuse = 4286578432u,
				Chocolate = 4291979550u,
				Coral = 4294934352u,
				CornflowerBlue = 4284782061u,
				Cornsilk = 4294965468u,
				Crimson = 4292613180u,
				Cyan = 4278255615u,
				DarkBlue = 4278190219u,
				DarkCyan = 4278225803u,
				DarkGoldenrod = 4290283019u,
				DarkGray = 4289309097u,
				DarkGreen = 4278215680u,
				DarkKhaki = 4290623339u,
				DarkMagenta = 4287299723u,
				DarkOliveGreen = 4283788079u,
				DarkOrange = 4294937600u,
				DarkOrchid = 4288230092u,
				DarkRed = 4287299584u,
				DarkSalmon = 4293498490u,
				DarkSeaGreen = 4287609995u,
				DarkSlateBlue = 4282924427u,
				DarkSlateGray = 4281290575u,
				DarkTurquoise = 4278243025u,
				DarkViolet = 4287889619u,
				DeepPink = 4294907027u,
				DeepSkyBlue = 4278239231u,
				DimGray = 4285098345u,
				DodgerBlue = 4280193279u,
				Firebrick = 4289864226u,
				FloralWhite = 4294966000u,
				ForestGreen = 4280453922u,
				Fuchsia = 4294902015u,
				Gainsboro = 4292664540u,
				GhostWhite = 4294506751u,
				Gold = 4294956800u,
				Goldenrod = 4292519200u,
				Gray = 4286611584u,
				Green = 4278222848u,
				GreenYellow = 4289593135u,
				Honeydew = 4293984240u,
				HotPink = 4294928820u,
				IndianRed = 4291648604u,
				Indigo = 4283105410u,
				Ivory = 4294967280u,
				Khaki = 4293977740u,
				Lavender = 4293322490u,
				LavenderBlush = 4294963445u,
				LawnGreen = 4286381056u,
				LemonChiffon = 4294965965u,
				LightBlue = 4289583334u,
				LightCoral = 4293951616u,
				LightCyan = 4292935679u,
				LightGoldenrodYellow = 4294638290u,
				LightGray = 4292072403u,
				LightGreen = 4287688336u,
				LightPink = 4294948545u,
				LightSalmon = 4294942842u,
				LightSeaGreen = 4280332970u,
				LightSkyBlue = 4287090426u,
				LightSlateGray = 4286023833u,
				LightSteelBlue = 4289774814u,
				LightYellow = 4294967264u,
				Lime = 4278255360u,
				LimeGreen = 4281519410u,
				Linen = 4294635750u,
				Magenta = 4294902015u,
				Maroon = 4286578688u,
				MediumAquamarine = 4284927402u,
				MediumBlue = 4278190285u,
				MediumOrchid = 4290401747u,
				MediumPurple = 4287852763u,
				MediumSeaGreen = 4282168177u,
				MediumSlateBlue = 4286277870u,
				MediumSpringGreen = 4278254234u,
				MediumTurquoise = 4282962380u,
				MediumVioletRed = 4291237253u,
				MidnightBlue = 4279834992u,
				MintCream = 4294311930u,
				MistyRose = 4294960353u,
				Moccasin = 4294960309u,
				NavajoWhite = 4294958765u,
				Navy = 4278190208u,
				OldLace = 4294833638u,
				Olive = 4286611456u,
				OliveDrab = 4285238819u,
				Orange = 4294944000u,
				OrangeRed = 4294919424u,
				Orchid = 4292505814u,
				PaleGoldenrod = 4293847210u,
				PaleGreen = 4288215960u,
				PaleTurquoise = 4289720046u,
				PaleVioletRed = 4292571283u,
				PapayaWhip = 4294963157u,
				PeachPuff = 4294957753u,
				Peru = 4291659071u,
				Pink = 4294951115u,
				Plum = 4292714717u,
				PowderBlue = 4289781990u,
				Purple = 4286578816u,
				Red = 4294901760u,
				RosyBrown = 4290547599u,
				RoyalBlue = 4282477025u,
				SaddleBrown = 4287317267u,
				Salmon = 4294606962u,
				SandyBrown = 4294222944u,
				SeaGreen = 4281240407u,
				SeaShell = 4294964718u,
				Sienna = 4288696877u,
				Silver = 4290822336u,
				SkyBlue = 4287090411u,
				SlateBlue = 4285160141u,
				SlateGray = 4285563024u,
				Snow = 4294966010u,
				SpringGreen = 4278255487u,
				SteelBlue = 4282811060u,
				Tan = 4291998860u,
				Teal = 4278222976u,
				Thistle = 4292394968u,
				Tomato = 4294927175u,
				Transparent = 16777215,
				Turquoise = 4282441936u,
				Violet = 4293821166u,
				Wheat = 4294303411u,
				White = 4294967295u,
				WhiteSmoke = 4294309365u,
				Yellow = 4294967040u,
				YellowGreen = 4288335154u,
			}
			enum 
			{
				AlphaShift = 24,
				RedShift = 16,
				GreenShift = 8,
				BlueShift = 0,
			}
			enum 
			{
				AlphaMask = 4278190080u,
				RedMask = 16711680,
				GreenMask = 65280,
				BlueMask = 255,
			}
			enum 
			{
				ColorAdjustTypeDefault,
				ColorAdjustTypeBitmap,
				ColorAdjustTypeBrush,
				ColorAdjustTypePen,
				ColorAdjustTypeText,
				ColorAdjustTypeCount,
				ColorAdjustTypeAny,
			}
			static ARGB MakeARGB(ubyte a, ubyte r, ubyte g, ubyte b);
			private static Status SetStatus(Status status);

			private static Status lastResult;


			public 
			{
				static void BitmapData_delete(BitmapData* bitmapdata);
				static BitmapData* BitmapData_new();
				static int Bitmap_GetHBITMAP(Bitmap bitmap, ARGB colorBackground, out HBITMAP hbmReturn);
				static int Bitmap_GetHICON(Bitmap bitmap, out HICON hIconReturn);
				static int Bitmap_LockBits(Bitmap bitmap, Rect* rect, uint flags, PixelFormat pixelFormat, BitmapData* lockedBitmapData);
				static int Bitmap_UnlockBits(Bitmap bitmap, BitmapData* lockedBitmapData);
				static void Bitmap_delete(Bitmap bitmap);
				static Bitmap Bitmap_new(HICON hicon);
				static Bitmap Bitmap_new(HBITMAP hbm, HPALETTE hpal);
				static Bitmap Bitmap_new(int width, int height, int stride, PixelFormat format, ubyte* scan0);
				static Bitmap Bitmap_new(LPCWSTR filename, bool useIcm);
				static Status Image_GetLastStatus(Image image);
				static PixelFormat Image_GetPixelFormat(Image image);
				static uint Image_GetWidth(Image image);
				static uint Image_GetHeight(Image image);
				static Status Image_GetPalette(Image image, ColorPalette* palette, int size);
				static int Image_GetPaletteSize(Image image);
				static ImageAttributes ImageAttributes_new();
				static void ImageAttributes_delete(ImageAttributes attrib);
				static Status ImageAttributes_SetWrapMode(ImageAttributes attrib, WrapMode wrap, ARGB color = Gdip.Black, bool clamp = false);
				static Status ImageAttributes_SetColorMatrix(ImageAttributes attrib, ref ColorMatrix matrix, ColorMatrixFlag mode = Gdip.ColorMatrixFlagsDefault, ColorAdjustType type = Gdip.ColorAdjustTypeDefault);
				static Brush Brush_Clone(Brush brush);
				static BrushType Brush_GetType(Brush brush);
				static void HatchBrush_delete(HatchBrush brush);
				static HatchBrush HatchBrush_new(HatchStyle hatchStyle, ARGB foreColor, ARGB backColor);
				static LinearGradientBrush LinearGradientBrush_new(ref PointF point1, ref PointF point2, ARGB color1, ARGB color2);
				static void LinearGradientBrush_delete(LinearGradientBrush brush);
				static Status LinearGradientBrush_SetInterpolationColors(LinearGradientBrush brush, ARGB* presetColors, float* blendPositions, int count);
				static Status LinearGradientBrush_SetWrapMode(LinearGradientBrush brush, WrapMode wrapMode);
				static Status LinearGradientBrush_ResetTransform(LinearGradientBrush brush);
				static int LinearGradientBrush_ScaleTransform(LinearGradientBrush brush, float sx, float sy, MatrixOrder order = MatrixOrderPrepend);
				static int LinearGradientBrush_TranslateTransform(LinearGradientBrush brush, float dx, float dy, MatrixOrder order = MatrixOrderPrepend);
				static TextureBrush TextureBrush_new(Image image, WrapMode wrapMode, float dstX, float dstY, float dstWidth, float dstHeight);
				static void TextureBrush_delete(TextureBrush brush);
				static Status TextureBrush_SetTransform(TextureBrush brush, Matrix matrix);
				static Status TextureBrush_ResetTransform(TextureBrush brush);
				static Status TextureBrush_ScaleTransform(TextureBrush brush, float sx, float sy, MatrixOrder order = MatrixOrderPrepend);
				static Status TextureBrush_TranslateTransform(TextureBrush brush, float dx, float dy, MatrixOrder order = MatrixOrderPrepend);
				static SolidBrush SolidBrush_new(ARGB color);
				static void SolidBrush_delete(SolidBrush brush);
				static Pen Pen_new(Brush brush, float width);
				static void Pen_delete(Pen pen);
				static PenType Pen_GetPenType(Pen pen);
				static Brush Pen_GetBrush(Pen pen);
				static Status Pen_SetBrush(Pen pen, Brush brush);
				static Status Pen_SetDashOffset(Pen pen, float dashOffset);
				static Status Pen_SetDashPattern(Pen pen, in float* dashArray, int count);
				static Status Pen_SetDashStyle(Pen pen, DashStyle dashStyle);
				static Status Pen_SetLineCap(Pen pen, LineCap startCap, LineCap endCap, DashCap dashCap);
				static Status Pen_SetLineJoin(Pen pen, LineJoin lineJoin);
				static Status Pen_SetMiterLimit(Pen pen, float miterLimit);
				static Status Pen_SetWidth(Pen pen, float width);
				static void Color_delete(ARGB color);
				static ARGB Color_new(ARGB color);
				static int FontFamily_GetFamilyName(FontFamily family, LPCWSTR name, int language);
				static void FontFamily_delete(FontFamily family);
				static FontFamily FontFamily_new();
				static int Font_GetFamily(Font font, ref FontFamily family);
				static float Font_GetSize(Font font);
				static int Font_GetStyle(Font font);
				static bool Font_IsAvailable(Font font);
				static void Font_delete(Font font);
				static Font Font_new(HDC hdc, HFONT hfont);
				static Font Font_new(LPCWSTR familyName, float emSize, int style, uint unit, FontCollection fontCollection);
				alias .GdiplusShutdown GdiplusShutdown;
				alias .GdiplusStartup GdiplusStartup;
				static Path GraphicsPath_new(FillMode fillMode = FillModeAlternate);
				static Path GraphicsPath_new(Point* points, ubyte* types, int count, FillMode fillMode = FillModeAlternate);
				static void GraphicsPath_delete(Path path);
				static Path GraphicsPath_Clone(Handle path);
				static Status GraphicsPath_AddArcF(Path path, float x, float y, float width, float height, float startAngle, float sweepAngle);
				static Status GraphicsPath_AddArc(Path path, int x, int y, int width, int height, float startAngle, float sweepAngle);
				static Status GraphicsPath_AddBezier(Path path, float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4);
				static Status GraphicsPath_AddLine(Path path, float x1, float y1, float x2, float y2);
				static Status GraphicsPath_AddPath(Path path, Path addingPath, bool connect);
				static Status GraphicsPath_AddRectangle(Path path, RectF rect);
				static Status GraphicsPath_AddString(Path path, LPCWSTR string, int length, FontFamily family, int style, float emSize, ref PointF origin, StringFormat format);
				static Status GraphicsPath_CloseFigure(Path path);
				static Status GraphicsPath_Flatten(Path path, Matrix matrix, float flatness);
				static Status GraphicsPath_GetBounds(Path path, ref RectF bounds, Matrix matrix, Pen pen);
				static Status GraphicsPath_GetLastPoint(Path path, out PointF lastPoint);
				static Status GraphicsPath_GetPathTypes(Path path, byte* types, int count);
				static Status GraphicsPath_GetPathPoints(Path path, PointF* points, int count);
				static int GraphicsPath_GetPointCount(Path path);
				static bool GraphicsPath_IsOutlineVisible(Path path, float x, float y, Pen pen, Graphics g = null);
				static bool GraphicsPath_IsVisible(Path path, float x, float y, Graphics graphics);
				static int GraphicsPath_SetFillMode(Path path, FillMode fillmode);
				static int GraphicsPath_StartFigure(Path path);
				static int GraphicsPath_Transform(Path path, Matrix matrix);
				static Graphics Graphics_new(HDC hdc);
				static void Graphics_delete(Graphics graphics);
				static Status Graphics_DrawArc(Graphics graphics, Pen pen, int x, int y, int width, int height, float startAngle, float sweepAngle);
				static Status Graphics_DrawEllipse(Graphics graphics, Pen pen, int x, int y, int width, int height);
				static Status Graphics_DrawImage(Graphics graphics, Image image, int x, int y);
				static Status Graphics_DrawImage(Graphics graphics, Image image, ref Rect destRect, int srcx, int srcy, int srcwidth, int srcheight, Unit srcUnit, ImageAttributes imageAttributes = null, DrawImageAbort callback = null, void* callbackData = null);
				static Status Graphics_DrawLine(Graphics graphics, Pen pen, int x1, int y1, int x2, int y2);
				static Status Graphics_DrawLines(Graphics graphics, Pen pen, Point* points, uint count);
				static Status Graphics_DrawPath(Graphics graphics, Pen pen, Path path);
				static Status Graphics_DrawPolygon(Graphics graphics, Pen pen, Point* points, uint count);
				static Status Graphics_DrawRectangle(Graphics graphics, Pen pen, int x, int y, int width, int height);
				static Status Graphics_DrawString(Graphics graphics, LPCWSTR string, int length, Font font, ref PointF origin, Brush brush);
				static Status Graphics_DrawString(Graphics graphics, LPCWSTR string, int length, Font font, ref PointF origin, StringFormat format, Brush brush);
				static Status Graphics_FillEllipse(Graphics graphics, Brush brush, int x, int y, int width, int height);
				static Status Graphics_FillPath(Graphics graphics, Brush brush, Path path);
				static void Graphics_Flush(Graphics graphics, FlushIntention intention = FlushIntentionFlush);
				static Status Graphics_FillPie(Graphics graphics, Brush brush, int x, int y, int width, int height, float startAngle, float sweepAngle);
				static Status Graphics_FillPolygon(Graphics graphics, Brush brush, Point* points, int count, FillMode fillMode);
				static Status Graphics_FillRectangle(Graphics graphics, Brush brush, int x, int y, int width, int height);
				static Status Graphics_GetClipBounds(Graphics graphics, out RectF rect);
				static Status Graphics_GetClipBounds(Graphics graphics, out Rect rect);
				static Status Graphics_GetClip(Graphics graphics, Region region);
				static HDC Graphics_GetHDC(Graphics graphics);
				static void Graphics_ReleaseHDC(Graphics graphics, HDC hdc);
				static InterpolationMode Graphics_GetInterpolationMode(Graphics graphics);
				static SmoothingMode Graphics_GetSmoothingMode(Graphics graphics);
				static TextRenderingHint Graphics_GetTextRenderingHint(Graphics graphics);
				static Status Graphics_GetTransform(Graphics graphics, Matrix matrix);
				static Status Graphics_GetVisibleClipBounds(Graphics graphics, out Rect rect);
				static Status Graphics_MeasureString(Graphics graphics, LPCWSTR string, int length, Font font, ref PointF origin, ref RectF boundingBox);
				static Status Graphics_MeasureString(Graphics graphics, LPCWSTR string, int length, Font font, ref PointF origin, StringFormat format, ref RectF boundingBox);
				static Status Graphics_ResetClip(Graphics graphics);
				static Status Graphics_Restore(Graphics graphics, GraphicsState gstate);
				static GraphicsState Graphics_Save(Graphics graphics);
				static Status Graphics_ScaleTransform(Graphics graphics, float sx, float sy, MatrixOrder order = MatrixOrderPrepend);
				static Status Graphics_SetClip(Graphics graphics, HRGN hrgn, CombineMode combineMode = CombineModeReplace);
				static Status Graphics_SetClipPath(Graphics graphics, Path path, CombineMode combineMode = CombineModeReplace);
				static Status Graphics_SetClip(Graphics graphics, ref Rect rect, CombineMode combineMode = CombineModeReplace);
				static Status Graphics_SetCompositingQuality(Graphics graphics, CompositingQuality compositingQuality);
				static Status Graphics_SetPageUnit(Graphics graphics, Unit unit);
				static Status Graphics_SetPixelOffsetMode(Graphics graphics, PixelOffsetMode pixelOffsetMode);
				static Status Graphics_SetSmoothingMode(Graphics graphics, SmoothingMode smoothingMode);
				static Status Graphics_SetTransform(Graphics graphics, Matrix matrix);
				static Status Graphics_SetInterpolationMode(Graphics graphics, InterpolationMode mode);
				static Status Graphics_SetTextRenderingHint(Graphics graphics, TextRenderingHint mode);
				static Status Graphics_TranslateTransform(Graphics graphics, float dx, float dy, MatrixOrder order = MatrixOrderPrepend);
				static Region Region_new(HRGN hRgn);
				static Region Region_new();
				static void Region_delete(Region region);
				static HRGN Region_GetHRGN(Region region, Graphics graphics);
				static int Region_IsInfinite(Region region, Graphics graphics);
				static Matrix Matrix_new(float m11, float m12, float m21, float m22, float dx, float dy);
				static void Matrix_delete(Matrix matrix);
				static Status Matrix_GetElements(Matrix matrix, float* m);
				static Status Matrix_Invert(Matrix matrix);
				static int Matrix_IsIdentity(Matrix matrix);
				static Status Matrix_Multiply(Matrix nativeMatrix, Matrix matrix, MatrixOrder order = MatrixOrderPrepend);
				static int Matrix_Rotate(Matrix matrix, float angle, MatrixOrder order = MatrixOrderPrepend);
				static Status Matrix_Scale(Matrix matrix, float scaleX, float scaleY, MatrixOrder order = MatrixOrderPrepend);
				static Status Matrix_Shear(Matrix matrix, float shearX, float shearY, MatrixOrder order);
				static Status Matrix_SetElements(Matrix matrix, float m11, float m12, float m21, float m22, float dx, float dy);
				static Status Matrix_TransformPoints(Matrix matrix, PointF* pts, int count = 1);
				static Status Matrix_Translate(Matrix matrix, float offsetX, float offsetY, MatrixOrder order = MatrixOrderPrepend);
				static void StringFormat_delete(StringFormat format);
				static StringFormat StringFormat_Clone(StringFormat format);
				static StringFormat StringFormat_GenericDefault();
				static StringFormat StringFormat_GenericTypographic();
				static int StringFormat_GetFormatFlags(StringFormat format);
				static int StringFormat_SetHotkeyPrefix(StringFormat format, int hotkeyPrefix);
				static int StringFormat_SetFormatFlags(StringFormat format, int flags);
				static int StringFormat_SetTabStops(StringFormat format, float firstTabOffset, int count, float* tabStops);
			}
		}
	}
}

