// D import file generated from 'org\eclipse\swt\internal\image\OS2BMPFileFormat.d'
module org.eclipse.swt.internal.image.OS2BMPFileFormat;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.FileFormat;
import java.io.ByteArrayOutputStream;
import java.lang.all;
final class OS2BMPFileFormat : FileFormat
{
	static const int BMPFileHeaderSize = 14;

	static const int BMPHeaderFixedSize = 12;

	int width;
	int height;
	int bitCount;
	override bool isFileFormat(LEDataInputStream stream);
	byte[] loadData(byte[] infoHeader);
	byte[] loadData(byte[] infoHeader, int stride);
	int[] loadFileHeader();
	override ImageData[] loadFromByteStream();
	PaletteData loadPalette(byte[] infoHeader);
	PaletteData paletteFromBytes(byte[] bytes, int numColors);
	static byte[] paletteToBytes(PaletteData pal);
	int unloadData(ImageData image, OutputStream ostr);
	override void unloadIntoByteStream(ImageLoader loader);
	void flipScanLines(byte[] data, int stride, int height);
}

