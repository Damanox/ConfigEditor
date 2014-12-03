// D import file generated from 'org\eclipse\swt\internal\image\PngDecodingDataStream.d'
module org.eclipse.swt.internal.image.PngDecodingDataStream;
import java.io.InputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.PngLzBlockReader;
public class PngDecodingDataStream : InputStream
{
	alias InputStream.read read;
	InputStream stream;
	byte currentByte;
	int nextBitIndex;
	PngLzBlockReader lzBlockReader;
	int adlerValue;
	static const int PRIME = 65521;

	static const int MAX_BIT = 7;

	this(InputStream stream);
	void assertImageDataAtEnd();
	public override void close();

	int getNextIdatBits(int length);
	int getNextIdatBit();
	byte getNextIdatByte();
	void updateAdler(byte value);
	public override int read();

	public override int read(byte[] buffer, int off, int len);

	void error();
	private void readCompressedDataHeader();

	void checkAdler();
}

