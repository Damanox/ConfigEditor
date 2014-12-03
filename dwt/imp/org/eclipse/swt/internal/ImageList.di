// D import file generated from 'org\eclipse\swt\internal\ImageList.d'
module org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import java.lang.all;
import java.lang.System;
public class ImageList
{
	HIMAGELIST handle;
	int style;
	int refCount;
	Image[] images;
	public this(int style);

	public int add(Image image);

	public int addRef();

	HBITMAP copyBitmap(HBITMAP hImage, int width, int height);
	HBITMAP copyIcon(HBITMAP hImage, int width, int height);
	HBITMAP copyWithAlpha(HBITMAP hBitmap, int background, byte[] alphaData, int destWidth, int destHeight);
	HBITMAP createMaskFromAlpha(ImageData data, int destWidth, int destHeight);
	HBITMAP createMask(HBITMAP hBitmap, int destWidth, int destHeight, int background, int transparentPixel);
	public void dispose();

	public Image get(int index);

	public int getStyle();

	public HIMAGELIST getHandle();

	public Point getImageSize();

	public int indexOf(Image image);

	public void put(int index, Image image);

	public void remove(int index);

	public int removeRef();

	void set(int index, Image image, int count);
	public int size();

}

