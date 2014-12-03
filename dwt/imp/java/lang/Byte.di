// D import file generated from 'java\lang\Byte.d'
module java.lang.Byte;
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
class Byte : Number
{
	public static const byte MIN_VALUE = (byte).min;


	public static const byte MAX_VALUE = (byte).max;


	private byte value;

	public static byte parseByte(String s);

	this(byte value);
	public static String toString(byte i);

	private static Class TYPE_;


	public static Class TYPE();

	override byte byteValue();
	override double doubleValue();
	override float floatValue();
	override int intValue();
	override long longValue();
	override short shortValue();
}
alias Byte ValueWrapperByte;
