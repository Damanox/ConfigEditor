// D import file generated from 'java\lang\util.d'
module java.lang.util;
public import java.lang.wrappers;

public import java.lang.String;

public import java.lang.interfaces;

version (Tango)
{
	static import tango.text.convert.Format;
	static import tango.core.Exception;
	static import tango.util.log.Log;
	static import tango.util.log.Config;
	static import tango.stdc.stdlib;
	alias tango.stdc.stdlib.exit exit;
}
else
{
	static import core.exception;
	static import std.c.stdlib;
	static import std.stdio;
	static import std.ascii;
	static import std.array;
	static import std.format;
	static import std.typetuple;
	static import std.traits;
	static import std.exception;
	alias std.c.stdlib.exit exit;
}
interface IDwtLogger
{
	void trace(String file, ulong line, String fmt, ...);
	void info(String file, ulong line, String fmt, ...);
	void warn(String file, ulong line, String fmt, ...);
	void error(String file, ulong line, String fmt, ...);
	void fatal(String file, ulong line, String fmt, ...);
}
version (Tango)
{
	class DwtLogger : IDwtLogger
	{
		tango.util.log.Log.Logger logger;
		private this(char[] name);

		private char[] format(String file, ulong line, String fmt, TypeInfo[] types, void* argptr);

		void trace(String file, ulong line, String fmt, ...);
		void info(String file, ulong line, String fmt, ...);
		void warn(String file, ulong line, String fmt, ...);
		void error(String file, ulong line, String fmt, ...);
		void fatal(String file, ulong line, String fmt, ...);
	}
}
else
{
	static import core.vararg;
	class DwtLogger : IDwtLogger
	{
		private this(String name);

		void trace(String file, ulong line, String fmt, ...);
		void info(String file, ulong line, String fmt, ...);
		void warn(String file, ulong line, String fmt, ...);
		void error(String file, ulong line, String fmt, ...);
		void fatal(String file, ulong line, String fmt, ...);
	}
}
private DwtLogger dwtLoggerInstance;

IDwtLogger getDwtLogger();
void implMissing(String file, uint line);
void implMissingInTango(T = void)(String file, uint line)
{
	version (Tango)
	{
	}
	else
	{
		static assert(0, "For Tango implMissings only");
	}

	getDwtLogger().fatal(file, line, "implementation missing in Tango version");
	implMissing(file, line);
}
void implMissingInPhobos(String file = __FILE__, uint line = __LINE__)()
{
	version (Tango)
	{
		static assert(0, "For Phobos implMissings only");
	}

	getDwtLogger().fatal(file, line, "implementation missing in Phobos version");
	implMissing(file, line);
}
version (Tango)
{
	alias implMissing implMissingSafe;
}
else
{
	mixin("@safe nothrow\x0a    void implMissingSafe( String file, uint line ) {\x0a        // impossible processing\x0a    }");
}
version (Tango)
{
	public alias tango.text.convert.Format.Format Format;

}
else
{
	private string fmtFromTangoFmt(string tangoFmt);

	private String doVarArgFormat(TypeInfo[] _arguments, core.vararg.va_list _argptr);

	class Format
	{
		template UnTypedef(T)
		{
			static if (is(T U == typedef))
			{
				alias std.traits.Unqual!U UnTypedef;
			}
			else
			{
				alias std.traits.Unqual!T UnTypedef;
			}
		}
		static String opCall(A...)(String _fmt, A _args)
		{
			std.typetuple.staticMap!(UnTypedef, A) args;
			foreach (i, _a; _args)
			{
				static if (is(T U == typedef))
				{
					args[i] = cast(U)_a;
				}
				else
				{
					args[i] = _a;
				}

			}
			auto writer = std.array.appender!String();
			std.format.formattedWrite(writer, fmtFromTangoFmt(_fmt), args);
			auto res = writer.data();
			return std.exception.assumeUnique(res);
		}

	}
}
version (D_Version2)
{
	template Immutable(T)
	{
		mixin("alias immutable(T) Immutable;");
	}
	template Const(T)
	{
		mixin("alias const(T) Const;");
	}
	template Shared(T)
	{
		mixin("alias shared(T) Shared;");
	}
	alias Immutable TryImmutable;
	alias Const TryConst;
	alias Shared TryShared;
	std.traits.Unqual!T[] Unqual(T)(T[] t)
	{
		return cast(std.traits.Unqual!T[])t;
	}
	Immutable!T[] _idup(T)(T[] str)
	{
		return str.idup;
	}
	template prefixedIfD2(String prefix, String content)
	{
		const prefixedIfD2 = prefix ~ " " ~ content;
	}
}
else
{
	template AliasT(T)
	{
		alias T AliasT;
	}
	alias AliasT TryImmutable;
	alias AliasT TryConst;
	alias AliasT TryShared;
	T Unqual(T)(T t)
	{
		return t;
	}
	String16 _idup(String16 str);
	String _idup(String str);
	template prefixedIfD2(String prefix, String content)
	{
		const prefixedIfD2 = content;
	}
}
template sharedStaticThis(String content)
{
	const sharedStaticThis = prefixedIfD2!("shared", "static this()" ~ content);
}
template sharedStatic_This(String content)
{
	const sharedStatic_This = prefixedIfD2!("shared", "private static void static_this()" ~ content);
}
template gshared(String content)
{
	const gshared = prefixedIfD2!("__gshared:", content);
}
template constFuncs(String content)
{
	const constFuncs = prefixedIfD2!("const:", content);
}
private struct GCStats
{
	size_t poolsize;
	size_t usedsize;
	size_t freeblocks;
	size_t freelistsize;
	size_t pageblocks;
}

private extern (C) GCStats gc_stats();


size_t RuntimeTotalMemory();
template arraycast(T)
{
	T[] arraycast(U)(U[] u)
	{
		static if (is(T == interface) && is(U == interface) || is(T == class) && is(U == class))
		{
			return cast(T[])u;
		}
		else
		{
			int l = u.length;
			T[] res;
			res.length = l;
			for (int i = 0;
			 i < l; i++)
			{
				{
					res[i] = cast(T)u[i];
				}
			}
			return res;
		}

	}
}
bool ArrayEquals(T)(T[] a, T[] b)
{
	if (a.length !is b.length)
	{
		return false;
	}
	for (int i = 0;
	 i < a.length; i++)
	{
		{
			static if (is(T == class) || is(T == interface))
			{
				if (a[i] !is null && b[i] !is null)
				{
					if (a[i] != b[i])
					{
						return false;
					}
				}
				else
					if (a[i] is null && b[i] is null)
					{
					}
					else
					{
						return false;
					}
			}
			else
			{
				if (a[i] != b[i])
				{
					return false;
				}
			}

		}
	}
	return true;
}
int arrayIndexOf(T)(T[] arr, T v)
{
	int res = -1;
	int idx = 0;
	static if (is(T == interface))
	{
		Object[] array = cast(Object[])arr;
		Object value = cast(Object)v;
	}
	else
	{
		auto array = arr;
		auto value = v;
	}

	foreach (p; array)
	{
		if (p == value)
		{
			res = idx;
			break;
		}
		idx++;
	}
	return res;
}
T[] arrayIndexRemove(T)(T[] arr, uint n)
{
	if (n is 0)
		return arr[1..$];
	if (n > arr.length)
		return arr;
	if (n is arr.length - 1)
		return arr[0..n - 1];
	return arr[0..n] ~ arr[n + 1..$];
}
struct ImportData
{
	TryImmutable!void[] data;
	String name;
	public static ImportData opCall()(TryImmutable!void[] data, String name)
	{
		ImportData res;
		res.data = data;
		res.name = name;
		return res;
	}


}
template getImportData(String name)
{
	const ImportData getImportData = ImportData(cast(TryImmutable!void[])import(name), name);

}
