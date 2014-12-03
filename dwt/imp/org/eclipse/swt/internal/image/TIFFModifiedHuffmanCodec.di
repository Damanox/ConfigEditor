// D import file generated from 'org\eclipse\swt\internal\image\TIFFModifiedHuffmanCodec.d'
module org.eclipse.swt.internal.image.TIFFModifiedHuffmanCodec;
import org.eclipse.swt.SWT;
import java.lang.all;
final class TIFFModifiedHuffmanCodec
{
	static const short[][][] BLACK_CODE = [[[cast(short)2, 3], [cast(short)3, 2]], [[cast(short)2, 1], [cast(short)3, 4]], [[cast(short)2, 6], [cast(short)3, 5]], [[cast(short)3, 7]], [[cast(short)4, 9], [cast(short)5, 8]], [[cast(short)4, 10], [cast(short)5, 11], [cast(short)7, 12]], [[cast(short)4, 13], [cast(short)7, 14]], [[cast(short)24, 15]], [[cast(short)8, 18], [cast(short)15, 64], [cast(short)23, 16], [cast(short)24, 17], [cast(short)55, 0]], [[cast(short)0, -1], [cast(short)8, 1792], [cast(short)23, 24], [cast(short)24, 25], [cast(short)40, 23], [cast(short)55, 22], [cast(short)103, 19], [cast(short)104, 20], [cast(short)108, 21], [cast(short)12, 1856], [cast(short)13, 1920]], [[cast(short)18, 1984], [cast(short)19, 2048], [cast(short)20, 2112], [cast(short)21, 2176], [cast(short)22, 2240], [cast(short)23, 2304], [cast(short)28, 2368], [cast(short)29, 2432], [cast(short)30, 2496], [cast(short)31, 2560], [cast(short)36, 52], [cast(short)39, 55], [cast(short)40, 56], [cast(short)43, 59], [cast(short)44, 60], [cast(short)51, 320], [cast(short)52, 384], [cast(short)53, 448], [cast(short)55, 53], [cast(short)56, 54], [cast(short)82, 50], [cast(short)83, 51], [cast(short)84, 44], [cast(short)85, 45], [cast(short)86, 46], [cast(short)87, 47], [cast(short)88, 57], [cast(short)89, 58], [cast(short)90, 61], [cast(short)91, 256], [cast(short)100, 48], [cast(short)101, 49], [cast(short)102, 62], [cast(short)103, 63], [cast(short)104, 30], [cast(short)105, 31], [cast(short)106, 32], [cast(short)107, 33], [cast(short)108, 40], [cast(short)109, 41], [cast(short)200, 128], [cast(short)201, 192], [cast(short)202, 26], [cast(short)203, 27], [cast(short)204, 28], [cast(short)205, 29], [cast(short)210, 34], [cast(short)211, 35], [cast(short)212, 36], [cast(short)213, 37], [cast(short)214, 38], [cast(short)215, 39], [cast(short)218, 42], [cast(short)219, 43]], [[cast(short)74, 640], [cast(short)75, 704], [cast(short)76, 768], [cast(short)77, 832], [cast(short)82, 1280], [cast(short)83, 1344], [cast(short)84, 1408], [cast(short)85, 1472], [cast(short)90, 1536], [cast(short)91, 1600], [cast(short)100, 1664], [cast(short)101, 1728], [cast(short)108, 512], [cast(short)109, 576], [cast(short)114, 896], [cast(short)115, 960], [cast(short)116, 1024], [cast(short)117, 1088], [cast(short)118, 1152], [cast(short)119, 1216]]];

	static const short[][][] WHITE_CODE = [[[cast(short)7, 2], [cast(short)8, 3], [cast(short)11, 4], [cast(short)12, 5], [cast(short)14, 6], [cast(short)15, 7]], [[cast(short)7, 10], [cast(short)8, 11], [cast(short)18, 128], [cast(short)19, 8], [cast(short)20, 9], [cast(short)27, 64]], [[cast(short)3, 13], [cast(short)7, 1], [cast(short)8, 12], [cast(short)23, 192], [cast(short)24, 1664], [cast(short)42, 16], [cast(short)43, 17], [cast(short)52, 14], [cast(short)53, 15]], [[cast(short)3, 22], [cast(short)4, 23], [cast(short)8, 20], [cast(short)12, 19], [cast(short)19, 26], [cast(short)23, 21], [cast(short)24, 28], [cast(short)36, 27], [cast(short)39, 18], [cast(short)40, 24], [cast(short)43, 25], [cast(short)55, 256]], [[cast(short)2, 29], [cast(short)3, 30], [cast(short)4, 45], [cast(short)5, 46], [cast(short)10, 47], [cast(short)11, 48], [cast(short)18, 33], [cast(short)19, 34], [cast(short)20, 35], [cast(short)21, 36], [cast(short)22, 37], [cast(short)23, 38], [cast(short)26, 31], [cast(short)27, 32], [cast(short)36, 53], [cast(short)37, 54], [cast(short)40, 39], [cast(short)41, 40], [cast(short)42, 41], [cast(short)43, 42], [cast(short)44, 43], [cast(short)45, 44], [cast(short)50, 61], [cast(short)51, 62], [cast(short)52, 63], [cast(short)53, 0], [cast(short)54, 320], [cast(short)55, 384], [cast(short)74, 59], [cast(short)75, 60], [cast(short)82, 49], [cast(short)83, 50], [cast(short)84, 51], [cast(short)85, 52], [cast(short)88, 55], [cast(short)89, 56], [cast(short)90, 57], [cast(short)91, 58], [cast(short)100, 448], [cast(short)101, 512], [cast(short)103, 640], [cast(short)104, 576]], [[cast(short)152, 1472], [cast(short)153, 1536], [cast(short)154, 1600], [cast(short)155, 1728], [cast(short)204, 704], [cast(short)205, 768], [cast(short)210, 832], [cast(short)211, 896], [cast(short)212, 960], [cast(short)213, 1024], [cast(short)214, 1088], [cast(short)215, 1152], [cast(short)216, 1216], [cast(short)217, 1280], [cast(short)218, 1344], [cast(short)219, 1408]], [], [[cast(short)8, 1792], [cast(short)12, 1856], [cast(short)13, 1920]], [[cast(short)1, -1], [cast(short)18, 1984], [cast(short)19, 2048], [cast(short)20, 2112], [cast(short)21, 2176], [cast(short)22, 2240], [cast(short)23, 2304], [cast(short)28, 2368], [cast(short)29, 2432], [cast(short)30, 2496], [cast(short)31, 2560]]];

	static const int BLACK_MIN_BITS = 2;

	static const int WHITE_MIN_BITS = 4;

	bool isWhite;
	int whiteValue = 0;
	int blackValue = 1;
	byte[] src;
	byte[] dest;
	int byteOffsetSrc = 0;
	int bitOffsetSrc = 0;
	int byteOffsetDest = 0;
	int bitOffsetDest = 0;
	int code = 0;
	int nbrBits = 0;
	int rowSize;
	public int decode(byte[] src, byte[] dest, int offsetDest, int rowSize, int nRows);

	bool decodeRow();
	int decodeRunLength();
	int getNextBit();
	int getNextBits(int cnt);
	void setNextBits(int value, int cnt);
}

