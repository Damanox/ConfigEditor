// D import file generated from 'org\eclipse\swt\graphics\GC.d'
module org.eclipse.swt.graphics.GC;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Path;
import org.eclipse.swt.graphics.Pattern;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.Transform;
import org.eclipse.swt.graphics.LineAttributes;
import java.lang.all;
public final class GC : Resource
{
	alias Resource.init_ init_;
	public HDC handle;

	Drawable drawable;
	GCData data;
	static const int FOREGROUND = 1 << 0;

	static const int BACKGROUND = 1 << 1;

	static const int FONT = 1 << 2;

	static const int LINE_STYLE = 1 << 3;

	static const int LINE_WIDTH = 1 << 4;

	static const int LINE_CAP = 1 << 5;

	static const int LINE_JOIN = 1 << 6;

	static const int LINE_MITERLIMIT = 1 << 7;

	static const int FOREGROUND_TEXT = 1 << 8;

	static const int BACKGROUND_TEXT = 1 << 9;

	static const int BRUSH = 1 << 10;

	static const int PEN = 1 << 11;

	static const int NULL_BRUSH = 1 << 12;

	static const int NULL_PEN = 1 << 13;

	static const int DRAW_OFFSET = 1 << 14;

	static const int DRAW = FOREGROUND | LINE_STYLE | LINE_WIDTH | LINE_CAP | LINE_JOIN | LINE_MITERLIMIT | PEN | NULL_BRUSH | DRAW_OFFSET;

	static const int FILL = BACKGROUND | BRUSH | NULL_PEN;

	static const float[] LINE_DOT_ZERO = [3, 3];

	static const float[] LINE_DASH_ZERO = [18, 6];

	static const float[] LINE_DASHDOT_ZERO = [9, 6, 3, 6];

	static const float[] LINE_DASHDOTDOT_ZERO = [9, 3, 3, 3, 3, 3];

	this();
	public this(Drawable drawable);

	public this(Drawable drawable, int style);

	static int checkStyle(int style);
	void checkGC(int mask);
	public void copyArea(Image image, int x, int y);

	public void copyArea(int srcX, int srcY, int width, int height, int destX, int destY);

	public void copyArea(int srcX, int srcY, int width, int height, int destX, int destY, bool paint);

	static Gdip.Font createGdipFont(HDC hDC, HFONT hFont);
	static void destroyGdipBrush(Gdip.Brush brush);
	override void destroy();
	void disposeGdip();
	public void drawArc(int x, int y, int width, int height, int startAngle, int arcAngle);

	public void drawFocus(int x, int y, int width, int height);

	public void drawImage(Image image, int x, int y);

	public void drawImage(Image image, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight);

	void drawImage(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, bool simple);
	void drawIcon(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, bool simple);
	void drawBitmap(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, bool simple);
	void drawBitmapAlpha(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, bool simple, BITMAP bm, int imgWidth, int imgHeight);
	void drawBitmapTransparentByClipping(HDC srcHdc, HDC maskHdc, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, bool simple, int imgWidth, int imgHeight);
	void drawBitmapMask(Image srcImage, HBITMAP srcColor, HBITMAP srcMask, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, bool simple, int imgWidth, int imgHeight, bool offscreen);
	void drawBitmapTransparent(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, bool simple, BITMAP bm, int imgWidth, int imgHeight);
	void drawBitmap(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, bool simple, BITMAP bm, int imgWidth, int imgHeight);
	public void drawLine(int x1, int y1, int x2, int y2);

	public void drawOval(int x, int y, int width, int height);

	public void drawPath(Path path);

	public void drawPoint(int x, int y);

	public void drawPolygon(int[] pointArray);

	public void drawPolyline(int[] pointArray);

	public void drawRectangle(int x, int y, int width, int height);

	public void drawRectangle(Rectangle rect);

	public void drawRoundRectangle(int x, int y, int width, int height, int arcWidth, int arcHeight);

	void drawRoundRectangleGdip(Gdip.Graphics gdipGraphics, Gdip.Pen pen, int x, int y, int width, int height, int arcWidth, int arcHeight);
	public void drawString(String string, int x, int y);

	public void drawString(String string, int x, int y, bool isTransparent);

	public void drawText(String string, int x, int y);

	public void drawText(String string, int x, int y, bool isTransparent);

	public void drawText(String string, int x, int y, int flags);

	public override equals_t opEquals(Object object);

	public void fillArc(int x, int y, int width, int height, int startAngle, int arcAngle);

	public void fillGradientRectangle(int x, int y, int width, int height, bool vertical);

	public void fillOval(int x, int y, int width, int height);

	public void fillPath(Path path);

	public void fillPolygon(int[] pointArray);

	public void fillRectangle(int x, int y, int width, int height);

	public void fillRectangle(Rectangle rect);

	public void fillRoundRectangle(int x, int y, int width, int height, int arcWidth, int arcHeight);

	void fillRoundRectangleGdip(Gdip.Graphics gdipGraphics, Gdip.Brush brush, int x, int y, int width, int height, int arcWidth, int arcHeight);
	void flush();
	public int getAdvanceWidth(char ch);

	public bool getAdvanced();

	public int getAlpha();

	public int getAntialias();

	public Color getBackground();

	public Pattern getBackgroundPattern();

	public int getCharWidth(char ch);

	public Rectangle getClipping();

	public void getClipping(Region region);

	int getCodePage();
	Gdip.Brush getFgBrush();
	public int getFillRule();

	public Font getFont();

	public FontMetrics getFontMetrics();

	public Color getForeground();

	public Pattern getForegroundPattern();

	public GCData getGCData();

	public int getInterpolation();

	public LineAttributes getLineAttributes();

	public int getLineCap();

	public int[] getLineDash();

	public int getLineJoin();

	public int getLineStyle();

	public int getLineWidth();

	public int getStyle();

	public int getTextAntialias();

	public void getTransform(Transform transform);

	public bool getXORMode();

	void initGdip();
	Gdip.Matrix identity();
	void init_(Drawable drawable, GCData data, HDC hDC);
	public override hash_t toHash();

	public bool isClipped();

	public override bool isDisposed();

	float measureSpace(Gdip.Font font, Gdip.StringFormat format);
	public void setAdvanced(bool advanced);

	public void setAntialias(int antialias);

	public void setAlpha(int alpha);

	public void setBackground(Color color);

	public void setBackgroundPattern(Pattern pattern);

	void setClipping(HRGN clipRgn);
	public void setClipping(int x, int y, int width, int height);

	public void setClipping(Path path);

	public void setClipping(Rectangle rect);

	public void setClipping(Region region);

	public void setFillRule(int rule);

	public void setFont(Font font);

	public void setForeground(Color color);

	public void setForegroundPattern(Pattern pattern);

	public void setInterpolation(int interpolation);

	public void setLineAttributes(LineAttributes attributes);

	public void setLineCap(int cap);

	public void setLineDash(int[] dashes);

	public void setLineJoin(int join);

	public void setLineStyle(int lineStyle);

	public void setLineWidth(int lineWidth);

	public void setXORMode(bool xor);

	public void setTextAntialias(int antialias);

	public void setTransform(Transform transform);

	public Point stringExtent(String string);

	public Point textExtent(String string);

	public Point textExtent(String string, int flags);

	public override String toString();

	public static GC win32_new(Drawable drawable, GCData data);

	public static GC win32_new(HDC hDC, GCData data);

}


