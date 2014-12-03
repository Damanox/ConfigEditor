// D import file generated from 'java\nonstandard\Locale.d'
module java.nonstandard.Locale;
import java.lang.String;
import java.lang.util : implMissing;
version (Tango)
{
	private import tango.text.locale.Core;

}
else
{
	private import std.conv;

	private import std.exception;

	version (Windows)
	{
		private import std.c.string;

		private import std.c.windows.windows;

		private bool W_VERSION;

		static this();
		private extern (Windows) 
		{
			enum LCID : DWORD
			{
				LOCALE_USER_DEFAULT = 1024,
			}
			enum LCTYPE : DWORD
			{
				LOCALE_SISO639LANGNAME = 89,
				LOCALE_SISO3166CTRYNAME = 90,
			}
			INT GetLocaleInfoW(LCID Locale, LCTYPE LCType, LPWSTR lpLCData, INT cchData);
			INT GetLocaleInfoA(LCID Locale, LCTYPE LCType, LPCSTR lpLCData, INT cchData);
		}

		private String caltureNameImpl(Char, alias GetLocalInfo)()
		{
			INT len;
			Char[] res;
			Char[] buf;
			len = GetLocalInfo(LCID.LOCALE_USER_DEFAULT, LCTYPE.LOCALE_SISO639LANGNAME, null, 0);
			enforce(len, new Exception("LOCALE_SISO639LANGNAME (len)", "java\\nonstandard\\Locale.d", 60));
			buf.length = len;
			len = GetLocalInfo(LCID.LOCALE_USER_DEFAULT, LCTYPE.LOCALE_SISO639LANGNAME, buf.ptr, buf.length);
			enforce(len, new Exception("LOCALE_SISO639LANGNAME", "java\\nonstandard\\Locale.d", 64));
			res ~= buf[0..len - 1];
			res ~= "-";
			len = GetLocalInfo(LCID.LOCALE_USER_DEFAULT, LCTYPE.LOCALE_SISO3166CTRYNAME, null, 0);
			enforce(len, new Exception("LOCALE_SISO3166CTRYNAME (len)", "java\\nonstandard\\Locale.d", 69));
			buf.length = len;
			len = GetLocalInfo(LCID.LOCALE_USER_DEFAULT, LCTYPE.LOCALE_SISO3166CTRYNAME, buf.ptr, buf.length);
			enforce(len, new Exception("LOCALE_SISO3166CTRYNAME", "java\\nonstandard\\Locale.d", 73));
			res ~= buf[0..len - 1];
			return to!String(res);
		}

	}
	else
	{
		version (Posix)
		{
			private import std.process : getenv;

			private import std.string : indexOf, replace;

		}
	}
}
String caltureName();
