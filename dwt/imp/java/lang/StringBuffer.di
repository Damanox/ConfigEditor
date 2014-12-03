// D import file generated from 'java\lang\StringBuffer.d'
module java.lang.StringBuffer;
import java.lang.util;
import java.lang.exceptions;
import java.lang.String;
version (Tango)
{
	static import tango.text.Text;
	static import tango.text.convert.Utf;
}
else
{
	static import std.outbuffer;
	static import std.utf;
}
class StringBuffer : CharSequence
{
	version (Tango)
	{
		alias tango.text.Text.Text!char TBuf;
	}
	else
	{
		alias std.outbuffer.OutBuffer TBuf;
	}
	private TBuf buffer;

	public this();

	public this(int cap);

	public this(String content);

	char charAt(int index);
	int length();
	CharSequence subSequence(int start, int end);
	override String toString();
	StringBuffer append(in char[] s);
	StringBuffer append(in char[] s, int offset, int len);
	StringBuffer append(StringBuffer other);
	StringBuffer append(Object obj);
	StringBuffer append(char c);
	StringBuffer append(wchar c);
	StringBuffer append(dchar c);
	StringBuffer append(bool i);
	StringBuffer append(int i);
	StringBuffer append(long i);
	StringBuffer replace(int start, int end, in char[] str);
	StringBuffer insert(int offset, in char[] str);
	StringBuffer insert(int offset, int i);
	StringBuffer insert(int offset, StringBuffer other);
	void setLength(int newLength);
	String substring(int start, int end);
	void delete_(int start, int end);
	TryConst!char[] slice();
	void truncate(int start);
}
