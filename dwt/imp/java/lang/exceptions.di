// D import file generated from 'java\lang\exceptions.d'
module java.lang.exceptions;
import java.lang.util;
import java.lang.String;
version (Tango)
{
	static import tango.core.Exception;
	public alias tango.core.Exception.IllegalArgumentException IllegalArgumentException;

	public alias tango.core.Exception.IOException IOException;

	public alias tango.core.Exception.PlatformException PlatformException;

	public alias tango.core.Exception.ArrayBoundsException ArrayIndexOutOfBoundsException;

	public alias tango.core.Exception.NoSuchElementException NoSuchElementException;

	public alias tango.core.Exception.UnicodeException UnicodeException;

	alias Exception Throwable;
}
else
{
	static import core.exception;
	public alias core.exception.RangeError ArrayIndexOutOfBoundsException;

	class PlatformException : Exception
	{
		this(String e = null);
	}
	class IllegalArgumentException : Exception
	{
		this(String e = null);
	}
	class IOException : Exception
	{
		this(String e = null);
	}
	class NoSuchElementException : Exception
	{
		this(String e = null);
	}
	class UnicodeException : Exception
	{
		this(String msg, int idx);
	}
}
class InternalError : Exception
{
	this(String file, long line, String e = null);
}
class ArithmeticException : Exception
{
	this(String e = null);
}
class ClassCastException : Exception
{
	this(String e = null);
}
class IllegalStateException : Exception
{
	this(String e = null);
	this(Exception e);
}
class NoSuchMethodException : Exception
{
	this(String e = null);
}
class IllegalAccessException : Exception
{
	this(String e = null);
}
class SecurityException : Exception
{
	this(String e = null);
}
class IndexOutOfBoundsException : Exception
{
	this(String e = null);
}
class StringIndexOutOfBoundsException : IndexOutOfBoundsException
{
	this(String e = null);
}
class InterruptedException : Exception
{
	this(String e = null);
	this(Exception e);
}
class NullPointerException : Exception
{
	this(String e = null);
	this(Exception e);
}
class NumberFormatException : IllegalArgumentException
{
	this(String e);
	this(Exception e);
	public String getMessage();

}
class RuntimeException : Exception
{
	this(String file, long line, String msg = null);
	this(String e = null);
	this(Exception e);
	public String getMessage();

	public Throwable getCause();

}
class UnsupportedOperationException : RuntimeException
{
	this(String e = null);
	this(Exception e);
}
String ExceptionGetLocalizedMessage(Exception e);
void ExceptionPrintStackTrace(Exception e);
void ExceptionPrintStackTrace(Throwable e, void delegate(String file, ulong line, String fmt, ...) dg);
void PrintStackTrace(int deepth = 100, String prefix = "trc");
