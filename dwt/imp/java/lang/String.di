// D import file generated from 'java\lang\String.d'
module java.lang.String;
import java.lang.util;
import java.lang.interfaces;
import java.lang.exceptions;
import java.lang.Class;
version (Tango)
{
	static import tango.stdc.stringz;
	static import tango.text.Util;
	static import tango.text.Unicode;
	static import tango.text.convert.Utf;
}
else
{
	static import std.array;
	static import std.string;
	static import std.conv;
	static import std.exception;
}
alias TryImmutable!char[] String;
alias TryImmutable!wchar[] String16;
String new_String(String cont, int offset, int len);
String new_String(String cont);
String String_valueOf(bool v);
String String_valueOf(byte v);
String String_valueOf(ubyte v);
String String_valueOf(short v);
String String_valueOf(int v);
String String_valueOf(uint v);
String String_valueOf(long v);
String String_valueOf(float v);
String String_valueOf(double v);
String String_valueOf(dchar v);
String dcharToString(dchar v);
String String_valueOf(char[] v);
String String_valueOf(char[] v, int offset, int len);
String String_valueOf(Object v);
String String_valueOf(in wchar[] wstr);
int length(String str);
public String toUpperCase(String str);

public String replaceFirst(String str, String regex, String replacement);

version (Tango)
{
	int tangoToJavaIdx(T)(int idx, T[] arr)
	{
		return idx is arr.length ? -1 : idx;
	}
}
public int indexOf(in char[] str, char searched);

public int indexOf(in char[] str, char searched, int fromIndex);

public int indexOf(in char[] str, in char[] sub);

public int indexOf(in char[] str, in char[] sub, int fromIndex);

public int lastIndexOf(in char[] str, char ch);

public int lastIndexOf(in char[] str, char ch, int fromIndex);

public int lastIndexOf(in char[] str, in char[] sub);

public int lastIndexOf(in char[] str, in char[] sub, int fromIndex);

public String replaceAll(String str, String regex, String replacement);

public String replace(String str, char from, char to);

public String substring(String str, int start);

public String substring(String str, int start, int end);

public wchar[] substring(String16 str, int start);

public wchar[] substring(String16 str, int start, int end);

public char charAt(String str, int pos);

public void getChars(String src, int srcBegin, int srcEnd, char[] dst, int dstBegin);

public String16 toWCharArray(in char[] str);

public char[] toCharArray(String str);

public bool endsWith(String src, String pattern);

public bool equals(in char[] src, in char[] other);

public bool equalsIgnoreCase(in char[] src, in char[] other);

public int compareToIgnoreCase(in char[] src, in char[] other);

public int compareTo(in char[] src, in char[] other);

public bool startsWith(String src, String pattern);

public String toLowerCase(String src);

version (Tango)
{
	public hash_t toHash(String src);

}
else
{
	mixin("@safe nothrow public hash_t toHash( String src ){\x0a        // http://docs.oracle.com/javase/7/docs/api/java/lang/String.html#hashCode%28%29\x0a        hash_t hash = 0;\x0a        foreach( i, c; src ){\x0a            hash += c * 31 ^ (src.length - 1 - i);\x0a        }\x0a        return hash;\x0a    }");
}
public alias toHash String_toHash;

public String trim(String str);

public String intern(String str);

version (Tango)
{
	public alias tango.stdc.stringz.toStringz toStringz;

	public alias tango.stdc.stringz.toString16z toString16z;

	public alias tango.stdc.stringz.fromStringz fromStringz;

	public alias tango.stdc.stringz.fromString16z fromString16z;

	public char* toStringzValidPtr(String src);

}
else
{
	static import std.c.string;
	public char* toStringzValidPtr(in char[] s);

	public char* toStringz(in char[] s);

	public char[] fromStringz(in char* s);

	private size_t w_strlen(in wchar* s);

	public wchar* toString16z(in wchar[] s);

	public wstring fromString16z(in wchar* s);

}
static String toHex(uint i);
class StringCharSequence : CharSequence
{
	private String str;

	this(String str);
	char charAt(int index);
	int length();
	CharSequence subSequence(int start, int end);
	override String toString();
}
class StringCls
{
	private static Class TYPE_;


	public static Class TYPE();

}
