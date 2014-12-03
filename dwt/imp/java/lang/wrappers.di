// D import file generated from 'java\lang\wrappers.d'
module java.lang.wrappers;
import java.lang.util;
import java.lang.String;
abstract class ArrayWrapper
{
}

abstract class ValueWrapper
{
}

class ArrayWrapperT(T) : ArrayWrapper
{
	public T[] array;

	public this(T[] data)
	{
		array = data;
	}


	version (D_Version2)
	{
		static if (is(T == char))
		{
			public this(String data)
			{
				array = data.dup;
			}


		}
	}
	public override equals_t opEquals(Object o)
	{
		if (auto other = cast(ArrayWrapperT!T)o)
		{
			return array == other.array;
		}
		return false;
	}


	public override hash_t toHash()
	{
		return typeid(T[]).getHash(&array);
	}


	static if (is(T == char))
	{
		public override String toString()
		{
			return _idup(array);
		}


	}
}
class ValueWrapperT(T) : ValueWrapper
{
	public T value;

	public this(T data)
	{
		value = data;
	}


	static if (is(T == class) || is(T == interface))
	{
		public equals_t opEquals(Object other)
		{
			if (auto o = cast(ValueWrapperT!T)other)
			{
				return value == o.value;
			}
			if (auto o = cast(T)other)
			{
				if (value is o)
				{
					return true;
				}
				if (value is null || o is null)
				{
					return false;
				}
				return value == o;
			}
			return false;
		}


	}
	else
	{
		public override equals_t opEquals(Object other)
		{
			if (auto o = cast(ValueWrapperT!T)other)
			{
				return value == o.value;
			}
			return false;
		}


		public equals_t opEquals(T other)
		{
			return value == other;
		}


	}
	public override hash_t toHash()
	{
		return typeid(T).getHash(&value);
	}


}
alias ArrayWrapperT!byte ArrayWrapperByte;
alias ArrayWrapperT!int ArrayWrapperInt;
alias ArrayWrapperT!Object ArrayWrapperObject;
alias ArrayWrapperT!char ArrayWrapperString;
alias ArrayWrapperT!String ArrayWrapperString2;
Object[] StringArrayToObjectArray(String[] strs);
String stringcast(Object o);
String[] stringcast(Object[] objs);
ArrayWrapperString stringcast(String str);
ArrayWrapperString[] stringcast(String[] strs);
String[] stringArrayFromObject(Object obj);
T[] arrayFromObject(T)(Object obj)
{
	if (auto wrapper = cast(ArrayWrapperObject)obj)
	{
		T[] res = new T[](wrapper.array.length);
		foreach (idx, o; wrapper.array)
		{
			res[idx] = cast(T)o;
		}
		return res;
	}
	assert(obj is null);
	return null;
}
