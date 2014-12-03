// D import file generated from 'org\eclipse\swt\internal\C.d'
module org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Platform;
version (Tango)
{
	static import tango.stdc.string;
}
else
{
	static import std.c.string;
}
public class C : Platform
{
	version (Tango)
	{
		alias tango.stdc.string.memmove MoveMemory;
	}
	else
	{
		alias std.c.string.memmove MoveMemory;
	}
}

