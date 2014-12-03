// D import file generated from 'java\lang\Integer.d'
module java.lang.Integer;
import java.lang.util;
import java.lang.exceptions;
import java.lang.Number;
import java.lang.Class;
import java.lang.Character;
import java.lang.String;
version (Tango)
{
	static import tango.text.convert.Integer;
}
else
{
	static import std.conv;
	static import std.string;
}
class Integer : Number
{
	public static const int MIN_VALUE = 2147483648u;


	public static const int MAX_VALUE = 2147483647;


	public static const int SIZE = 32;


	private int value;

	public this(void* value);

	public this(int value);

	public this(String s);

	public static String toString(int i, int radix);

	public static String toHexString(int i);

	public static String toOctalString(int i);

	public static String toBinaryString(int i);

	public static String toString(int i);

	public static int parseInt(String s, int radix);

	public static int parseInt(String s);

	public static Integer valueOf(String s, int radix);

	public static Integer valueOf(String s);

	public static Integer valueOf(int i);

	public override byte byteValue();

	public override short shortValue();

	public override int intValue();

	public override long longValue();

	public override float floatValue();

	public override double doubleValue();

	public override hash_t toHash();

	public override String toString();

	private static Class TYPE_;


	public static Class TYPE();

}
alias Integer ValueWrapperInt;
