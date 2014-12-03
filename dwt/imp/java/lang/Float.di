// D import file generated from 'java\lang\Float.d'
module java.lang.Float;
import java.lang.util;
import java.lang.exceptions;
import java.lang.Number;
import java.lang.Class;
import java.lang.String;
version (Tango)
{
	static import tango.text.convert.Float;
}
else
{
	static import std.conv;
}
class Float : Number
{
	public static float POSITIVE_INFINITY = (float).infinity;


	public static float NEGATIVE_INFINITY = -(float).infinity;


	public static float NaN = (float).nan;


	public static float MAX_VALUE = 0x1.fffffe54daff837cp+127F;


	public static float MIN_VALUE = (float).min_normal;


	public static int SIZE = 32;


	private float value = 0;

	this(float value);
	this(String str);
	public static String toString(float value);

	public static float parseFloat(String s);

	private static Class TYPE_;


	public static Class TYPE();

	public override byte byteValue();

	public override short shortValue();

	public override int intValue();

	public override long longValue();

	public override float floatValue();

	public override double doubleValue();

}
