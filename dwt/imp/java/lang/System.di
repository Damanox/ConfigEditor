// D import file generated from 'java\lang\System.d'
module java.lang.System;
import java.lang.util;
import java.lang.exceptions;
import java.io.PrintStream;
version (Tango)
{
	static import tango.sys.Environment;
	static import tango.core.Exception;
	static import tango.io.model.IFile;
	static import tango.time.Clock;
	static import tango.stdc.stdlib;
}
else
{
	static import std.c.stdlib;
	static import std.datetime;
	static import std.path;
}
template SimpleType(T)
{
	debug (1)
	{
		static void validCheck(uint SrcLen, uint DestLen, uint copyLen)
		{
			if (SrcLen < copyLen || DestLen < copyLen || SrcLen < 0 || DestLen < 0)
			{
				assert(0);
			}
		}

	}
	static void remove(ref T[] items, int index)
	{
		if (items.length == 0)
			return ;
		if (index < 0 || index >= items.length)
		{
			throw new ArrayIndexOutOfBoundsException("java\\lang\\System.d", 37);
		}
		T element = items[index];
		int length = items.length;
		if (length == 1)
		{
			items.length = 0;
			return ;
		}
		if (index == 0)
			items = items[1..$];
		else
			if (index == length - 1)
				items = items[0..index];
			else
				items = items[0..index] ~ items[index + 1..$];
	}

	static void insert(ref T[] items, T item, int index = -1)
	{
		if (index == -1)
			index = items.length;
		if (index < 0 || index > items.length)
		{
			throw new ArrayIndexOutOfBoundsException("java\\lang\\System.d", 61);
		}
		if (index == items.length)
		{
			items ~= item;
		}
		else
			if (index == 0)
			{
				T[] newVect;
				newVect ~= item;
				items = newVect ~ items;
			}
			else
				if (index < items.length)
				{
					T[] arr1 = items[0..index];
					T[] arr2 = items[index..$];
					items = arr1 ~ item ~ arr2;
				}
	}

	static void arraycopy(in T[] src, uint srcPos, T[] dest, uint destPos, uint len)
	{
		if (len == 0)
			return ;
		assert(src);
		assert(dest);
		debug (1)
		{
			validCheck(src.length - srcPos, dest.length - destPos, len);
		}

		if (src.ptr <= dest.ptr && src.ptr + len > dest.ptr || src.ptr >= dest.ptr && src.ptr < dest.ptr + len)
		{
			if (destPos < srcPos)
			{
				for (int i = 0;
				 i < len; ++i)
				{
					{
						dest[destPos + i] = cast(T)src[srcPos + i];
					}
				}
			}
			else
			{
				for (int i = len - 1;
				 i >= 0; --i)
				{
					{
						dest[destPos + i] = cast(T)src[srcPos + i];
					}
				}
			}
		}
		else
		{
			dest[destPos..len + destPos] = cast(T[])src[srcPos..len + srcPos];
		}
	}

}
class System
{
	static void arraycopy(T)(in T[] src, uint srcPos, T[] dest, uint destPos, uint len)
	{
		if (len == 0)
			return ;
		assert(src);
		assert(dest);
		debug (1)
		{
			SimpleType!T.validCheck(src.length - srcPos, dest.length - destPos, len);
		}

		if (src.ptr <= dest.ptr && src.ptr + len > dest.ptr || src.ptr >= dest.ptr && src.ptr < dest.ptr + len)
		{
			if (destPos < srcPos)
			{
				for (int i = 0;
				 i < len; ++i)
				{
					{
						dest[destPos + i] = cast(T)src[srcPos + i];
					}
				}
			}
			else
			{
				for (int i = len - 1;
				 i >= 0; --i)
				{
					{
						dest[destPos + i] = cast(T)src[srcPos + i];
					}
				}
			}
		}
		else
		{
			dest[destPos..len + destPos] = cast(T[])src[srcPos..len + srcPos];
		}
	}

	static long currentTimeMillis();
	static void exit(int code);
	public static int identityHashCode(Object x);

	public static String getProperty(String key, String defval);

	public static String getProperty(String key);

	public static void setProperty(String key, String value);

	private static PrintStream err__;


	public static PrintStream err();

	private static PrintStream out__;


	public static PrintStream out_();

	private static String[String] localProperties;


}
