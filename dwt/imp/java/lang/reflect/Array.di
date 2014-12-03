// D import file generated from 'java\lang\reflect\Array.d'
module java.lang.reflect.Array;
import java.lang.all;
class Array
{
	static Object get(Object array, int index);
	static bool getBoolean(Object array, int index);
	static byte getByte(Object array, int index);
	static char getChar(Object array, int index);
	static double getDouble(Object array, int index);
	static float getFloat(Object array, int index);
	static int getInt(Object array, int index);
	static int getLength(Object array);
	static long getLong(Object array, int index);
	static short getShort(Object array, int index);
	static Object newInstance(Class componentType, int length);
	static Object newInstance(Class componentType, int[] dimensions);
	static void set(Object array, int index, Object value);
	static void setBoolean(Object array, int index, bool z);
	static void setByte(Object array, int index, byte b);
	static void setChar(Object array, int index, char c);
	static void setDouble(Object array, int index, double d);
	static void setFloat(Object array, int index, float f);
	static void setInt(Object array, int index, int i);
	static void setLong(Object array, int index, long l);
	static void setShort(Object array, int index, short s);
}
