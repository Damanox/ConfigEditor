// D import file generated from 'org\eclipse\swt\graphics\ImageData.d'
module org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.ImageDataLoader;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.CloneableCompatibility;
public import java.io.InputStream;

import java.lang.System;
import java.lang.all;
public final class ImageData : CloneableCompatibility
{
	public int width;

	public int height;

	public int depth;

	public int scanlinePad;

	public int bytesPerLine;

	public byte[] data;

	public PaletteData palette;

	public int transparentPixel;

	public byte[] maskData;

	public int maskPad;

	public byte[] alphaData;

	public int alpha;

	public int type;

	public int x;

	public int y;

	public int disposalMethod;

	public int delayTime;

	mixin(gshared!"static byte[][] ANY_TO_EIGHT;");
	mixin(gshared!"private static byte[] ONE_TO_ONE_MAPPING;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	static const int[][] DITHER_MATRIX = [[16515072, 8126464, 14417920, 6029312, 15990784, 7602176, 13893632, 5505024], [3932160, 12320768, 1835008, 10223616, 3407872, 11796480, 1310720, 9699328], [13369344, 4980736, 15466496, 7077888, 12845056, 4456448, 14942208, 6553600], [786432, 9175040, 2883584, 11272192, 262144, 8650752, 2359296, 10747904], [15728640, 7340032, 13631488, 5242880, 16252928, 7864320, 14155776, 5767168], [3145728, 11534336, 1048576, 9437184, 3670016, 12058624, 1572864, 9961472], [12582912, 4194304, 14680064, 6291456, 13107200, 4718592, 15204352, 6815744], [0, 8388608, 2097152, 10485760, 524288, 8912896, 2621440, 11010048]];

	public this(int width, int height, int depth, PaletteData palette);

	public this(int width, int height, int depth, PaletteData palette, int scanlinePad, byte[] data);

	public this(InputStream stream);

	public this(String filename);

	private this();

	this(int width, int height, int depth, PaletteData palette, int scanlinePad, byte[] data, int maskPad, byte[] maskData, byte[] alphaData, int alpha, int transparentPixel, int type, int x, int y, int disposalMethod, int delayTime);
	void setAllFields(int width, int height, int depth, int scanlinePad, int bytesPerLine, byte[] data, PaletteData palette, int transparentPixel, byte[] maskData, int maskPad, byte[] alphaData, int alpha, int type, int x, int y, int disposalMethod, int delayTime);
	public static ImageData internal_new(int width, int height, int depth, PaletteData palette, int scanlinePad, byte[] data, int maskPad, byte[] maskData, byte[] alphaData, int alpha, int transparentPixel, int type, int x, int y, int disposalMethod, int delayTime);

	ImageData colorMaskImage(int pixel);
	static byte[] checkData(byte[] data);
	public Object clone();

	public int getAlpha(int x, int y);

	public void getAlphas(int x, int y, int getWidth, byte[] alphas, int startIndex);

	public int getPixel(int x, int y);

	public void getPixels(int x, int y, int getWidth, byte[] pixels, int startIndex);

	public void getPixels(int x, int y, int getWidth, int[] pixels, int startIndex);

	public RGB[] getRGBs();

	public ImageData getTransparencyMask();

	public int getTransparencyType();

	int getByteOrder();
	public ImageData scaledTo(int width, int height);

	public void setAlpha(int x, int y, int alpha);

	public void setAlphas(int x, int y, int putWidth, byte[] alphas, int startIndex);

	public void setPixel(int x, int y, int pixelValue);

	public void setPixels(int x, int y, int putWidth, byte[] pixels, int startIndex);

	public void setPixels(int x, int y, int putWidth, int[] pixels, int startIndex);

	static PaletteData bwPalette();
	static int getMSBOffset(int mask);
	static int closestMatch(int depth, byte red, byte green, byte blue, int redMask, int greenMask, int blueMask, byte[] reds, byte[] greens, byte[] blues);
	static final ImageData convertMask(ImageData mask);
	static final byte[] convertPad(byte[] data, int width, int height, int depth, int pad, int newPad);
	static const 
	{
		int BLIT_SRC = 1;
		int BLIT_ALPHA = 2;
		int BLIT_DITHER = 4;
	}
	static const 
	{
		int ALPHA_OPAQUE = 255;
		int ALPHA_TRANSPARENT = 0;
		int ALPHA_CHANNEL_SEPARATE = -1;
		int ALPHA_CHANNEL_SOURCE = -2;
		int ALPHA_MASK_UNPACKED = -3;
		int ALPHA_MASK_PACKED = -4;
		int ALPHA_MASK_INDEX = -5;
		int ALPHA_MASK_RGB = -6;
	}
	static const int LSB_FIRST = 0;

	static const int MSB_FIRST = 1;

	private static const 
	{
		int TYPE_GENERIC_8 = 0;
		int TYPE_GENERIC_16_MSB = 1;
		int TYPE_GENERIC_16_LSB = 2;
		int TYPE_GENERIC_24 = 3;
		int TYPE_GENERIC_32_MSB = 4;
		int TYPE_GENERIC_32_LSB = 5;
		int TYPE_INDEX_8 = 6;
		int TYPE_INDEX_4 = 7;
		int TYPE_INDEX_2 = 8;
		int TYPE_INDEX_1_MSB = 9;
		int TYPE_INDEX_1_LSB = 10;
	}

	static void blit(int op, byte[] srcData, int srcDepth, int srcStride, int srcOrder, int srcX, int srcY, int srcWidth, int srcHeight, int srcRedMask, int srcGreenMask, int srcBlueMask, int alphaMode, byte[] alphaData, int alphaStride, int alphaX, int alphaY, byte[] destData, int destDepth, int destStride, int destOrder, int destX, int destY, int destWidth, int destHeight, int destRedMask, int destGreenMask, int destBlueMask, bool flipX, bool flipY);
	static void blit(int op, byte[] srcData, int srcDepth, int srcStride, int srcOrder, int srcX, int srcY, int srcWidth, int srcHeight, byte[] srcReds, byte[] srcGreens, byte[] srcBlues, int alphaMode, byte[] alphaData, int alphaStride, int alphaX, int alphaY, byte[] destData, int destDepth, int destStride, int destOrder, int destX, int destY, int destWidth, int destHeight, byte[] destReds, byte[] destGreens, byte[] destBlues, bool flipX, bool flipY);
	static void blit(int op, byte[] srcData, int srcDepth, int srcStride, int srcOrder, int srcX, int srcY, int srcWidth, int srcHeight, byte[] srcReds, byte[] srcGreens, byte[] srcBlues, int alphaMode, byte[] alphaData, int alphaStride, int alphaX, int alphaY, byte[] destData, int destDepth, int destStride, int destOrder, int destX, int destY, int destWidth, int destHeight, int destRedMask, int destGreenMask, int destBlueMask, bool flipX, bool flipY);
	static void blit(int op, byte[] srcData, int srcDepth, int srcStride, int srcOrder, int srcX, int srcY, int srcWidth, int srcHeight, int srcRedMask, int srcGreenMask, int srcBlueMask, int alphaMode, byte[] alphaData, int alphaStride, int alphaX, int alphaY, byte[] destData, int destDepth, int destStride, int destOrder, int destX, int destY, int destWidth, int destHeight, byte[] destReds, byte[] destGreens, byte[] destBlues, bool flipX, bool flipY);
	static int getChannelShift(int mask);
	static int getChannelWidth(int mask, int shift);
	static byte getChannelField(int data, int mask);
	static ImageData createGradientBand(int width, int height, bool vertical, RGB fromRGB, RGB toRGB, int redBits, int greenBits, int blueBits);
	static final void buildPreciseGradientChannel(int from, int to, int steps, int bandWidth, int bandHeight, bool vertical, byte[] bitmapData, int dp, int bytesPerLine);
	static final void buildDitheredGradientChannel(int from, int to, int steps, int bandWidth, int bandHeight, bool vertical, byte[] bitmapData, int dp, int bytesPerLine, int bits);
	static void fillGradientRectangle(GC gc, Device device, int x, int y, int width, int height, bool vertical, RGB fromRGB, RGB toRGB, int redBits, int greenBits, int blueBits);
}


