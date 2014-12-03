// D import file generated from 'java\util\Random.d'
module java.util.Random;
import java.lang.all;
version (Tango)
{
	static import tango.math.random.Kiss;
}
else
{
	static import std.random;
}
class Random
{
	version (Tango)
	{
		tango.math.random.Kiss.Kiss kiss;
	}
	else
	{
		std.random.MinstdRand gen;
	}
	public this(int seed);

	public bool nextBoolean();

}
