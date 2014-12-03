// D import file generated from 'org\eclipse\swt\internal\image\PngHuffmanTable.d'
module org.eclipse.swt.internal.image.PngHuffmanTable;
import org.eclipse.swt.internal.image.PngDecodingDataStream;
public class PngHuffmanTable
{
	CodeLengthInfo[] codeLengthInfo;
	int[] codeValues;
	static const int MAX_CODE_LENGTH = 15;

	static const int BAD_CODE = 268435455;

	static const int[] incs = [1391376, 463792, 198768, 86961, 33936, 13776, 4592, 1968, 861, 336, 112, 48, 21, 7, 3, 1];

	this(int[] lengths);
	private void initialize(in int[] lengths);

	private void generateTable(int[] lengths);

	int getNextValue(PngDecodingDataStream stream);
	static class CodeLengthInfo
	{
		int length;
		int max;
		int min;
		int baseIndex;
	}

}

