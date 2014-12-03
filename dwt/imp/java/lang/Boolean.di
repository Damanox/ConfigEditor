// D import file generated from 'java\lang\Boolean.d'
module java.lang.Boolean;
import java.lang.util;
import java.lang.System;
import java.lang.Class;
version (Tango)
{
	static import tango.text.Ascii;
}
else
{
	static import std.string;
}
class Boolean : ValueWrapperT!bool
{
	public static Boolean TRUE;


	public static Boolean FALSE;


	static this();
	public this(bool v);

	alias ValueWrapperT!bool.opEquals opEquals;
	public equals_t opEquals(int other);

	public override equals_t opEquals(Object other);

	public bool booleanValue();

	public static Boolean valueOf(String s);

	public static Boolean valueOf(bool b);

	public static bool getBoolean(String name);

	private static Class TYPE_;


	public static Class TYPE();

}
alias Boolean ValueWrapperBool;
