// D import file generated from 'org\eclipse\swt\internal\image\PngIhdrChunk.d'
module org.eclipse.swt.internal.image.PngIhdrChunk;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngChunk;
class PngIhdrChunk : PngChunk
{
	static const int IHDR_DATA_LENGTH = 13;

	static const int WIDTH_DATA_OFFSET = DATA_OFFSET + 0;

	static const int HEIGHT_DATA_OFFSET = DATA_OFFSET + 4;

	static const int BIT_DEPTH_OFFSET = DATA_OFFSET + 8;

	static const int COLOR_TYPE_OFFSET = DATA_OFFSET + 9;

	static const int COMPRESSION_METHOD_OFFSET = DATA_OFFSET + 10;

	static const int FILTER_METHOD_OFFSET = DATA_OFFSET + 11;

	static const int INTERLACE_METHOD_OFFSET = DATA_OFFSET + 12;

	static const byte COLOR_TYPE_GRAYSCALE = 0;

	static const byte COLOR_TYPE_RGB = 2;

	static const byte COLOR_TYPE_PALETTE = 3;

	static const byte COLOR_TYPE_GRAYSCALE_WITH_ALPHA = 4;

	static const byte COLOR_TYPE_RGB_WITH_ALPHA = 6;

	static const int INTERLACE_METHOD_NONE = 0;

	static const int INTERLACE_METHOD_ADAM7 = 1;

	static const int FILTER_NONE = 0;

	static const int FILTER_SUB = 1;

	static const int FILTER_UP = 2;

	static const int FILTER_AVERAGE = 3;

	static const int FILTER_PAETH = 4;

	static const byte[] ValidBitDepths = [cast(byte)1, 2, 4, 8, 16];

	static const byte[] ValidColorTypes = [cast(byte)0, 2, 3, 4, 6];

	int width;
	int height;
	byte bitDepth;
	byte colorType;
	byte compressionMethod;
	byte filterMethod;
	byte interlaceMethod;
	this(int width, int height, byte bitDepth, byte colorType, byte compressionMethod, byte filterMethod, byte interlaceMethod);
	this(byte[] reference);
	override int getChunkType();
	int getWidth();
	void setWidth(int value);
	int getHeight();
	void setHeight(int value);
	byte getBitDepth();
	void setBitDepth(byte value);
	byte getColorType();
	void setColorType(byte value);
	byte getCompressionMethod();
	void setCompressionMethod(byte value);
	byte getFilterMethod();
	void setFilterMethod(byte value);
	byte getInterlaceMethod();
	void setInterlaceMethod(byte value);
	override void validate(PngFileReadState readState, PngIhdrChunk headerChunk);
	String getColorTypeString();
	String getFilterMethodString();
	String getInterlaceMethodString();
	override String contributeToString();
	bool getMustHavePalette();
	bool getCanHavePalette();
	int getBitsPerPixel();
	int getSwtBitsPerPixel();
	int getFilterByteOffset();
	bool usesDirectColor();
	PaletteData createGrayscalePalette();
	PaletteData getPaletteData();
}
