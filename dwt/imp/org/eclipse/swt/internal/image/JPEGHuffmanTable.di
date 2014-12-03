// D import file generated from 'org\eclipse\swt\internal\image\JPEGHuffmanTable.d'
module org.eclipse.swt.internal.image.JPEGHuffmanTable;
import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.JPEGFileFormat;
import java.lang.System;
final class JPEGHuffmanTable : JPEGVariableSizeSegment
{
	JPEGHuffmanTable[] allTables;
	int tableClass;
	int tableIdentifier;
	int[] dhMaxCodes;
	int[] dhMinCodes;
	int[] dhValPtrs;
	int[] dhValues;
	int[] ehCodes;
	byte[] ehCodeLengths;
	static byte[] DCLuminanceTable = [cast(byte)255, cast(byte)196, 0, 31, 0, 0, 1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

	static byte[] DCChrominanceTable = [cast(byte)255, cast(byte)196, 0, 31, 1, 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

	static byte[] ACLuminanceTable = [cast(byte)255, cast(byte)196, 0, cast(byte)181, 16, 0, 2, 1, 3, 3, 2, 4, 3, 5, 5, 4, 4, 0, 0, 1, 125, 1, 2, 3, 0, 4, 17, 5, 18, 33, 49, 65, 6, 19, 81, 97, 7, 34, 113, 20, 50, cast(byte)129, cast(byte)145, cast(byte)161, 8, 35, 66, cast(byte)177, cast(byte)193, 21, 82, cast(byte)209, cast(byte)240, 36, 51, 98, 114, cast(byte)130, 9, 10, 22, 23, 24, 25, 26, 37, 38, 39, 40, 41, 42, 52, 53, 54, 55, 56, 57, 58, 67, 68, 69, 70, 71, 72, 73, 74, 83, 84, 85, 86, 87, 88, 89, 90, 99, 100, 101, 102, 103, 104, 105, 106, 115, 116, 117, 118, 119, 120, 121, 122, cast(byte)131, cast(byte)132, cast(byte)133, cast(byte)134, cast(byte)135, cast(byte)136, cast(byte)137, cast(byte)138, cast(byte)146, cast(byte)147, cast(byte)148, cast(byte)149, cast(byte)150, cast(byte)151, cast(byte)152, cast(byte)153, cast(byte)154, cast(byte)162, cast(byte)163, cast(byte)164, cast(byte)165, cast(byte)166, cast(byte)167, cast(byte)168, cast(byte)169, cast(byte)170, cast(byte)178, cast(byte)179, cast(byte)180, cast(byte)181, cast(byte)182, cast(byte)183, cast(byte)184, cast(byte)185, cast(byte)186, cast(byte)194, cast(byte)195, cast(byte)196, cast(byte)197, cast(byte)198, cast(byte)199, cast(byte)200, cast(byte)201, cast(byte)202, cast(byte)210, cast(byte)211, cast(byte)212, cast(byte)213, cast(byte)214, cast(byte)215, cast(byte)216, cast(byte)217, cast(byte)218, cast(byte)225, cast(byte)226, cast(byte)227, cast(byte)228, cast(byte)229, cast(byte)230, cast(byte)231, cast(byte)232, cast(byte)233, cast(byte)234, cast(byte)241, cast(byte)242, cast(byte)243, cast(byte)244, cast(byte)245, cast(byte)246, cast(byte)247, cast(byte)248, cast(byte)249, cast(byte)250];

	static byte[] ACChrominanceTable = [cast(byte)255, cast(byte)196, 0, cast(byte)181, 17, 0, 2, 1, 2, 4, 4, 3, 4, 7, 5, 4, 4, 0, 1, 2, 119, 0, 1, 2, 3, 17, 4, 5, 33, 49, 6, 18, 65, 81, 7, 97, 113, 19, 34, 50, cast(byte)129, 8, 20, 66, cast(byte)145, cast(byte)161, cast(byte)177, cast(byte)193, 9, 35, 51, 82, cast(byte)240, 21, 98, 114, cast(byte)209, 10, 22, 36, 52, cast(byte)225, 37, cast(byte)241, 23, 24, 25, 26, 38, 39, 40, 41, 42, 53, 54, 55, 56, 57, 58, 67, 68, 69, 70, 71, 72, 73, 74, 83, 84, 85, 86, 87, 88, 89, 90, 99, 100, 101, 102, 103, 104, 105, 106, 115, 116, 117, 118, 119, 120, 121, 122, cast(byte)130, cast(byte)131, cast(byte)132, cast(byte)133, cast(byte)134, cast(byte)135, cast(byte)136, cast(byte)137, cast(byte)138, cast(byte)146, cast(byte)147, cast(byte)148, cast(byte)149, cast(byte)150, cast(byte)151, cast(byte)152, cast(byte)153, cast(byte)154, cast(byte)162, cast(byte)163, cast(byte)164, cast(byte)165, cast(byte)166, cast(byte)167, cast(byte)168, cast(byte)169, cast(byte)170, cast(byte)178, cast(byte)179, cast(byte)180, cast(byte)181, cast(byte)182, cast(byte)183, cast(byte)184, cast(byte)185, cast(byte)186, cast(byte)194, cast(byte)195, cast(byte)196, cast(byte)197, cast(byte)198, cast(byte)199, cast(byte)200, cast(byte)201, cast(byte)202, cast(byte)210, cast(byte)211, cast(byte)212, cast(byte)213, cast(byte)214, cast(byte)215, cast(byte)216, cast(byte)217, cast(byte)218, cast(byte)226, cast(byte)227, cast(byte)228, cast(byte)229, cast(byte)230, cast(byte)231, cast(byte)232, cast(byte)233, cast(byte)234, cast(byte)242, cast(byte)243, cast(byte)244, cast(byte)245, cast(byte)246, cast(byte)247, cast(byte)248, cast(byte)249, cast(byte)250];

	public this(byte[] reference);

	public this(LEDataInputStream byteStream);

	public JPEGHuffmanTable[] getAllTables();

	public static JPEGHuffmanTable getDefaultACChrominanceTable();

	public static JPEGHuffmanTable getDefaultACLuminanceTable();

	public static JPEGHuffmanTable getDefaultDCChrominanceTable();

	public static JPEGHuffmanTable getDefaultDCLuminanceTable();

	public int[] getDhMaxCodes();

	public int[] getDhMinCodes();

	public int[] getDhValPtrs();

	public int[] getDhValues();

	public int getTableClass();

	public int getTableIdentifier();

	void initialize();
	public override int signature();

}

