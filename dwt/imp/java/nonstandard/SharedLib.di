// D import file generated from 'java\nonstandard\SharedLib.d'
module java.nonstandard.SharedLib;
import java.lang.all;
version (Tango)
{
	static import tango.sys.SharedLib;
	static import tango.stdc.stringz;
}
else
{
	static import std.string;
	private alias void* HXModule;

	version (Windows)
	{
		import core.sys.windows.windows;
		import std.utf;
		private HXModule ExeModule_Load(string name);

		private void* ExeModule_GetSymbol(HXModule lib, string name);

		private bool ExeModule_Release(ref HXModule lib);

	}
	else
	{
		import core.sys.posix.dlfcn;
		private HXModule ExeModule_Load(string name);

		private void* ExeModule_GetSymbol(HXModule lib, string name);

		private bool ExeModule_Release(ref HXModule lib);

	}
}
struct Symbol
{
	String name;
	void** symbol;
}
struct SymbolVersioned2
{
	String name;
	void** symbol;
	int major;
	int minor;
}
struct SharedLib
{
	static void loadLibSymbols(SymbolVersioned2[] symbols, String libname, int major, int minor);
	static void loadLibSymbols(Symbol[] symbols, String libname);
	static bool tryUseSymbol(String symbolname, String libname, void delegate(void*) dg);
}
