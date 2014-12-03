// D import file generated from 'org\eclipse\swt\internal\image\WinBMPFileFormat.d'
module org.eclipse.swt.internal.image.WinBMPFileFormat;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import java.io.ByteArrayOutputStream;
import org.eclipse.swt.SWT;
import java.lang.all;
final class WinBMPFileFormat : FileFormat
{
	static const int BMPFileHeaderSize = 14;

	static const int BMPHeaderFixedSize = 40;

	int importantColors;
	Point pelsPerMeter;
	public this();

	int compress(int comp, byte[] src, int srcOffset, int numBytes, byte[] dest, bool last);
	int compressRLE4Data(byte[] src, int srcOffset, int numBytes, byte[] dest, bool last);
	int compressRLE8Data(byte[] src, int srcOffset, int numBytes, byte[] dest, bool last);
	void decompressData(byte[] src, byte[] dest, int stride, int cmp);
	bool putRLE4Byte(byte[] dest, bool odd, int len, int i, int dp, bool dph, byte theByte);
	int decompressRLE4Data(byte[] src, int numBytes, int stride, byte[] dest, int destSize);
	int decompressRLE8Data(byte[] src, int numBytes, int stride, byte[] dest, int destSize);
	override bool isFileFormat(LEDataInputStream stream);
	byte[] loadData(byte[] infoHeader);
	byte[] loadData(byte[] infoHeader, int stride);
	int[] loadFileHeader();
	override ImageData[] loadFromByteStream();
	PaletteData loadPalette(byte[] infoHeader);
	PaletteData paletteFromBytes(byte[] bytes, int numColors);
	static byte[] paletteToBytes(PaletteData pal);
	int unloadData(ImageData image, OutputStream ostr, int comp);
	int unloadDataNoCompression(ImageData image, OutputStream ostr);
	override void unloadIntoByteStream(ImageLoader loader);
	void flipScanLines(byte[] data, int stride, int height);
}

