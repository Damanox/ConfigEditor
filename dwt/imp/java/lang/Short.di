// D import file generated from 'java\lang\Short.d'
module java.lang.Short;
import java.lang.util;
import java.lang.exceptions;
import java.lang.Number;
import java.lang.Class;
import java.lang.String;
version (Tango)
{
	static import tango.text.convert.Integer;
}
else
{
	static import std.conv;
}
class Short : Number
{
	public static const short MIN_VALUE = (short).min;


	public static const short MAX_VALUE = (short).max;


	private short value;

	public static short parseShort(String s);

	this(short value);
	public static String toString(short i);

	private static Class TYPE_;


	public static Class TYPE();

	override byte byteValue();
	override double doubleValue();
	override float floatValue();
	override int intValue();
	override long longValue();
	override short shortValue();
}
alias Short ValueWrapperShort;
