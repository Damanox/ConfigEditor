// D import file generated from 'org\eclipse\swt\internal\image\GIFFileFormat.d'
module org.eclipse.swt.internal.image.GIFFileFormat;
public import org.eclipse.swt.internal.image.FileFormat;

public import org.eclipse.swt.graphics.PaletteData;

import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.LZWCodec;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.graphics.ImageLoader;
import java.lang.all;
final class GIFFileFormat : FileFormat
{
	String signature;
	int screenWidth;
	int screenHeight;
	int backgroundPixel;
	int bitsPerPixel;
	int defaultDepth;
	int disposalMethod = 0;
	int delayTime = 0;
	int transparentPixel = -1;
	int repeatCount = 1;
	static const int GIF_APPLICATION_EXTENSION_BLOCK_ID = 255;

	static const int GIF_GRAPHICS_CONTROL_BLOCK_ID = 249;

	static const int GIF_PLAIN_TEXT_BLOCK_ID = 1;

	static const int GIF_COMMENT_BLOCK_ID = 254;

	static const int GIF_EXTENSION_BLOCK_ID = 33;

	static const int GIF_IMAGE_BLOCK_ID = 44;

	static const int GIF_TRAILER_ID = 59;

	static const byte[] GIF89a = cast(byte[])"GIF89a";

	static const byte[] NETSCAPE2_0 = cast(byte[])"NETSCAPE2.0";

	static PaletteData grayRamp(int numGrays);
	override bool isFileFormat(LEDataInputStream stream);
	override ImageData[] loadFromByteStream();
	int readID();
	void getExtensions();
	byte[] readExtension();
	byte[] readCommentExtension();
	byte[] readPlainTextExtension();
	byte[] readGraphicsControlExtension();
	byte[] readApplicationExtension();
	ImageData readImageBlock(PaletteData defaultPalette);
	PaletteData readPalette(int numColors);
	override void unloadIntoByteStream(ImageLoader loader);
	void writeGraphicsControlBlock(ImageData image);
	void writePalette(PaletteData palette, int depth);
}

