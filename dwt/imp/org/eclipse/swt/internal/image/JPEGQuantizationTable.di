// D import file generated from 'org\eclipse\swt\internal\image\JPEGQuantizationTable.d'
module org.eclipse.swt.internal.image.JPEGQuantizationTable;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.JPEGFileFormat;
import java.lang.System;
final class JPEGQuantizationTable : JPEGVariableSizeSegment
{
	public static byte[] DefaultLuminanceQTable = [cast(byte)255, cast(byte)219, 0, 67, 0, 16, 11, 10, 16, 24, 40, 51, 61, 12, 12, 14, 19, 26, 58, 60, 55, 14, 13, 16, 24, 40, 57, 69, 56, 14, 17, 22, 29, 51, 87, 80, 62, 18, 22, 37, 56, 68, 109, 103, 77, 24, 35, 55, 64, 81, 104, 113, 92, 49, 64, 78, 87, 103, 121, 120, 101, 72, 92, 95, 98, 112, 100, 103, 99];


	public static byte[] DefaultChrominanceQTable = [cast(byte)255, cast(byte)219, 0, 67, 1, 17, 18, 24, 47, 99, 99, 99, 99, 18, 21, 26, 66, 99, 99, 99, 99, 24, 26, 56, 99, 99, 99, 99, 99, 47, 66, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99];


	public this(byte[] reference);

	public this(LEDataInputStream byteStream);

	public static JPEGQuantizationTable defaultChrominanceTable();

	public static JPEGQuantizationTable defaultLuminanceTable();

	public int[] getQuantizationTablesKeys();

	public int[][] getQuantizationTablesValues();

	public void scaleBy(int qualityFactor);

	public override int signature();

}

