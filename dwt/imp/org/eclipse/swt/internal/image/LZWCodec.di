// D import file generated from 'org\eclipse\swt\internal\image\LZWCodec.d'
module org.eclipse.swt.internal.image.LZWCodec;
import org.eclipse.swt.internal.image.LZWNode;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.LEDataOutputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import java.lang.all;
final class LZWCodec
{
	int bitsPerPixel;
	int blockSize;
	int blockIndex;
	int currentByte;
	int bitsLeft;
	int codeSize;
	int clearCode;
	int endCode;
	int newCodes;
	int topSlot;
	int currentSlot;
	int imageWidth;
	int imageHeight;
	int imageX;
	int imageY;
	int pass;
	int line;
	int codeMask;
	byte[] block;
	byte[] lineArray;
	int[] stack;
	int[] suffix;
	int[] prefix;
	LZWNode[] nodeStack;
	LEDataInputStream inputStream;
	LEDataOutputStream outputStream;
	ImageData image;
	ImageLoader loader;
	bool interlaced;
	static const int[] MASK_TABLE = [1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095];

	void decode();
	public void decode(LEDataInputStream inputStream, ImageLoader loader, ImageData image, bool interlaced, int depth);

	void encode();
	public void encode(LEDataOutputStream byteStream, ImageData image);

	int encodeLoop();
	void initializeForDecoding();
	void initializeForEncoding();
	int nextCode();
	int nextPixel();
	void nextPixels(byte[] buf, int lineWidth);
	void nextPutCode(int aCode);
	void nextPutPixels(byte[] buf);
	void copyRow(byte[] buf, int copies);
	int readBlock();
	void writeBlock();
}

