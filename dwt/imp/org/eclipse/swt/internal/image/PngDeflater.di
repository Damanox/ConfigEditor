// D import file generated from 'org\eclipse\swt\internal\image\PngDeflater.d'
module org.eclipse.swt.internal.image.PngDeflater;
import java.io.ByteArrayOutputStream;
import java.lang.all;
public class PngDeflater
{
	static const int BASE = 65521;

	static const int WINDOW = 32768;

	static const int MIN_LENGTH = 3;

	static const int MAX_MATCHES = 32;

	static const int HASH = 8209;

	TryConst!byte[] istr;
	int inLength;
	ByteArrayOutputStream bytes;
	int adler32 = 1;
	int buffer;
	int bitCount;
	Link[HASH] hashtable;
	Link[WINDOW] window;
	int nextWindow;
	public this();

	class Link
	{
		int hash;
		int value;
		Link previous;
		Link next;
		this();
	}
	static class Match
	{
		int length;
		int distance;
		this(int length, int distance);
	}

	static const short[] mirrorBytes = [cast(short)0, 128, 64, 192, 32, 160, 96, 224, 16, 144, 80, 208, 48, 176, 112, 240, 8, 136, 72, 200, 40, 168, 104, 232, 24, 152, 88, 216, 56, 184, 120, 248, 4, 132, 68, 196, 36, 164, 100, 228, 20, 148, 84, 212, 52, 180, 116, 244, 12, 140, 76, 204, 44, 172, 108, 236, 28, 156, 92, 220, 60, 188, 124, 252, 2, 130, 66, 194, 34, 162, 98, 226, 18, 146, 82, 210, 50, 178, 114, 242, 10, 138, 74, 202, 42, 170, 106, 234, 26, 154, 90, 218, 58, 186, 122, 250, 6, 134, 70, 198, 38, 166, 102, 230, 22, 150, 86, 214, 54, 182, 118, 246, 14, 142, 78, 206, 46, 174, 110, 238, 30, 158, 94, 222, 62, 190, 126, 254, 1, 129, 65, 193, 33, 161, 97, 225, 17, 145, 81, 209, 49, 177, 113, 241, 9, 137, 73, 201, 41, 169, 105, 233, 25, 153, 89, 217, 57, 185, 121, 249, 5, 133, 69, 197, 37, 165, 101, 229, 21, 149, 85, 213, 53, 181, 117, 245, 13, 141, 77, 205, 45, 173, 109, 237, 29, 157, 93, 221, 61, 189, 125, 253, 3, 131, 67, 195, 35, 163, 99, 227, 19, 147, 83, 211, 51, 179, 115, 243, 11, 139, 75, 203, 43, 171, 107, 235, 27, 155, 91, 219, 59, 187, 123, 251, 7, 135, 71, 199, 39, 167, 103, 231, 23, 151, 87, 215, 55, 183, 119, 247, 15, 143, 79, 207, 47, 175, 111, 239, 31, 159, 95, 223, 63, 191, 127, 255];

	static class Code
	{
		int code;
		int extraBits;
		int min;
		int max;
		this(int code, int extraBits, int min, int max);
	}

	mixin(gshared!"static TryConst!(Code[]) lengthCodes;");
	mixin(gshared!"static TryConst!(Code[]) distanceCodes;");
	mixin(sharedStaticThis!"{\x0a    lengthCodes = [\x0a        new Code(257, 0, 3, 3),\x0a        new Code(258, 0, 4, 4),\x0a        new Code(259, 0, 5, 5),\x0a        new Code(260, 0, 6, 6),\x0a        new Code(261, 0, 7, 7),\x0a        new Code(262, 0, 8, 8),\x0a        new Code(263, 0, 9, 9),\x0a        new Code(264, 0, 10, 10),\x0a        new Code(265, 1, 11, 12),\x0a        new Code(266, 1, 13, 14),\x0a        new Code(267, 1, 15, 16),\x0a        new Code(268, 1, 17, 18),\x0a        new Code(269, 2, 19, 22),\x0a        new Code(270, 2, 23, 26),\x0a        new Code(271, 2, 27, 30),\x0a        new Code(272, 2, 31, 34),\x0a        new Code(273, 3, 35, 42),\x0a        new Code(274, 3, 43, 50),\x0a        new Code(275, 3, 51, 58),\x0a        new Code(276, 3, 59, 66),\x0a        new Code(277, 4, 67, 82),\x0a        new Code(278, 4, 83, 98),\x0a        new Code(279, 4, 99, 114),\x0a        new Code(280, 4, 115, 130),\x0a        new Code(281, 5, 131, 162),\x0a        new Code(282, 5, 163, 194),\x0a        new Code(283, 5, 195, 226),\x0a        new Code(284, 5, 227, 257),\x0a        new Code(285, 0, 258, 258)];\x0a\x0a    distanceCodes = [\x0a        new Code(0, 0, 1, 1),\x0a        new Code(1, 0, 2, 2),\x0a        new Code(2, 0, 3, 3),\x0a        new Code(3, 0, 4, 4),\x0a        new Code(4, 1, 5, 6),\x0a        new Code(5, 1, 7, 8),\x0a        new Code(6, 2, 9, 12),\x0a        new Code(7, 2, 13, 16),\x0a        new Code(8, 3, 17, 24),\x0a        new Code(9, 3, 25, 32),\x0a        new Code(10, 4, 33, 48),\x0a        new Code(11, 4, 49, 64),\x0a        new Code(12, 5, 65, 96),\x0a        new Code(13, 5, 97, 128),\x0a        new Code(14, 6, 129, 192),\x0a        new Code(15, 6, 193, 256),\x0a        new Code(16, 7, 257, 384),\x0a        new Code(17, 7, 385, 512),\x0a        new Code(18, 8, 513, 768),\x0a        new Code(19, 8, 769, 1024),\x0a        new Code(20, 9, 1025, 1536),\x0a        new Code(21, 9, 1537, 2048),\x0a        new Code(22, 10, 2049, 3072),\x0a        new Code(23, 10, 3073, 4096),\x0a        new Code(24, 11, 4097, 6144),\x0a        new Code(25, 11, 6145, 8192),\x0a        new Code(26, 12, 8193, 12288),\x0a        new Code(27, 12, 12289, 16384),\x0a        new Code(28, 13, 16385, 24576),\x0a        new Code(29, 13, 24577, 32768)];\x0a}");
	void writeShortLSB(ByteArrayOutputStream baos, int theShort);
	void writeInt(ByteArrayOutputStream baos, int theInt);
	void updateAdler(byte value);
	int hash(in byte[] bytes);
	void writeBits(int value, int count);
	void alignToByte();
	void outputLiteral(byte literal);
	TryConst!Code findCode(int value, in Code[] codes);
	void outputMatch(int length, int distance);
	Match findLongestMatch(int position, Link firstPosition);
	void updateHashtable(int to, int from);
	void compress();
	void compressHuffmanOnly();
	void store();
	public byte[] deflate(in byte[] input);

}

