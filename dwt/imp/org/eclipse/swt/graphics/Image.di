// D import file generated from 'org\eclipse\swt\graphics\Image.d'
module org.eclipse.swt.graphics.Image;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Resource;
import java.io.InputStream;
import java.lang.all;
public final class Image : Resource, Drawable
{
	alias Resource.init_ init_;
	public int type;

	public HGDIOBJ handle;

	int transparentPixel = -1;
	int transparentColor = -1;
	GC memGC;
	byte[] alphaData;
	int alpha = -1;
	ImageData data;
	int width = -1;
	int height = -1;
	static const int DEFAULT_SCANLINE_PAD = 4;

	this(Device device);
	public this(Device device, int width, int height);

	public this(Device device, Image srcImage, int flag);

	public this(Device device, Rectangle bounds);

	public this(Device device, ImageData data);

	public this(Device device, ImageData source, ImageData mask);

	public this(Device device, InputStream stream);

	public this(Device device, String filename);

	HBITMAP createDIBFromDDB(HDC hDC, HBITMAP hBitmap, int width, int height);
	int[] createGdipImage();
	override void destroy();
	public override equals_t opEquals(Object object);

	public Color getBackground();

	public Rectangle getBounds();

	public ImageData getImageData();

	public override hash_t toHash();

	void init_(int width, int height);
	static HGDIOBJ createDIB(int width, int height, int depth);
	static void GetIconInfo(Image image, ICONINFO* info);
	static int[] init_(Device device, Image image, ImageData i);
	static int[] init__(Device device, Image image, ImageData source, ImageData mask);
	void init_(ImageData i);
	public HDC internal_new_GC(GCData data);

	public void internal_dispose_GC(HDC hDC, GCData data);

	public override bool isDisposed();

	public void setBackground(Color color);

	public override String toString();

	public static Image win32_new(Device device, int type, HGDIOBJ handle);

}


