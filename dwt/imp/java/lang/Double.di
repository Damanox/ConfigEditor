// D import file generated from 'java\lang\Double.d'
module java.lang.Double;
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
class Double : Number
{
	public static double POSITIVE_INFINITY = (double).infinity;


	public static double NEGATIVE_INFINITY = -(double).infinity;


	public static double MAX_VALUE = (double).max;


	public static double MIN_VALUE = (double).min_normal;


	private double value = 0;

	this(double value);
	this(String str);
	public static String toString(double value);

	public static double parseDouble(String s);

	private static Class TYPE_;


	public static Class TYPE();

	public override byte byteValue();

	public override short shortValue();

	public override int intValue();

	public override long longValue();

	public override float floatValue();

	public override double doubleValue();

}
