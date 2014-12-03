// D import file generated from 'java\lang\Math.d'
module java.lang.Math;
version (Tango)
{
	static import tango.math.Math;
	alias tango.math.Math MathLib;
}
else
{
	static import std.math;
	alias std.math MathLib;
}
class Math
{
	public static immutable double PI = MathLib.PI;


	static double abs(double a);
	static float abs(float a);
	static int abs(int a);
	static long abs(long a);
	static typeof(T1.init < T2.init ? T1.init : T2.init) min(T1, T2)(T1 a, T2 b)
	{
		return a < b ? a : b;
	}

	static typeof(T1.init > T2.init ? T1.init : T2.init) max(T1, T2)(T1 a, T2 b)
	{
		return a > b ? a : b;
	}

	static double sin(double a);
	static double cos(double a);
	static long round(double a);
	static int round(float a);
	static int round(int a);
	static double rint(double a);
	static double ceil(double a);
	static double floor(double a);
	static double sqrt(double a);
	static double atan2(double a, double b);
	static double pow(double a, double b);
}
