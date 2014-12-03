// D import file generated from 'java\lang\Character.d'
module java.lang.Character;
import java.lang.util;
import java.lang.exceptions;
import java.lang.Class;
import java.lang.String;
version (Tango)
{
	static import tango.text.Unicode;
	static import tango.text.UnicodeData;
}
else
{
	static import std.utf;
	static import std.conv;
	static import std.uni;
	static import std.string;
}
class Character
{
	public static const int MIN_RADIX = 2;


	public static const int MAX_RADIX = 36;


	public static bool isUpperCase(dchar c);

	public static dchar toUpperCase(dchar c);

	public static String toString(char c);

	public static String toString(wchar c);

	public static String toString(dchar c);

	public static dchar toLowerCase(dchar c);

	public static bool isSpace(dchar c);

	public static bool isSpaceChar(dchar c);

	alias isWhitespace isWhiteSpace;
	public static bool isWhitespace(dchar c);

	public static bool isDigit(dchar c);

	public static bool isLetter(dchar c);

	public static bool isLetterOrDigit(dchar c);

	public static bool isUnicodeIdentifierPart(char ch);

	public static bool isUnicodeIdentifierStart(char ch);

	public static bool isIdentifierIgnorable(char ch);

	public static bool isJavaIdentifierPart(char ch);

	this(char c);
	private static Class TYPE_;


	public static Class TYPE();

	public dchar charValue();

}
bool CharacterIsDefined(dchar ch);
dchar CharacterToLower(dchar c);
dchar CharacterToUpper(dchar c);
bool CharacterIsWhitespace(dchar c);
bool CharacterIsDigit(dchar c);
bool CharacterIsLetter(dchar c);
