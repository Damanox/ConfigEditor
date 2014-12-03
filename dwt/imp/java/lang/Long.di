// D import file generated from 'java\lang\Long.d'
module java.lang.Long;
import java.lang.util;
import java.lang.exceptions;
import java.lang.Number;
import java.lang.Character;
import java.lang.Class;
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
class Long : Number
{
	public static const long MIN_VALUE = (long).min;


	public static const long MAX_VALUE = (long).max;


	private long value;

	this(long value);
	this(String str);
	public override byte byteValue();

	public override short shortValue();

	public override int intValue();

	public override long longValue();

	public override float floatValue();

	public override double doubleValue();

	public static long parseLong(String s);

	public static long parseLong(String s, int radix);

	public static String toString(long i);

	private static Class TYPE_;


	public static Class TYPE();

}
alias Long ValueWrapperLong;
