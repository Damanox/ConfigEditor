// D import file generated from 'org\eclipse\swt\internal\image\TIFFDirectory.d'
module org.eclipse.swt.internal.image.TIFFDirectory;
import org.eclipse.swt.internal.image.TIFFRandomFileAccess;
import org.eclipse.swt.internal.image.TIFFModifiedHuffmanCodec;
import org.eclipse.swt.internal.image.LEDataOutputStream;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.SWT;
import java.lang.all;
final class TIFFDirectory
{
	TIFFRandomFileAccess file;
	bool isLittleEndian;
	ImageLoader loader;
	int depth;
	int imageWidth;
	int imageLength;
	int[] bitsPerSample;
	int compression;
	int photometricInterpretation;
	int[] stripOffsets;
	int samplesPerPixel;
	int rowsPerStrip;
	int[] stripByteCounts;
	int t4Options;
	int colorMapOffset;
	ImageData image;
	LEDataOutputStream ostr;
	static const int NO_VALUE = -1;

	static const short TAG_ImageWidth = 256;

	static const short TAG_ImageLength = 257;

	static const short TAG_BitsPerSample = 258;

	static const short TAG_Compression = 259;

	static const short TAG_PhotometricInterpretation = 262;

	static const short TAG_StripOffsets = 273;

	static const short TAG_SamplesPerPixel = 277;

	static const short TAG_RowsPerStrip = 278;

	static const short TAG_StripByteCounts = 279;

	static const short TAG_XResolution = 282;

	static const short TAG_YResolution = 283;

	static const short TAG_T4Options = 292;

	static const short TAG_ResolutionUnit = 296;

	static const short TAG_ColorMap = 320;

	static const int TYPE_BYTE = 1;

	static const int TYPE_ASCII = 2;

	static const int TYPE_SHORT = 3;

	static const int TYPE_LONG = 4;

	static const int TYPE_RATIONAL = 5;

	static const int COMPRESSION_NONE = 1;

	static const int COMPRESSION_CCITT_3_1 = 2;

	static const int COMPRESSION_PACKBITS = 32773;

	static const int IFD_ENTRY_SIZE = 12;

	public this(TIFFRandomFileAccess file, bool isLittleEndian, ImageLoader loader);

	public this(ImageData image);

	int decodePackBits(byte[] src, byte[] dest, int offsetDest);
	int getEntryValue(int type, byte[] buffer, int index);
	void getEntryValue(int type, byte[] buffer, int index, int[] values);
	void decodePixels(ImageData image);
	PaletteData getColorMap();
	PaletteData getGrayPalette();
	PaletteData getRGBPalette(int bitsR, int bitsG, int bitsB);
	int formatStrips(int rowByteSize, int nbrRows, byte[] data, int maxStripByteSize, int offsetPostIFD, int extraBytes, int[][] strips);
	int[] formatColorMap(RGB[] rgbs);
	void parseEntries(byte[] buffer);
	public ImageData read();

	int toInt(byte[] buffer, int i, int type);
	void write(int photometricInterpretation);
	void writeEntry(short tag, int type, int count, int value);
	void writeHeader();
	void writeToStream(LEDataOutputStream byteStream);
}

