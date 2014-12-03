// D import file generated from 'org\eclipse\swt\internal\image\PngLzBlockReader.d'
module org.eclipse.swt.internal.image.PngLzBlockReader;
import org.eclipse.swt.internal.image.PngDecodingDataStream;
import org.eclipse.swt.internal.image.PngHuffmanTables;
public class PngLzBlockReader
{
	bool isLastBlock;
	byte compressionType;
	int uncompressedBytesRemaining;
	PngDecodingDataStream stream;
	PngHuffmanTables huffmanTables;
	byte[] window;
	int windowIndex;
	int copyIndex;
	int copyBytesRemaining;
	static const int UNCOMPRESSED = 0;

	static const int COMPRESSED_FIXED = 1;

	static const int COMPRESSED_DYNAMIC = 2;

	static const int END_OF_COMPRESSED_BLOCK = 256;

	static const int FIRST_LENGTH_CODE = 257;

	static const int LAST_LENGTH_CODE = 285;

	static const int FIRST_DISTANCE_CODE = 1;

	static const int LAST_DISTANCE_CODE = 29;

	static const int FIRST_CODE_LENGTH_CODE = 4;

	static const int LAST_CODE_LENGTH_CODE = 19;

	static const int[] lengthBases = [3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59, 67, 83, 99, 115, 131, 163, 195, 227, 258];

	static const int[] extraLengthBits = [0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0];

	static const int[] distanceBases = [1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, 193, 257, 385, 513, 769, 1025, 1537, 2049, 3073, 4097, 6145, 8193, 12289, 16385, 24577];

	static const int[] extraDistanceBits = [0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13];

	this(PngDecodingDataStream stream);
	void setWindowSize(int windowSize);
	void readNextBlockHeader();
	byte getNextByte();
	private void assertBlockAtEnd();

	void assertCompressedDataAtEnd();
	private byte getNextCompressedByte();

}

