// D import file generated from 'org\eclipse\swt\internal\image\JPEGFileFormat.d'
module org.eclipse.swt.internal.image.JPEGFileFormat;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.JPEGFrameHeader;
import org.eclipse.swt.internal.image.JPEGScanHeader;
import org.eclipse.swt.internal.image.JPEGHuffmanTable;
import org.eclipse.swt.internal.image.JPEGAppn;
import org.eclipse.swt.internal.image.JPEGSegment;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.internal.image.JPEGComment;
import org.eclipse.swt.internal.image.JPEGArithmeticConditioningTable;
import org.eclipse.swt.internal.image.JPEGRestartInterval;
import org.eclipse.swt.internal.image.JPEGQuantizationTable;
import org.eclipse.swt.internal.image.JPEGStartOfImage;
import org.eclipse.swt.internal.image.JPEGDecoder;
import org.eclipse.swt.internal.image.JPEGEndOfImage;
import java.lang.all;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.PaletteData;
final class JPEGFileFormat : FileFormat
{
	int restartInterval;
	JPEGFrameHeader frameHeader;
	int imageWidth;
	int imageHeight;
	int interleavedMcuCols;
	int interleavedMcuRows;
	int maxV;
	int maxH;
	bool progressive;
	int samplePrecision;
	int nComponents;
	int[][] frameComponents;
	int[] componentIds;
	byte[][] imageComponents;
	int[] dataUnit;
	int[][][] dataUnits;
	int[] precedingDCs;
	JPEGScanHeader scanHeader;
	byte[] dataBuffer;
	int currentBitCount;
	int bufferCurrentPosition;
	int restartsToGo;
	int nextRestartNumber;
	JPEGHuffmanTable[] acHuffmanTables;
	JPEGHuffmanTable[] dcHuffmanTables;
	int[][] quantizationTables;
	int currentByte;
	int encoderQFactor = 75;
	int eobrun = 0;
	public static const int DCTSIZE = 8;


	public static const int DCTSIZESQR = 64;


	public static const int FIX_0_899976223 = 7373;


	public static const int FIX_1_961570560 = 16069;


	public static const int FIX_2_053119869 = 16819;


	public static const int FIX_0_298631336 = 2446;


	public static const int FIX_1_847759065 = 15137;


	public static const int FIX_1_175875602 = 9633;


	public static const int FIX_3_072711026 = 25172;


	public static const int FIX_0_765366865 = 6270;


	public static const int FIX_2_562915447 = 20995;


	public static const int FIX_0_541196100 = 4433;


	public static const int FIX_0_390180644 = 3196;


	public static const int FIX_1_501321110 = 12299;


	public static const int APP0 = 65504;


	public static const int APP15 = 65519;


	public static const int COM = 65534;


	public static const int DAC = 65484;


	public static const int DHP = 65502;


	public static const int DHT = 65476;


	public static const int DNL = 65500;


	public static const int DRI = 65501;


	public static const int DQT = 65499;


	public static const int EOI = 65497;


	public static const int EXP = 65503;


	public static const int JPG = 65480;


	public static const int JPG0 = 65520;


	public static const int JPG13 = 65533;


	public static const int RST0 = 65488;


	public static const int RST1 = 65489;


	public static const int RST2 = 65490;


	public static const int RST3 = 65491;


	public static const int RST4 = 65492;


	public static const int RST5 = 65493;


	public static const int RST6 = 65494;


	public static const int RST7 = 65495;


	public static const int SOF0 = 65472;


	public static const int SOF1 = 65473;


	public static const int SOF2 = 65474;


	public static const int SOF3 = 65475;


	public static const int SOF5 = 65477;


	public static const int SOF6 = 65478;


	public static const int SOF7 = 65479;


	public static const int SOF9 = 65481;


	public static const int SOF10 = 65482;


	public static const int SOF11 = 65483;


	public static const int SOF13 = 65485;


	public static const int SOF14 = 65486;


	public static const int SOF15 = 65487;


	public static const int SOI = 65496;


	public static const int SOS = 65498;


	public static const int TEM = 65281;


	public static const int TQI = 0;


	public static const int HI = 1;


	public static const int VI = 2;


	public static const int CW = 3;


	public static const int CH = 4;


	public static const int DC = 0;


	public static const int AC = 1;


	public static const int ID_Y = 1 - 1;


	public static const int ID_CB = 2 - 1;


	public static const int ID_CR = 3 - 1;


	mixin(gshared!"public static /*const*/ RGB[] RGB16;");
	public static const int[] ExtendTest = [0, 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144];


	public static const int[] ExtendOffset = [0, -1, -3, -7, -15, -31, -63, -127, -255, -511, -1023, -2047, -4095, -8191, -16383, -32767, -65535, -131071, -262143];


	public static const int[] ZigZag8x8 = [0, 1, 8, 16, 9, 2, 3, 10, 17, 24, 32, 25, 18, 11, 4, 5, 12, 19, 26, 33, 40, 48, 41, 34, 27, 20, 13, 6, 7, 14, 21, 28, 35, 42, 49, 56, 57, 50, 43, 36, 29, 22, 15, 23, 30, 37, 44, 51, 58, 59, 52, 45, 38, 31, 39, 46, 53, 60, 61, 54, 47, 55, 62, 63];


	mixin(gshared!"public static int[] CrRTable, CbBTable, CrGTable, CbGTable;");
	mixin(gshared!"public static int[] RYTable, GYTable, BYTable,\x0a        RCbTable, GCbTable, BCbTable, RCrTable, GCrTable, BCrTable, NBitsTable;");
	mixin(sharedStaticThis!"{\x0a\x0a        RGB16 = [\x0a            new RGB(0,0,0),\x0a            new RGB(0x80,0,0),\x0a            new RGB(0,0x80,0),\x0a            new RGB(0x80,0x80,0),\x0a            new RGB(0,0,0x80),\x0a            new RGB(0x80,0,0x80),\x0a            new RGB(0,0x80,0x80),\x0a            new RGB(0xC0,0xC0,0xC0),\x0a            new RGB(0x80,0x80,0x80),\x0a            new RGB(0xFF,0,0),\x0a            new RGB(0,0xFF,0),\x0a            new RGB(0xFF,0xFF,0),\x0a            new RGB(0,0,0xFF),\x0a            new RGB(0xFF,0,0xFF),\x0a            new RGB(0,0xFF,0xFF),\x0a            new RGB(0xFF,0xFF,0xFF)\x0a        ];\x0a        int [] rYTable = new int[256];\x0a        int [] gYTable = new int[256];\x0a        int [] bYTable = new int[256];\x0a        int [] rCbTable = new int[256];\x0a        int [] gCbTable = new int[256];\x0a        int [] bCbTable = new int[256];\x0a        int [] rCrTable = new int[256];\x0a        int [] gCrTable = new int[256];\x0a        int [] bCrTable = new int[256];\x0a        for (int i = 0; i < 256; i++) {\x0a            rYTable[i] = i * 19595;\x0a            gYTable[i] = i * 38470;\x0a            bYTable[i] = i * 7471 + 32768;\x0a            rCbTable[i] = i * -11059;\x0a            gCbTable[i] = i * -21709;\x0a            bCbTable[i] = i * 32768 + 8388608;\x0a            gCrTable[i] = i * -27439;\x0a            bCrTable[i] = i * -5329;\x0a        }\x0a        RYTable = rYTable;\x0a        GYTable = gYTable;\x0a        BYTable = bYTable;\x0a        RCbTable = rCbTable;\x0a        GCbTable = gCbTable;\x0a        BCbTable = bCbTable;\x0a        RCrTable = bCbTable;\x0a        GCrTable = gCrTable;\x0a        BCrTable = bCrTable;\x0a\x0a        /* Initialize YCbCr-RGB Tables */\x0a        int [] crRTable = new int[256];\x0a        int [] cbBTable = new int[256];\x0a        int [] crGTable = new int[256];\x0a        int [] cbGTable = new int[256];\x0a        for (int i = 0; i < 256; i++) {\x0a            int x2 = 2 * i - 255;\x0a            crRTable[i] = (45941 * x2 + 32768) >> 16;\x0a            cbBTable[i] = (58065 * x2 + 32768) >> 16;\x0a            crGTable[i] = -23401 * x2;\x0a            cbGTable[i] = -11277 * x2 + 32768;\x0a        }\x0a        CrRTable = crRTable;\x0a        CbBTable = cbBTable;\x0a        CrGTable = crGTable;\x0a        CbGTable = cbGTable;\x0a\x0a        /* Initialize BitCount Table */\x0a        int nBits = 1;\x0a        int power2 = 2;\x0a        int [] nBitsTable = new int[2048];\x0a        nBitsTable[0] = 0;\x0a        for (int i = 1; i < nBitsTable.length; i++) {\x0a            if (!(i < power2)) {\x0a                nBits++;\x0a                power2 *= 2;\x0a            }\x0a            nBitsTable[i] = nBits;\x0a        }\x0a        NBitsTable = nBitsTable;\x0a    }");
	void compress(ImageData image, byte[] dataYComp, byte[] dataCbComp, byte[] dataCrComp);
	void convert4BitRGBToYCbCr(ImageData image);
	void convert8BitRGBToYCbCr(ImageData image);
	byte[] convertCMYKToRGB();
	void convertImageToYCbCr(ImageData image);
	void convertMultiRGBToYCbCr(ImageData image);
	byte[] convertYToRGB();
	byte[] convertYCbCrToRGB();
	void decodeACCoefficients(int[] dataUnit, int iComp);
	void decodeACFirstCoefficients(int[] dataUnit, int iComp, int start, int end, int approxBit);
	void decodeACRefineCoefficients(int[] dataUnit, int iComp, int start, int end, int approxBit);
	int refineAC(int ac, int approxBit);
	void decodeDCCoefficient(int[] dataUnit, int iComp, bool first, int approxBit);
	void dequantize(int[] dataUnit, int iComp);
	byte[] decodeImageComponents();
	void decodeMCUAtXAndY(int xmcu, int ymcu, int nComponentsInScan, bool first, int start, int end, int approxBit);
	void decodeScan();
	int decodeUsingTable(JPEGHuffmanTable huffmanTable);
	void emit(int huffCode, int nBits);
	void emitByte(byte byteValue);
	void encodeACCoefficients(int[] dataUnit, int iComp);
	void encodeDCCoefficients(int[] dataUnit, int iComp);
	void encodeMCUAtXAndY(int xmcu, int ymcu);
	void encodeScan();
	void expandImageComponents();
	int extendBy(int diff, int t);
	void extractData(int[] dataUnit, int iComp, int xmcu, int ymcu, int ihi, int ivi);
	void forwardDCT(int[] dataUnit);
	void getAPP0();
	void getCOM();
	void getDAC();
	void getDHT();
	void getDNL();
	void getDQT();
	void getDRI();
	void inverseDCT(int[] dataUnit);
	override bool isFileFormat(LEDataInputStream stream);
	bool isZeroInColumn(int[] dataUnit, int col);
	bool isZeroInRow(int[] dataUnit, int rIndex);
	override ImageData[] loadFromByteStream();
	ImageData createImageData();
	int nextBit();
	void processRestartInterval();
	JPEGSegment processTables();
	void quantizeData(int[] dataUnit, int iComp);
	int receive(int nBits);
	void resetInputBuffer();
	void resetOutputBuffer();
	static JPEGSegment seekUnspecifiedMarker(LEDataInputStream byteStream);
	PaletteData setUpPalette();
	static void skipSegmentFrom(LEDataInputStream byteStream);
	void storeData(int[] dataUnit, int iComp, int xmcu, int ymcu, int hi, int ihi, int vi, int ivi);
	override void unloadIntoByteStream(ImageLoader loader);
}

