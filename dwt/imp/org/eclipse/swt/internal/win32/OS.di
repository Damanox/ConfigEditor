// D import file generated from 'org\eclipse\swt\internal\win32\OS.d'
module org.eclipse.swt.internal.win32.OS;
public import org.eclipse.swt.internal.win32.WINTYPES;

static import org.eclipse.swt.internal.win32.WINAPI;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Library;
import java.lang.all;
import java.nonstandard.SharedLib;
version (Tango)
{
	static import tango.sys.Common;
	static import tango.stdc.stdlib;
	static import tango.stdc.string;
	import tango.sys.win32.CodePage : CodePage;
	private import tango.stdc.stringz;

}
else
{
	static import core.stdc.string;
	static import std.windows.charset;
	static import std.c.windows.windows;
	static import std.windows.syserror;
}
alias org.eclipse.swt.internal.win32.WINAPI DWTWINAPI;
void trace(int line);
extern (Windows) 
{
	alias int function() Function0;
	alias int function(void*) Function1;
	alias int function(void*, int) Function2;
	alias int function(void*, int, int) Function3;
	alias int function(void*, int, int, int) Function4;
	alias int function(void*, int, int, int, int) Function5;
	alias int function(void*, int, int, int, int, int) Function6;
	alias int function(void*, int, int, int, int, int, int) Function7;
	alias int function(void*, int, int, int, int, int, int, int) Function8;
	alias int function(void*, int, int, int, int, int, int, int, int) Function9;
}
public class LDWTRESULT
{
	public int value;

	mixin(gshared!"public static LDWTRESULT ONE;");
	mixin(gshared!"public static LDWTRESULT ZERO;");
	public this(int value);

}

public class OS : C
{
	public static HINSTANCE GetLibraryHandle();

	public static int PRIMARYLANGID(int lgid);

	public static int LVITEM_sizeof();

	public static int MENUITEMINFO_sizeof();

	public static int NMLVCUSTOMDRAW_sizeof();

	public static int NMLVDISPINFO_sizeof();

	public static int OPENFILENAME_sizeof();

	public static int TOOLINFO_sizeof();

	public static extern (Windows) 
	{
		HANDLE function(ACTCTX* pActCtx) CreateActCtx;
		BOOL function(HACTCTX hActCtx, uint* lpCookie) ActivateActCtx;
		LANGID function() GetSystemDefaultUILanguage;
		BOOL function(LANGUAGEGROUP_ENUMPROC pLangGroupEnumProc, DWORD dwFlags, LONG_PTR lParam) EnumSystemLanguageGroupsA;
		BOOL function(LANGUAGEGROUP_ENUMPROC pLangGroupEnumProc, DWORD dwFlags, LONG_PTR lParam) EnumSystemLanguageGroupsW;
		BOOL function(LOCALE_ENUMPROC lpLocaleEnumProc, DWORD dwFlags) EnumSystemLocalesA;
		BOOL function(LOCALE_ENUMPROC lpLocaleEnumProc, DWORD dwFlags) EnumSystemLocalesW;
	}


	mixin(gshared!"public static BOOL IsWin32s;");
	mixin(gshared!"public static BOOL IsWin95;");
	mixin(gshared!"public static BOOL IsWinNT;");
	version (WinCE)
	{
		mixin(gshared!"public const static BOOL IsWinCE = true;");
		mixin(gshared!"public static const BOOL IsHPC   = false");
	}
	else
	{
		mixin(gshared!"public const static BOOL IsWinCE = false;");
		mixin(gshared!"public static const BOOL IsHPC   = false;");
	}
	mixin(gshared!"public static const BOOL IsPPC = false;");
	mixin(gshared!"public static const BOOL IsSP = false;");
	mixin(gshared!"public static const BOOL IsDBLocale;");
	version (ANSI)
	{
		public static const BOOL IsUnicode = false;


	}
	else
	{
		public static const BOOL IsUnicode = true;


	}
	mixin(gshared!"public static const int WIN32_MAJOR, WIN32_MINOR, WIN32_VERSION;");
	mixin(gshared!"public static const int COMCTL32_MAJOR, COMCTL32_MINOR, COMCTL32_VERSION;");
	mixin(gshared!"public static const int SHELL32_MAJOR, SHELL32_MINOR, SHELL32_VERSION;");
	public static const char[] NO_MANIFEST = "org.eclipse.swt.internal.win32.OS.NO_MANIFEST";


	public static const int VER_PLATFORM_WIN32s = 0;


	public static const int VER_PLATFORM_WIN32_WINDOWS = 1;


	public static const int VER_PLATFORM_WIN32_NT = 2;


	public static const int VER_PLATFORM_WIN32_CE = 3;


	public static const int HEAP_ZERO_MEMORY = 8;


	public static const int ACTCTX_FLAG_RESOURCE_NAME_VALID = 8;


	public static const int ACTCTX_FLAG_SET_PROCESS_DEFAULT = 16;


	public static const int ACTCTX_FLAG_APPLICATION_NAME_VALID = 32;


	public static const int ACTCTX_FLAG_OVERRIDEMANIFEST_VALID = 256;


	public static const TCHAR* MANIFEST_RESOURCE_ID = cast(TCHAR*)1;


	public static const int SM_DBCSENABLED = 42;


	public static const int SM_IMMENABLED = 82;


	public static const int LANG_KOREAN = 18;


	public static const int MAX_PATH = 260;


	mixin(sharedStaticThis!"{\x0a        static_this_1();\x0a        static_this_2();\x0a        static_this_3();\x0a        static_this_4();\x0a        LDWTRESULT.ONE = new LDWTRESULT(1);\x0a        LDWTRESULT.ZERO = new LDWTRESULT(0);\x0a        /*\x0a        * Try the UNICODE version of GetVersionEx first\x0a        * and then the ANSI version.  The UNICODE version\x0a        * is present on all versions of Windows but is not\x0a        * implemented on Win95/98/ME.\x0a        *\x0a        * NOTE: The value of OSVERSIONINFO.sizeof cannot\x0a        * be static final because it relies on the Windows\x0a        * platform version to be initialized and IsUnicode\x0a        * has not been calculated.  It must be initialized\x0a        * here, after the platform is determined in order\x0a        * for the value to be correct.\x0a        */\x0a        OSVERSIONINFO info;\x0a        info.dwOSVersionInfoSize = OSVERSIONINFO.sizeof;\x0a        if(!OS.GetVersionEx(&info)){\x0a            MessageBoxA(null,\x0a                    _PCHAR!(\"SWT Unicode version applications can't run in a non-Unicode platform !\"),\x0a                    _PCHAR!(\"Error\"),\x0a                    MB_OK|MB_ICONERROR);\x0a            version(Tango){\x0a                tango.stdc.stdlib.exit(-1);\x0a            } else { // Phobos\x0a                std.c.stdlib.exit(-1);\x0a            }\x0a        }\x0a        //OSVERSIONINFO info = new OSVERSIONINFOW ();\x0a        //info.dwOSVersionInfoSize = OSVERSIONINFOW.sizeof;\x0a        //if (!OS.GetVersionExW ((OSVERSIONINFOW)info)) {\x0a        //    info = new OSVERSIONINFOA ();\x0a        //    info.dwOSVersionInfoSize = OSVERSIONINFOA.sizeof;\x0a        //    OS.GetVersionExA ((OSVERSIONINFOA)info);\x0a        //}\x0a        //OSVERSIONINFO.sizeof = info.dwOSVersionInfoSize;\x0a\x0a        IsWin32s = (info.dwPlatformId is VER_PLATFORM_WIN32s);\x0a        IsWin95 = (info.dwPlatformId is VER_PLATFORM_WIN32_WINDOWS);\x0a        IsWinNT = (info.dwPlatformId is VER_PLATFORM_WIN32_NT);\x0a        //PORTING_CHANGE: made by version\x0a        //IsWinCE = (info.dwPlatformId is VER_PLATFORM_WIN32_CE);\x0a        //PORTING_CHANGE: made by version\x0a        //IsSP  = IsSP();\x0a        //PORTING_CHANGE: made by version\x0a        //IsPPC = IsPPC();\x0a        version(WinCE) {\x0a            IsHPC = IsWinCE && !IsPPC && !IsSP;\x0a        }\x0a        WIN32_MAJOR = info.dwMajorVersion;\x0a        WIN32_MINOR = info.dwMinorVersion;\x0a        WIN32_VERSION = VERSION (WIN32_MAJOR, WIN32_MINOR);\x0a\x0a        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION (5, 0)) {\x0a            SharedLib.loadLibSymbols( Symbols_Kernel32, \"Kernel32.dll\", WIN32_MAJOR, WIN32_MINOR );\x0a        }\x0a\x0a        //PORTING_CHANGE: made by version\x0a        //IsUnicode = !IsWin32s && !IsWin95;\x0a\x0a        /* Load the manifest to force the XP Theme */\x0a        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION (5, 1)) {\x0a            //enableVisualStyles();\x0a        }\x0a\x0a        // when to load uxtheme\x0a        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION (5, 1)) {\x0a            SharedLib.loadLibSymbols( Symbols_UxTheme, \"UxTheme.dll\", WIN32_MAJOR, WIN32_MINOR );\x0a        }\x0a        if (OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION (5, 1)) {\x0a            SharedLib.loadLibSymbols( Symbols_CoreImm, \"Coreimm.dll\", WIN32_MAJOR, WIN32_MINOR );\x0a        }\x0a        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION (5, 0)) {\x0a            SharedLib.loadLibSymbols( Symbols_User32, \"User32.dll\", WIN32_MAJOR, WIN32_MINOR );\x0a        }\x0a        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION (4, 0)) {\x0a            SharedLib.loadLibSymbols( Symbols_Imm32, \"Imm32.dll\", WIN32_MAJOR, WIN32_MINOR );\x0a        }\x0a\x0a        /* Make the process DPI aware for Windows Vista */\x0a        if (OS.WIN32_VERSION >= OS.VERSION (6, 0)) OS.SetProcessDPIAware ();\x0a\x0a        /* Get the DBCS flag */\x0a        BOOL dbcsEnabled = OS.GetSystemMetrics (SM_DBCSENABLED) !is 0;\x0a        BOOL immEnabled = OS.GetSystemMetrics (SM_IMMENABLED) !is 0;\x0a        IsDBLocale = dbcsEnabled || immEnabled;\x0a\x0a        /*\x0a        * Bug in Windows.  On Korean Windows XP when the Text\x0a        * Services Framework support for legacy applications\x0a        * is enabled, certain legacy calls segment fault.\x0a        * For example, when ImmSetCompositionWindow() is used\x0a        * to move the composition window outside of the client\x0a        * area, Windows crashes.  The fix is to disable legacy\x0a        * support.\x0a        *\x0a        * Note: The bug is fixed in Service Pack 2.\x0a        */\x0a        if (!OS.IsWinCE && OS.WIN32_VERSION is OS.VERSION (5, 1)) {\x0a            short langID = OS.GetSystemDefaultUILanguage ();\x0a            short primaryLang = cast(short) OS.PRIMARYLANGID (langID);\x0a            if (primaryLang is LANG_KOREAN) {\x0a                OSVERSIONINFOEX infoex;\x0a                infoex.dwOSVersionInfoSize = OSVERSIONINFOEX.sizeof;\x0a                GetVersionEx (cast(OSVERSIONINFO*) &infoex );\x0a                if (infoex.wServicePackMajor < 2) {\x0a                    OS.ImmDisableTextFrameService (0);\x0a                }\x0a            }\x0a        }\x0a\x0a        /* Get the COMCTL32.DLL version */\x0a        DLLVERSIONINFO dvi;\x0a        dvi.cbSize = DLLVERSIONINFO.sizeof;\x0a        dvi.dwMajorVersion = 4;\x0a        dvi.dwMinorVersion = 0;\x0a        //PORTING_CHANGE: comctl is loaded automatically\x0a        //TCHAR lpLibFileName = new TCHAR (0, \"comctl32.dll\", true); //$NON-NLS-1$\x0a        //int /*long*/ hModule = OS.LoadLibrary (lpLibFileName);\x0a        SharedLib.tryUseSymbol( \"DllGetVersion\", \"comctl32.dll\", (void* ptr){\x0a            alias extern(Windows) void function(DLLVERSIONINFO*) TDllGetVersion;\x0a            auto func = cast( TDllGetVersion ) ptr;\x0a            func(&dvi);\x0a        });\x0a        COMCTL32_MAJOR = dvi.dwMajorVersion;\x0a        COMCTL32_MINOR = dvi.dwMinorVersion;\x0a        COMCTL32_VERSION = VERSION (COMCTL32_MAJOR, COMCTL32_MINOR);\x0a\x0a        /* Get the Shell32.DLL version */\x0a        dvi = DLLVERSIONINFO.init;\x0a        dvi.cbSize = DLLVERSIONINFO.sizeof;\x0a        dvi.dwMajorVersion = 4;\x0a        //TCHAR lpLibFileName = new TCHAR (0, \"Shell32.dll\", true); //$NON-NLS-1$\x0a        //int /*long*/ hModule = OS.LoadLibrary (lpLibFileName);\x0a        SharedLib.tryUseSymbol( \"DllGetVersion\", \"Shell32.dll\", (void* ptr){\x0a            alias extern(Windows) void function(DLLVERSIONINFO*) TDllGetVersion;\x0a            auto func = cast( TDllGetVersion ) ptr;\x0a            func(&dvi);\x0a        });\x0a        SHELL32_MAJOR = dvi.dwMajorVersion;\x0a        SHELL32_MINOR = dvi.dwMinorVersion;\x0a        SHELL32_VERSION = VERSION (SHELL32_MAJOR, SHELL32_MINOR);\x0a    }");
	public static void enableVisualStyles();

	static const int SYS_COLOR_INDEX_FLAG = OS.IsWinCE ? 1073741824 : 0;

	public static const int ABS_DOWNDISABLED = 8;


	public static const int ABS_DOWNHOT = 6;


	public static const int ABS_DOWNNORMAL = 5;


	public static const int ABS_DOWNPRESSED = 7;


	public static const int ABS_LEFTDISABLED = 12;


	public static const int ABS_LEFTHOT = 10;


	public static const int ABS_LEFTNORMAL = 9;


	public static const int ABS_LEFTPRESSED = 11;


	public static const int ABS_RIGHTDISABLED = 16;


	public static const int ABS_RIGHTHOT = 14;


	public static const int ABS_RIGHTNORMAL = 13;


	public static const int ABS_RIGHTPRESSED = 15;


	public static const int ABS_UPDISABLED = 4;


	public static const int ABS_UPHOT = 2;


	public static const int ABS_UPNORMAL = 1;


	public static const int ABS_UPPRESSED = 3;


	public static const int AC_SRC_OVER = 0;


	public static const int AC_SRC_ALPHA = 1;


	public static const int ALTERNATE = 1;


	public static const int ASSOCF_NOTRUNCATE = 32;


	public static const int ASSOCF_INIT_IGNOREUNKNOWN = 1024;


	public static const int ASSOCSTR_COMMAND = 1;


	public static const int ASSOCSTR_DEFAULTICON = 15;


	public static const int ASSOCSTR_FRIENDLYAPPNAME = 4;


	public static const int ASSOCSTR_FRIENDLYDOCNAME = 3;


	public static const int AW_SLIDE = 262144;


	public static const int AW_ACTIVATE = 131072;


	public static const int AW_BLEND = 524288;


	public static const int AW_HIDE = 65536;


	public static const int AW_CENTER = 16;


	public static const int AW_HOR_POSITIVE = 1;


	public static const int AW_HOR_NEGATIVE = 2;


	public static const int AW_VER_POSITIVE = 4;


	public static const int AW_VER_NEGATIVE = 8;


	public static const int ATTR_INPUT = 0;


	public static const int ATTR_TARGET_CONVERTED = 1;


	public static const int ATTR_CONVERTED = 2;


	public static const int ATTR_TARGET_NOTCONVERTED = 3;


	public static const int ATTR_INPUT_ERROR = 4;


	public static const int ATTR_FIXEDCONVERTED = 5;


	public static const int BCM_FIRST = 5632;


	public static const int BCM_GETIDEALSIZE = BCM_FIRST + 1;


	public static const int BCM_GETIMAGELIST = BCM_FIRST + 3;


	public static const int BCM_GETNOTE = BCM_FIRST + 10;


	public static const int BCM_GETNOTELENGTH = BCM_FIRST + 11;


	public static const int BCM_SETIMAGELIST = BCM_FIRST + 2;


	public static const int BCM_SETNOTE = BCM_FIRST + 9;


	public static const int BDR_RAISEDOUTER = 1;


	public static const int BDR_SUNKENOUTER = 2;


	public static const int BDR_RAISEDINNER = 4;


	public static const int BDR_SUNKENINNER = 8;


	public static const int BDR_OUTER = 3;


	public static const int BDR_INNER = 12;


	public static const int BDR_RAISED = 5;


	public static const int BDR_SUNKEN = 10;


	public static const int BFFM_INITIALIZED = 1;


	public static const int BFFM_SETSELECTION = IsUnicode ? 1127 : 1126;


	public static const int BFFM_VALIDATEFAILED = IsUnicode ? 4 : 3;


	public static const int BFFM_VALIDATEFAILEDW = 4;


	public static const int BFFM_VALIDATEFAILEDA = 3;


	public static const int BF_ADJUST = 8192;


	public static const int BF_LEFT = 1;


	public static const int BF_TOP = 2;


	public static const int BF_RIGHT = 4;


	public static const int BF_BOTTOM = 8;


	public static const int BF_RECT = BF_LEFT | BF_TOP | BF_RIGHT | BF_BOTTOM;


	public static const int BIF_EDITBOX = 16;


	public static const int BIF_NEWDIALOGSTYLE = 64;


	public static const int BIF_RETURNONLYFSDIRS = 1;


	public static const int BIF_VALIDATE = 32;


	public static const int BITSPIXEL = 12;


	public static const int BI_BITFIELDS = 3;


	public static const int BI_RGB = 0;


	public static const int BLACKNESS = 66;


	public static const int BLACK_BRUSH = 4;


	public static const int BUTTON_IMAGELIST_ALIGN_LEFT = 0;


	public static const int BUTTON_IMAGELIST_ALIGN_RIGHT = 1;


	public static const int BUTTON_IMAGELIST_ALIGN_CENTER = 4;


	public static const int BM_CLICK = 245;


	public static const int BM_GETCHECK = 240;


	public static const int BM_SETCHECK = 241;


	public static const int BM_SETIMAGE = 247;


	public static const int BM_SETSTYLE = 244;


	public static const int BN_CLICKED = 0;


	public static const int BN_DOUBLECLICKED = 5;


	public static const int BPBF_COMPATIBLEBITMAP = 0;


	public static const int BPBF_DIB = 1;


	public static const int BPBF_TOPDOWNDIB = 2;


	public static const int BPBF_TOPDOWNMONODIB = 3;


	public static const int BPPF_ERASE = 1;


	public static const int BPPF_NOCLIP = 2;


	public static const int BPPF_NONCLIENT = 4;


	public static const int BP_PUSHBUTTON = 1;


	public static const int BP_RADIOBUTTON = 2;


	public static const int BP_CHECKBOX = 3;


	public static const int BP_GROUPBOX = 4;


	public static const int BST_CHECKED = 1;


	public static const int BST_INDETERMINATE = 2;


	public static const int BST_UNCHECKED = 0;


	public static const int BS_3STATE = 5;


	public static const int BS_BITMAP = 128;


	public static const int BS_CENTER = 768;


	public static const int BS_CHECKBOX = 2;


	public static const int BS_COMMANDLINK = 14;


	public static const int BS_DEFPUSHBUTTON = 1;


	public static const int BS_FLAT = 32768;


	public static const int BS_GROUPBOX = 7;


	public static const int BS_ICON = 64;


	public static const int BS_LEFT = 256;


	public static const int BS_NOTIFY = 16384;


	public static const int BS_OWNERDRAW = 11;


	public static const int BS_PATTERN = 3;


	public static const int BS_PUSHBUTTON = 0;


	public static const int BS_PUSHLIKE = 4096;


	public static const int BS_RADIOBUTTON = 4;


	public static const int BS_RIGHT = 512;


	public static const int BS_SOLID = 0;


	public static const int BTNS_AUTOSIZE = 16;


	public static const int BTNS_BUTTON = 0;


	public static const int BTNS_CHECK = 2;


	public static const int BTNS_CHECKGROUP = 6;


	public static const int BTNS_DROPDOWN = 8;


	public static const int BTNS_GROUP = 4;


	public static const int BTNS_SEP = 1;


	public static const int BTNS_SHOWTEXT = 64;


	public static const int CBN_EDITCHANGE = 5;


	public static const int CBN_KILLFOCUS = 4;


	public static const int CBN_SELCHANGE = 1;


	public static const int CBN_SETFOCUS = 3;


	public static const int CBS_AUTOHSCROLL = 64;


	public static const int CBS_DROPDOWN = 2;


	public static const int CBS_DROPDOWNLIST = 3;


	public static const int CBS_CHECKEDNORMAL = 5;


	public static const int CBS_MIXEDNORMAL = 9;


	public static const int CBS_NOINTEGRALHEIGHT = 1024;


	public static const int CBS_SIMPLE = 1;


	public static const int CBS_UNCHECKEDNORMAL = 1;


	public static const int CBS_CHECKEDDISABLED = 8;


	public static const int CBS_CHECKEDHOT = 6;


	public static const int CBS_CHECKEDPRESSED = 7;


	public static const int CBS_MIXEDDISABLED = 0;


	public static const int CBS_MIXEDHOT = 0;


	public static const int CBS_MIXEDPRESSED = 0;


	public static const int CBS_UNCHECKEDDISABLED = 4;


	public static const int CBS_UNCHECKEDHOT = 2;


	public static const int CBS_UNCHECKEDPRESSED = 3;


	public static const int CB_ADDSTRING = 323;


	public static const int CB_DELETESTRING = 324;


	public static const int CB_ERR = 4294967295u;


	public static const int CB_ERRSPACE = 4294967294u;


	public static const int CB_FINDSTRINGEXACT = 344;


	public static const int CB_GETCOUNT = 326;


	public static const int CB_GETCURSEL = 327;


	public static const int CB_GETDROPPEDCONTROLRECT = 338;


	public static const int CB_GETDROPPEDSTATE = 343;


	public static const int CB_GETDROPPEDWIDTH = 351;


	public static const int CB_GETEDITSEL = 320;


	public static const int CB_GETHORIZONTALEXTENT = 349;


	public static const int CB_GETITEMHEIGHT = 340;


	public static const int CB_GETLBTEXT = 328;


	public static const int CB_GETLBTEXTLEN = 329;


	public static const int CB_INSERTSTRING = 330;


	public static const int CB_LIMITTEXT = 321;


	public static const int CB_RESETCONTENT = 331;


	public static const int CB_SELECTSTRING = 333;


	public static const int CB_SETCURSEL = 334;


	public static const int CB_SETDROPPEDWIDTH = 352;


	public static const int CB_SETEDITSEL = 322;


	public static const int CB_SETHORIZONTALEXTENT = 350;


	public static const int CB_SETITEMHEIGHT = 339;


	public static const int CB_SHOWDROPDOWN = 335;


	public static const int CBXS_NORMAL = 1;


	public static const int CBXS_HOT = 2;


	public static const int CBXS_PRESSED = 3;


	public static const int CBXS_DISABLED = 4;


	public static const int CCHILDREN_SCROLLBAR = 5;


	public static const int CCM_FIRST = 8192;


	public static const int CCM_SETBKCOLOR = 8193;


	public static const int CCM_SETVERSION = 8199;


	public static const int CCS_NODIVIDER = 64;


	public static const int CCS_NORESIZE = 4;


	public static const int CCS_VERT = 128;


	public static const int CC_ANYCOLOR = 256;


	public static const int CC_ENABLEHOOK = 16;


	public static const int CC_FULLOPEN = 2;


	public static const int CC_RGBINIT = 1;


	public static const int CDDS_POSTERASE = 4;


	public static const int CDDS_POSTPAINT = 2;


	public static const int CDDS_PREERASE = 3;


	public static const int CDDS_PREPAINT = 1;


	public static const int CDDS_ITEM = 65536;


	public static const int CDDS_ITEMPOSTPAINT = CDDS_ITEM | CDDS_POSTPAINT;


	public static const int CDDS_ITEMPREPAINT = CDDS_ITEM | CDDS_PREPAINT;


	public static const int CDDS_SUBITEM = 131072;


	public static const int CDDS_SUBITEMPOSTPAINT = CDDS_ITEMPOSTPAINT | CDDS_SUBITEM;


	public static const int CDDS_SUBITEMPREPAINT = CDDS_ITEMPREPAINT | CDDS_SUBITEM;


	public static const int CDIS_SELECTED = 1;


	public static const int CDIS_GRAYED = 2;


	public static const int CDIS_DISABLED = 4;


	public static const int CDIS_CHECKED = 8;


	public static const int CDIS_FOCUS = 16;


	public static const int CDIS_DEFAULT = 32;


	public static const int CDIS_HOT = 64;


	public static const int CDIS_MARKED = 128;


	public static const int CDIS_INDETERMINATE = 256;


	public static const int CDM_FIRST = 1024 + 100;


	public static const int CDM_GETSPEC = CDM_FIRST;


	public static const int CDN_FIRST = -601;


	public static const int CDN_SELCHANGE = CDN_FIRST - 1;


	public static const int CDRF_DODEFAULT = 0;


	public static const int CDRF_DOERASE = 8;


	public static const int CDRF_NEWFONT = 2;


	public static const int CDRF_NOTIFYITEMDRAW = 32;


	public static const int CDRF_NOTIFYPOSTERASE = 64;


	public static const int CDRF_NOTIFYPOSTPAINT = 16;


	public static const int CDRF_NOTIFYSUBITEMDRAW = 32;


	public static const int CDRF_SKIPDEFAULT = 4;


	public static const int CDRF_SKIPPOSTPAINT = 256;


	public static const int CFE_AUTOCOLOR = 1073741824;


	public static const int CFE_ITALIC = 2;


	public static const int CFE_STRIKEOUT = 8;


	public static const int CFE_UNDERLINE = 4;


	public static const int CFM_BOLD = 1;


	public static const int CFM_CHARSET = 134217728;


	public static const int CFM_COLOR = 1073741824;


	public static const int CFM_FACE = 536870912;


	public static const int CFM_ITALIC = 2;


	public static const int CFM_SIZE = 2147483648u;


	public static const int CFM_STRIKEOUT = 8;


	public static const int CFM_UNDERLINE = 4;


	public static const int CFM_WEIGHT = 4194304;


	public static const int CFS_POINT = 2;


	public static const int CFS_RECT = 1;


	public static const int CFS_CANDIDATEPOS = 64;


	public static const int CFS_EXCLUDE = 128;


	public static const int CF_EFFECTS = 256;


	public static const int CF_INITTOLOGFONTSTRUCT = 64;


	public static const int CF_SCREENFONTS = 1;


	public static const int CF_TEXT = 1;


	public static const int CF_UNICODETEXT = 13;


	public static const int CF_USESTYLE = 128;


	public static const int CLR_DEFAULT = 4278190080u;


	public static const int CLR_INVALID = 4294967295u;


	public static const int CLR_NONE = 4294967295u;


	public static const int CLSCTX_INPROC_SERVER = 1;


	public static const int COLORONCOLOR = 3;


	public static const int COLOR_3DDKSHADOW = 21 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_3DFACE = 15 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_3DHIGHLIGHT = 20 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_3DHILIGHT = 20 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_3DLIGHT = 22 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_3DSHADOW = 16 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_ACTIVECAPTION = 2 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_BTNFACE = 15 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_BTNHIGHLIGHT = 20 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_BTNSHADOW = 16 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_BTNTEXT = 18 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_CAPTIONTEXT = 9 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_GRADIENTACTIVECAPTION = 27 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_GRADIENTINACTIVECAPTION = 28 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_GRAYTEXT = 17 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_HIGHLIGHT = 13 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_HIGHLIGHTTEXT = 14 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_HOTLIGHT = 26 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_INACTIVECAPTION = 3 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_INACTIVECAPTIONTEXT = 19 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_INFOBK = 24 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_INFOTEXT = 23 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_MENU = 4 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_MENUTEXT = 7 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_SCROLLBAR = 0 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_WINDOW = 5 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_WINDOWFRAME = 6 | SYS_COLOR_INDEX_FLAG;


	public static const int COLOR_WINDOWTEXT = 8 | SYS_COLOR_INDEX_FLAG;


	public static const int COMPLEXREGION = 3;


	public static const int CP_ACP = 0;


	public static const int CP_UTF8 = 65001;


	public static const int CP_DROPDOWNBUTTON = 1;


	public static const int CP_INSTALLED = 1;


	public static const int CPS_COMPLETE = 1;


	public static const int CS_BYTEALIGNWINDOW = 8192;


	public static const int CS_DBLCLKS = 8;


	public static const int CS_DROPSHADOW = 131072;


	public static const int CS_GLOBALCLASS = 16384;


	public static const int CS_HREDRAW = 2;


	public static const int CS_VREDRAW = 1;


	public static const int CW_USEDEFAULT = 2147483648u;


	public static const TCHAR[] DATETIMEPICK_CLASS = "SysDateTimePick32";


	public static const int DATE_LONGDATE = 2;


	public static const int DATE_SHORTDATE = 1;


	public static const int DATE_YEARMONTH = 8;


	public static const int DCX_CACHE = 2;


	public static const int DCX_CLIPCHILDREN = 8;


	public static const int DCX_CLIPSIBLINGS = 16;


	public static const int DCX_INTERSECTRGN = 128;


	public static const int DCX_WINDOW = 1;


	public static const int DEFAULT_CHARSET = 1;


	public static const int DEFAULT_GUI_FONT = 17;


	public static const int DFCS_BUTTONCHECK = 0;


	public static const int DFCS_CHECKED = 1024;


	public static const int DFCS_FLAT = 16384;


	public static const int DFCS_INACTIVE = 256;


	public static const int DFCS_PUSHED = 512;


	public static const int DFCS_SCROLLDOWN = 1;


	public static const int DFCS_SCROLLLEFT = 2;


	public static const int DFCS_SCROLLRIGHT = 3;


	public static const int DFCS_SCROLLUP = 0;


	public static const int DFC_BUTTON = 4;


	public static const int DFC_SCROLL = 3;


	public static const int DIB_RGB_COLORS = 0;


	public static const int DISP_E_EXCEPTION = 2147614729u;


	public static const int DI_NORMAL = 3;


	public static const int DI_NOMIRROR = 16;


	public static const int DLGC_BUTTON = 8192;


	public static const int DLGC_HASSETSEL = 8;


	public static const int DLGC_STATIC = 256;


	public static const int DLGC_WANTALLKEYS = 4;


	public static const int DLGC_WANTARROWS = 1;


	public static const int DLGC_WANTCHARS = 128;


	public static const int DLGC_WANTTAB = 2;


	public static const int DM_SETDEFID = 1025;


	public static const int DSS_DISABLED = 32;


	public static const int DSTINVERT = 5570569;


	public static const int DST_BITMAP = 4;


	public static const int DST_ICON = 3;


	public static const int DT_BOTTOM = 8;


	public static const int DT_CALCRECT = 1024;


	public static const int DT_CENTER = 1;


	public static const int DT_EDITCONTROL = 8192;


	public static const int DT_EXPANDTABS = 64;


	public static const int DT_ENDELLIPSIS = 32768;


	public static const int DT_HIDEPREFIX = 1048576;


	public static const int DT_LEFT = 0;


	public static const int DT_NOPREFIX = 2048;


	public static const int DT_RASPRINTER = 2;


	public static const int DT_RIGHT = 2;


	public static const int DT_SINGLELINE = 32;


	public static const int DT_TOP = 0;


	public static const int DT_VCENTER = 4;


	public static const int DT_WORDBREAK = 16;


	public static const int DTM_FIRST = 4096;


	public static const int DTM_GETSYSTEMTIME = DTM_FIRST + 1;


	public static const int DTM_SETFORMAT = IsUnicode ? DTM_FIRST + 50 : DTM_FIRST + 5;


	public static const int DTM_SETSYSTEMTIME = DTM_FIRST + 2;


	public static const int DTN_FIRST = 4294966536u;


	public static const int DTN_DATETIMECHANGE = DTN_FIRST + 1;


	public static const int DTN_CLOSEUP = DTN_FIRST + 7;


	public static const int DTN_DROPDOWN = DTN_FIRST + 6;


	public static const int DTS_LONGDATEFORMAT = 4;


	public static const int DTS_SHORTDATECENTURYFORMAT = 12;


	public static const int DTS_SHORTDATEFORMAT = 0;


	public static const int DTS_TIMEFORMAT = 9;


	public static const int DTS_UPDOWN = 1;


	public static const int DWM_BB_ENABLE = 1;


	public static const int DWM_BB_BLURREGION = 2;


	public static const int DWM_BB_TRANSITIONONMAXIMIZED = 4;


	public static const int E_POINTER = 2147500035u;


	public static const int EBP_NORMALGROUPBACKGROUND = 5;


	public static const int EBP_NORMALGROUPCOLLAPSE = 6;


	public static const int EBP_NORMALGROUPEXPAND = 7;


	public static const int EBP_NORMALGROUPHEAD = 8;


	public static const int EBNGC_NORMAL = 1;


	public static const int EBNGC_HOT = 2;


	public static const int EBNGC_PRESSED = 3;


	public static const int EBP_HEADERBACKGROUND = 1;


	public static const int EC_LEFTMARGIN = 1;


	public static const int EC_RIGHTMARGIN = 2;


	public static const int ECOOP_AND = 3;


	public static const int ECOOP_OR = 2;


	public static const int ECO_AUTOHSCROLL = 128;


	public static const int EDGE_RAISED = BDR_RAISEDOUTER | BDR_RAISEDINNER;


	public static const int EDGE_SUNKEN = BDR_SUNKENOUTER | BDR_SUNKENINNER;


	public static const int EDGE_ETCHED = BDR_SUNKENOUTER | BDR_RAISEDINNER;


	public static const int EDGE_BUMP = BDR_RAISEDOUTER | BDR_SUNKENINNER;


	public static const int ELF_VENDOR_SIZE = 4;


	public static const int EM_CANUNDO = 198;


	public static const int EM_CHARFROMPOS = 215;


	public static const int EM_DISPLAYBAND = 1075;


	public static const int EM_GETFIRSTVISIBLELINE = 206;


	public static const int EM_GETLIMITTEXT = 213;


	public static const int EM_GETLINE = 196;


	public static const int EM_GETLINECOUNT = 186;


	public static const int EM_GETMARGINS = 212;


	public static const int EM_GETPASSWORDCHAR = 210;


	public static const int EM_GETSCROLLPOS = 1245;


	public static const int EM_GETSEL = 176;


	public static const int EM_LIMITTEXT = 197;


	public static const int EM_LINEFROMCHAR = 201;


	public static const int EM_LINEINDEX = 187;


	public static const int EM_LINELENGTH = 193;


	public static const int EM_LINESCROLL = 182;


	public static const int EM_POSFROMCHAR = 214;


	public static const int EM_REPLACESEL = 194;


	public static const int EM_SCROLLCARET = 183;


	public static const int EM_SETBKGNDCOLOR = 1091;


	public static const int EM_SETLIMITTEXT = 197;


	public static const int EM_SETMARGINS = 211;


	public static const int EM_SETOPTIONS = 1101;


	public static const int EM_SETPARAFORMAT = 1095;


	public static const int EM_SETPASSWORDCHAR = 204;


	public static const int EM_SETCUEBANNER = 5376 + 1;


	public static const int EM_SETREADONLY = 207;


	public static const int EM_SETSEL = 177;


	public static const int EM_SETTABSTOPS = 203;


	public static const int EM_UNDO = 199;


	public static const int EMR_EXTCREATEFONTINDIRECTW = 82;


	public static const int EMR_EXTTEXTOUTW = 84;


	public static const int EN_ALIGN_LTR_EC = 1792;


	public static const int EN_ALIGN_RTL_EC = 1793;


	public static const int EN_CHANGE = 768;


	public static const int EP_EDITTEXT = 1;


	public static const int ERROR_NO_MORE_ITEMS = 259;


	public static const int ESB_DISABLE_BOTH = 3;


	public static const int ESB_ENABLE_BOTH = 0;


	public static const int ES_AUTOHSCROLL = 128;


	public static const int ES_AUTOVSCROLL = 64;


	public static const int ES_CENTER = 1;


	public static const int ES_MULTILINE = 4;


	public static const int ES_NOHIDESEL = 256;


	public static const int ES_PASSWORD = 32;


	public static const int ES_READONLY = 2048;


	public static const int ES_RIGHT = 2;


	public static const int ETO_CLIPPED = 4;


	public static const int ETS_NORMAL = 1;


	public static const int ETS_HOT = 2;


	public static const int ETS_SELECTED = 3;


	public static const int ETS_DISABLED = 4;


	public static const int ETS_FOCUSED = 5;


	public static const int ETS_READONLY = 6;


	public static const int EVENT_OBJECT_FOCUS = 32773;


	public static const int EVENT_OBJECT_LOCATIONCHANGE = 32779;


	public static const int EVENT_OBJECT_SELECTIONWITHIN = 32777;


	public static const int EVENT_OBJECT_VALUECHANGE = 32782;


	public static const int FALT = 16;


	public static const int FCONTROL = 8;


	public static const int FE_FONTSMOOTHINGCLEARTYPE = 2;


	public static const int FEATURE_DISABLE_NAVIGATION_SOUNDS = 21;


	public static const int FILE_ATTRIBUTE_NORMAL = 128;


	public static const int FNERR_INVALIDFILENAME = 12290;


	public static const int FNERR_BUFFERTOOSMALL = 12291;


	public static const int FORMAT_MESSAGE_ALLOCATE_BUFFER = 256;


	public static const int FORMAT_MESSAGE_FROM_SYSTEM = 4096;


	public static const int FORMAT_MESSAGE_IGNORE_INSERTS = 512;


	public static const int FR_PRIVATE = 16;


	public static const int FSHIFT = 4;


	public static const int FVIRTKEY = 1;


	public static const int GBS_NORMAL = 1;


	public static const int GBS_DISABLED = 2;


	public static const int GCS_COMPSTR = 8;


	public static const int GCS_RESULTSTR = 2048;


	public static const int GCS_COMPATTR = 16;


	public static const int GCS_COMPCLAUSE = 32;


	public static const int GCS_CURSORPOS = 128;


	public static const int GDT_VALID = 0;


	public static const int GET_FEATURE_FROM_PROCESS = 2;


	public static const int GLPS_CLOSED = 1;


	public static const int GLPS_OPENED = 2;


	public static const int GM_ADVANCED = 2;


	public static const int GMDI_USEDISABLED = 1;


	public static const int GMEM_FIXED = 0;


	public static const int GMEM_ZEROINIT = 64;


	public static const int GN_CONTEXTMENU = 1000;


	public static const int GPTR = 64;


	public static const int GRADIENT_FILL_RECT_H = 0;


	public static const int GRADIENT_FILL_RECT_V = 1;


	public static const int GTL_NUMBYTES = 16;


	public static const int GTL_NUMCHARS = 8;


	public static const int GTL_PRECISE = 2;


	public static const int GT_DEFAULT = 0;


	public static const int GUI_16BITTASK = 32;


	public static const int GUI_CARETBLINKING = 1;


	public static const int GUI_INMENUMODE = 4;


	public static const int GUI_INMOVESIZE = 2;


	public static const int GUI_POPUPMENUMODE = 16;


	public static const int GUI_SYSTEMMENUMODE = 8;


	public static const int GWL_EXSTYLE = 4294967276u;


	public static const int GWL_ID = -12;


	public static const int GWL_HWNDPARENT = -8;


	public static const int GWL_STYLE = 4294967280u;


	public static const int GWL_USERDATA = 4294967275u;


	public static const int GWL_WNDPROC = 4294967292u;


	public static const int GWLP_ID = -12;


	public static const int GWLP_HWNDPARENT = -8;


	public static const int GWLP_USERDATA = 4294967275u;


	public static const int GWLP_WNDPROC = 4294967292u;


	public static const int GW_CHILD = 5;


	public static const int GW_HWNDFIRST = 0;


	public static const int GW_HWNDLAST = 1;


	public static const int GW_HWNDNEXT = 2;


	public static const int GW_HWNDPREV = 3;


	public static const int GW_OWNER = 4;


	public static const HBITMAP HBMMENU_CALLBACK = cast(HBITMAP)4294967295u;


	public static const int HCBT_CREATEWND = 3;


	public static const int HCF_HIGHCONTRASTON = 1;


	public static const int HDF_BITMAP = 8192;


	public static const int HDF_BITMAP_ON_RIGHT = 4096;


	public static const int HDF_CENTER = 2;


	public static const int HDF_JUSTIFYMASK = 3;


	public static const int HDF_IMAGE = 2048;


	public static const int HDF_LEFT = 0;


	public static const int HDF_RIGHT = 1;


	public static const int HDF_SORTUP = 1024;


	public static const int HDF_SORTDOWN = 512;


	public static const int HDI_BITMAP = 16;


	public static const int HDI_IMAGE = 32;


	public static const int HDI_ORDER = 128;


	public static const int HDI_TEXT = 2;


	public static const int HDI_WIDTH = 1;


	public static const int HDI_FORMAT = 4;


	public static const int HDM_FIRST = 4608;


	public static const int HDM_DELETEITEM = HDM_FIRST + 2;


	public static const int HDM_GETBITMAPMARGIN = HDM_FIRST + 21;


	public static const int HDM_GETITEMCOUNT = 4608;


	public static const int HDM_GETITEMA = HDM_FIRST + 3;


	public static const int HDM_GETITEMW = HDM_FIRST + 11;


	public static const int HDM_GETITEM = IsUnicode ? HDM_GETITEMW : HDM_GETITEMA;


	public static const int HDM_GETITEMRECT = HDM_FIRST + 7;


	public static const int HDM_GETORDERARRAY = HDM_FIRST + 17;


	public static const int HDM_HITTEST = HDM_FIRST + 6;


	public static const int HDM_INSERTITEMA = HDM_FIRST + 1;


	public static const int HDM_INSERTITEMW = HDM_FIRST + 10;


	public static const int HDM_INSERTITEM = IsUnicode ? HDM_INSERTITEMW : HDM_INSERTITEMA;


	public static const int HDM_LAYOUT = HDM_FIRST + 5;


	public static const int HDM_ORDERTOINDEX = HDM_FIRST + 15;


	public static const int HDM_SETIMAGELIST = HDM_FIRST + 8;


	public static const int HDM_SETITEMA = HDM_FIRST + 4;


	public static const int HDM_SETITEMW = HDM_FIRST + 12;


	public static const int HDM_SETITEM = IsUnicode ? HDM_SETITEMW : HDM_SETITEMA;


	public static const int HDM_SETORDERARRAY = HDM_FIRST + 18;


	public static const int HDN_FIRST = 4294966996u;


	public static const int HDN_BEGINDRAG = HDN_FIRST - 10;


	public static const int HDN_BEGINTRACK = IsUnicode ? 4294966970u : 4294966990u;


	public static const int HDN_BEGINTRACKW = 4294966970u;


	public static const int HDN_BEGINTRACKA = 4294966990u;


	public static const int HDN_DIVIDERDBLCLICKA = HDN_FIRST - 5;


	public static const int HDN_DIVIDERDBLCLICKW = HDN_FIRST - 25;


	public static const int HDN_DIVIDERDBLCLICK = IsUnicode ? HDN_DIVIDERDBLCLICKW : HDN_DIVIDERDBLCLICKA;


	public static const int HDN_ENDDRAG = HDN_FIRST - 11;


	public static const int HDN_ITEMCHANGED = IsUnicode ? 4294966975u : 4294966995u;


	public static const int HDN_ITEMCHANGEDW = 4294966975u;


	public static const int HDN_ITEMCHANGEDA = 4294966995u;


	public static const int HDN_ITEMCHANGINGW = HDN_FIRST - 20;


	public static const int HDN_ITEMCHANGINGA = HDN_FIRST;


	public static const int HDN_ITEMCLICKW = HDN_FIRST - 22;


	public static const int HDN_ITEMCLICKA = HDN_FIRST - 2;


	public static const int HDN_ITEMDBLCLICKW = HDN_FIRST - 23;


	public static const int HDN_ITEMDBLCLICKA = HDN_FIRST - 3;


	public static const int HDN_ITEMDBLCLICK = IsUnicode ? HDN_ITEMDBLCLICKW : HDN_ITEMDBLCLICKA;


	public static const int HDS_BUTTONS = 2;


	public static const int HDS_DRAGDROP = 64;


	public static const int HDS_FULLDRAG = 128;


	public static const int HDS_HIDDEN = 8;


	public static const int HELPINFO_MENUITEM = 2;


	public static const int HHT_ONDIVIDER = 4;


	public static const int HHT_ONDIVOPEN = 8;


	public static const int HICF_ARROWKEYS = 2;


	public static const int HINST_COMMCTRL = 4294967295u;


	public static const int HKEY_CLASSES_ROOT = 2147483648u;


	public static const int HKEY_CURRENT_USER = 2147483649u;


	public static const int HKEY_LOCAL_MACHINE = 2147483650u;


	public static const int HORZRES = 8;


	public static const int HTBORDER = 18;


	public static const int HTCAPTION = 2;


	public static const int HTCLIENT = 1;


	public static const int HTERROR = -2;


	public static const int HTHSCROLL = 6;


	public static const int HTMENU = 5;


	public static const int HTNOWHERE = 0;


	public static const int HTSYSMENU = 3;


	public static const int HTTRANSPARENT = 4294967295u;


	public static const int HTVSCROLL = 7;


	public static const int HWND_BOTTOM = 1;


	public static const int HWND_TOP = 0;


	public static const int HWND_TOPMOST = 4294967295u;


	public static const int HWND_NOTOPMOST = -2;


	public static const int ICC_COOL_CLASSES = 1024;


	public static const int ICC_DATE_CLASSES = 256;


	public static const int ICM_NOTOPEN = 0;


	public static const int ICON_BIG = 1;


	public static const int ICON_SMALL = 0;


	public static const int I_IMAGECALLBACK = -1;


	public static const int I_IMAGENONE = -2;


	public static const int IDABORT = 3;


	public static const int IDANI_CAPTION = 3;


	public static const int IDB_STD_SMALL_COLOR = 0;


	public static const int IDC_APPSTARTING = 32650;


	public static const int IDC_ARROW = 32512;


	public static const int IDC_CROSS = 32515;


	public static const TCHAR* IDC_HAND = cast(TCHAR*)32649;


	public static const int IDC_HELP = 32651;


	public static const int IDC_IBEAM = 32513;


	public static const int IDC_NO = 32648;


	public static const int IDC_SIZE = 32640;


	public static const int IDC_SIZEALL = 32646;


	public static const int IDC_SIZENESW = 32643;


	public static const int IDC_SIZENS = 32645;


	public static const int IDC_SIZENWSE = 32642;


	public static const int IDC_SIZEWE = 32644;


	public static const int IDC_UPARROW = 32516;


	public static const int IDC_WAIT = 32514;


	public static const int IDI_APPLICATION = 32512;


	public static const int IDNO = 7;


	public static const int IDOK = 1;


	public static const int IDRETRY = 4;


	public static const int IDYES = 6;


	public static const int ILC_COLOR = 0;


	public static const int ILC_COLOR16 = 16;


	public static const int ILC_COLOR24 = 24;


	public static const int ILC_COLOR32 = 32;


	public static const int ILC_COLOR4 = 4;


	public static const int ILC_COLOR8 = 8;


	public static const int ILC_MASK = 1;


	public static const int ILC_MIRROR = 8192;


	public static const int ILD_NORMAL = 0;


	public static const int ILD_SELECTED = 4;


	public static const int IMAGE_BITMAP = 0;


	public static const int IMAGE_CURSOR = 2;


	public static const int IMAGE_ICON = 1;


	public static const int IME_CMODE_FULLSHAPE = 8;


	public static const int IME_CMODE_KATAKANA = 2;


	public static const int IME_CMODE_NATIVE = 1;


	public static const int IME_CMODE_ROMAN = 16;


	public static const int IMEMOUSE_LDOWN = 1;


	public static const int INFINITE = 4294967295u;


	public static const int INPUT_KEYBOARD = 1;


	public static const int INPUT_MOUSE = 0;


	public static const int INTERNET_OPTION_END_BROWSER_SESSION = 42;


	public static const int KEY_ENUMERATE_SUB_KEYS = 8;


	public static const int KEY_NOTIFY = 16;


	public static const int KEY_QUERY_VALUE = 1;


	public static const int KEY_READ = 131097;


	public static const int KEYEVENTF_KEYUP = 2;


	public static const int L_MAX_URL_LENGTH = 2084;


	public static const int LANG_NEUTRAL = 0;


	public static const int LANG_USER_DEFAULT = 1 << 10;


	public static const int LAYOUT_RTL = 1;


	public static const int LAYOUT_BITMAPORIENTATIONPRESERVED = 8;


	public static const int LBN_DBLCLK = 2;


	public static const int LBN_SELCHANGE = 1;


	public static const int LBS_EXTENDEDSEL = 2048;


	public static const int LBS_MULTIPLESEL = 8;


	public static const int LBS_NOINTEGRALHEIGHT = 256;


	public static const int LBS_NOTIFY = 1;


	public static const int LB_ADDSTRING = 384;


	public static const int LB_DELETESTRING = 386;


	public static const int LB_ERR = 4294967295u;


	public static const int LB_ERRSPACE = 4294967294u;


	public static const int LB_FINDSTRINGEXACT = 418;


	public static const int LB_GETCARETINDEX = 415;


	public static const int LB_GETCOUNT = 395;


	public static const int LB_GETCURSEL = 392;


	public static const int LB_GETHORIZONTALEXTENT = 403;


	public static const int LB_GETITEMHEIGHT = 417;


	public static const int LB_GETITEMRECT = 408;


	public static const int LB_GETSEL = 391;


	public static const int LB_GETSELCOUNT = 400;


	public static const int LB_GETSELITEMS = 401;


	public static const int LB_GETTEXT = 393;


	public static const int LB_GETTEXTLEN = 394;


	public static const int LB_GETTOPINDEX = 398;


	public static const int LB_INITSTORAGE = 424;


	public static const int LB_INSERTSTRING = 385;


	public static const int LB_RESETCONTENT = 388;


	public static const int LB_SELITEMRANGE = 411;


	public static const int LB_SELITEMRANGEEX = 387;


	public static const int LB_SETANCHORINDEX = 61852;


	public static const int LB_SETCARETINDEX = 414;


	public static const int LB_SETCURSEL = 390;


	public static const int LB_SETHORIZONTALEXTENT = 404;


	public static const int LB_SETSEL = 389;


	public static const int LB_SETTOPINDEX = 407;


	public static const int LF_FULLFACESIZE = 64;


	public static const int LF_FACESIZE = 32;


	public static const int LGRPID_ARABIC = 13;


	public static const int LGRPID_HEBREW = 12;


	public static const int LGRPID_INSTALLED = 1;


	public static const int LIF_ITEMINDEX = 1;


	public static const int LIF_STATE = 2;


	public static const int LIS_FOCUSED = 1;


	public static const int LIS_ENABLED = 2;


	public static const int LISS_HOT = 2;


	public static const int LISS_SELECTED = 3;


	public static const int LISS_SELECTEDNOTFOCUS = 5;


	public static const int LM_GETIDEALHEIGHT = 1793;


	public static const int LM_SETITEM = 1794;


	public static const int LM_GETITEM = 1795;


	public static const int LCID_SUPPORTED = 2;


	public static const int LOCALE_IDEFAULTANSICODEPAGE = 4100;


	public static const int LOCALE_IDATE = 33;


	public static const int LOCALE_ITIME = 35;


	public static const int LOCALE_RETURN_NUMBER = 536870912;


	public static const int LOCALE_S1159 = 40;


	public static const int LOCALE_S2359 = 41;


	public static const int LOCALE_SDECIMAL = 14;


	public static const int LOCALE_SISO3166CTRYNAME = 90;


	public static const int LOCALE_SISO639LANGNAME = 89;


	public static const int LOCALE_SLONGDATE = 32;


	public static const int LOCALE_SSHORTDATE = 31;


	public static const int LOCALE_STIMEFORMAT = 4099;


	public static const int LOCALE_SYEARMONTH = 4102;


	public static const int LOCALE_SDAYNAME1 = 42;


	public static const int LOCALE_SDAYNAME2 = 43;


	public static const int LOCALE_SDAYNAME3 = 44;


	public static const int LOCALE_SDAYNAME4 = 45;


	public static const int LOCALE_SDAYNAME5 = 46;


	public static const int LOCALE_SDAYNAME6 = 47;


	public static const int LOCALE_SDAYNAME7 = 48;


	public static const int LOCALE_SMONTHNAME1 = 56;


	public static const int LOCALE_SMONTHNAME2 = 57;


	public static const int LOCALE_SMONTHNAME3 = 58;


	public static const int LOCALE_SMONTHNAME4 = 59;


	public static const int LOCALE_SMONTHNAME5 = 60;


	public static const int LOCALE_SMONTHNAME6 = 61;


	public static const int LOCALE_SMONTHNAME7 = 62;


	public static const int LOCALE_SMONTHNAME8 = 63;


	public static const int LOCALE_SMONTHNAME9 = 64;


	public static const int LOCALE_SMONTHNAME10 = 65;


	public static const int LOCALE_SMONTHNAME11 = 66;


	public static const int LOCALE_SMONTHNAME12 = 67;


	public static const int LOCALE_USER_DEFAULT = 1024;


	public static const int LOGPIXELSX = 88;


	public static const int LOGPIXELSY = 90;


	public static const TCHAR* LPSTR_TEXTCALLBACK = cast(TCHAR*)4294967295u;


	public static const int LR_DEFAULTCOLOR = 0;


	public static const int LR_SHARED = 32768;


	public static const int LVCFMT_BITMAP_ON_RIGHT = 4096;


	public static const int LVCFMT_CENTER = 2;


	public static const int LVCFMT_IMAGE = 2048;


	public static const int LVCFMT_LEFT = 0;


	public static const int LVCFMT_RIGHT = 1;


	public static const int LVCF_FMT = 1;


	public static const int LVCF_IMAGE = 16;


	public static const int LVCFMT_JUSTIFYMASK = 3;


	public static const int LVCF_TEXT = 4;


	public static const int LVCF_WIDTH = 2;


	public static const int LVHT_ONITEM = 14;


	public static const int LVHT_ONITEMICON = 2;


	public static const int LVHT_ONITEMLABEL = 4;


	public static const int LVHT_ONITEMSTATEICON = 8;


	public static const int LVIF_IMAGE = 2;


	public static const int LVIF_INDENT = 16;


	public static const int LVIF_STATE = 8;


	public static const int LVIF_TEXT = 1;


	public static const int LVIR_BOUNDS = 0;


	public static const int LVIR_ICON = 1;


	public static const int LVIR_LABEL = 2;


	public static const int LVIR_SELECTBOUNDS = 3;


	public static const int LVIS_DROPHILITED = 8;


	public static const int LVIS_FOCUSED = 1;


	public static const int LVIS_SELECTED = 2;


	public static const int LVIS_STATEIMAGEMASK = 61440;


	public static const int LVM_FIRST = 4096;


	public static const int LVM_APPROXIMATEVIEWRECT = 4160;


	public static const int LVM_CREATEDRAGIMAGE = LVM_FIRST + 33;


	public static const int LVM_DELETEALLITEMS = 4105;


	public static const int LVM_DELETECOLUMN = 4124;


	public static const int LVM_DELETEITEM = 4104;


	public static const int LVM_ENSUREVISIBLE = 4115;


	public static const int LVM_GETBKCOLOR = 4096;


	public static const int LVM_GETCOLUMN = IsUnicode ? 4191 : 4121;


	public static const int LVM_GETCOLUMNORDERARRAY = LVM_FIRST + 59;


	public static const int LVM_GETCOLUMNWIDTH = 4125;


	public static const int LVM_GETCOUNTPERPAGE = 4136;


	public static const int LVM_GETEXTENDEDLISTVIEWSTYLE = 4151;


	public static const int LVM_GETHEADER = 4127;


	public static const int LVM_GETIMAGELIST = 4098;


	public static const int LVM_GETITEM = IsUnicode ? 4171 : 4101;


	public static const int LVM_GETITEMW = 4171;


	public static const int LVM_GETITEMA = 4101;


	public static const int LVM_GETITEMCOUNT = 4100;


	public static const int LVM_GETITEMRECT = 4110;


	public static const int LVM_GETITEMSTATE = 4140;


	public static const int LVM_GETNEXTITEM = 4108;


	public static const int LVM_GETSELECTEDCOLUMN = LVM_FIRST + 174;


	public static const int LVM_GETSELECTEDCOUNT = 4146;


	public static const int LVM_GETSTRINGWIDTH = IsUnicode ? 4183 : 4113;


	public static const int LVM_GETSUBITEMRECT = 4152;


	public static const int LVM_GETTEXTCOLOR = 4131;


	public static const int LVM_GETTOOLTIPS = 4174;


	public static const int LVM_GETTOPINDEX = 4135;


	public static const int LVM_HITTEST = 4114;


	public static const int LVM_INSERTCOLUMN = IsUnicode ? 4193 : 4123;


	public static const int LVM_INSERTITEM = IsUnicode ? 4173 : 4103;


	public static const int LVM_REDRAWITEMS = LVM_FIRST + 21;


	public static const int LVM_SCROLL = 4116;


	public static const int LVM_SETBKCOLOR = 4097;


	public static const int LVM_SETCALLBACKMASK = LVM_FIRST + 11;


	public static const int LVM_SETCOLUMN = IsUnicode ? 4192 : 4122;


	public static const int LVM_SETCOLUMNORDERARRAY = LVM_FIRST + 58;


	public static const int LVM_SETCOLUMNWIDTH = 4126;


	public static const int LVM_SETEXTENDEDLISTVIEWSTYLE = 4150;


	public static const int LVM_SETIMAGELIST = 4099;


	public static const int LVM_SETITEM = IsUnicode ? 4172 : 4102;


	public static const int LVM_SETITEMCOUNT = LVM_FIRST + 47;


	public static const int LVM_SETITEMSTATE = 4139;


	public static const int LVM_SETSELECTIONMARK = LVM_FIRST + 67;


	public static const int LVM_SETSELECTEDCOLUMN = LVM_FIRST + 140;


	public static const int LVM_SETTEXTBKCOLOR = 4134;


	public static const int LVM_SETTEXTCOLOR = 4132;


	public static const int LVM_SETTOOLTIPS = LVM_FIRST + 74;


	public static const int LVM_SUBITEMHITTEST = LVM_FIRST + 57;


	public static const int LVNI_FOCUSED = 1;


	public static const int LVNI_SELECTED = 2;


	public static const int LVN_BEGINDRAG = 4294967187u;


	public static const int LVN_BEGINRDRAG = 4294967185u;


	public static const int LVN_COLUMNCLICK = 4294967188u;


	public static const int LVN_FIRST = 4294967196u;


	public static const int LVN_GETDISPINFOA = LVN_FIRST - 50;


	public static const int LVN_GETDISPINFOW = LVN_FIRST - 77;


	public static const int LVN_ITEMACTIVATE = 4294967182u;


	public static const int LVN_ITEMCHANGED = 4294967195u;


	public static const int LVN_MARQUEEBEGIN = 4294967140u;


	public static const int LVN_ODFINDITEMA = LVN_FIRST - 52;


	public static const int LVN_ODFINDITEMW = LVN_FIRST - 79;


	public static const int LVN_ODSTATECHANGED = LVN_FIRST - 15;


	public static const int LVP_LISTITEM = 1;


	public static const int LVSCW_AUTOSIZE = 4294967295u;


	public static const int LVSCW_AUTOSIZE_USEHEADER = 4294967294u;


	public static const int LVSICF_NOINVALIDATEALL = 1;


	public static const int LVSICF_NOSCROLL = 2;


	public static const int LVSIL_SMALL = 1;


	public static const int LVSIL_STATE = 2;


	public static const int LVS_EX_DOUBLEBUFFER = 65536;


	public static const int LVS_EX_FULLROWSELECT = 32;


	public static const int LVS_EX_GRIDLINES = 1;


	public static const int LVS_EX_HEADERDRAGDROP = 16;


	public static const int LVS_EX_LABELTIP = 16384;


	public static const int LVS_EX_ONECLICKACTIVATE = 64;


	public static const int LVS_EX_SUBITEMIMAGES = 2;


	public static const int LVS_EX_TRACKSELECT = 8;


	public static const int LVS_EX_TRANSPARENTBKGND = 8388608;


	public static const int LVS_EX_TWOCLICKACTIVATE = 128;


	public static const int LVS_LIST = 3;


	public static const int LVS_NOCOLUMNHEADER = 16384;


	public static const int LVS_NOSCROLL = 8192;


	public static const int LVS_OWNERDATA = 4096;


	public static const int LVS_OWNERDRAWFIXED = 1024;


	public static const int LVS_REPORT = 1;


	public static const int LVS_SHAREIMAGELISTS = 64;


	public static const int LVS_SHOWSELALWAYS = 8;


	public static const int LVS_SINGLESEL = 4;


	public static const int LWA_COLORKEY = 1;


	public static const int LWA_ALPHA = 2;


	public static const int MAX_LINKID_TEXT = 48;


	public static const int MA_NOACTIVATE = 3;


	public static const int MB_ABORTRETRYIGNORE = 2;


	public static const int MB_APPLMODAL = 0;


	public static const int MB_ICONERROR = 16;


	public static const int MB_ICONINFORMATION = 64;


	public static const int MB_ICONQUESTION = 32;


	public static const int MB_ICONWARNING = 48;


	public static const int MB_OK = 0;


	public static const int MB_OKCANCEL = 1;


	public static const int MB_PRECOMPOSED = 1;


	public static const int MB_RETRYCANCEL = 5;


	public static const int MB_RIGHT = 524288;


	public static const int MB_RTLREADING = 1048576;


	public static const int MB_SYSTEMMODAL = 4096;


	public static const int MB_TASKMODAL = 8192;


	public static const int MB_TOPMOST = 262144;


	public static const int MB_YESNO = 4;


	public static const int MB_YESNOCANCEL = 3;


	public static const int MCM_FIRST = 4096;


	public static const int MCM_GETCURSEL = MCM_FIRST + 1;


	public static const int MCM_SETCURSEL = MCM_FIRST + 2;


	public static const int MCN_FIRST = 4294966546u;


	public static const int MCN_SELCHANGE = MCN_FIRST + 1;


	public static const int MCN_SELECT = MCN_FIRST + 4;


	public static const int MCM_GETMINREQRECT = MCM_FIRST + 9;


	public static const int MCS_NOTODAY = 16;


	public static const int MDIS_ALLCHILDSTYLES = 1;


	public static const int MFS_CHECKED = 8;


	public static const int MFS_DISABLED = 3;


	public static const int MFS_GRAYED = 3;


	public static const int MFT_RADIOCHECK = 512;


	public static const int MFT_RIGHTJUSTIFY = 16384;


	public static const int MFT_RIGHTORDER = 8192;


	public static const int MFT_SEPARATOR = 2048;


	public static const int MFT_STRING = 0;


	public static const int MF_BYCOMMAND = 0;


	public static const int MF_BYPOSITION = 1024;


	public static const int MF_CHECKED = 8;


	public static const int MF_DISABLED = 2;


	public static const int MF_ENABLED = 0;


	public static const int MF_GRAYED = 1;


	public static const int MF_HILITE = 128;


	public static const int MF_POPUP = 16;


	public static const int MF_SEPARATOR = 2048;


	public static const int MF_SYSMENU = 8192;


	public static const int MF_UNCHECKED = 0;


	public static const int MIIM_BITMAP = 128;


	public static const int MIIM_DATA = 32;


	public static const int MIIM_ID = 2;


	public static const int MIIM_STATE = 1;


	public static const int MIIM_STRING = 64;


	public static const int MIIM_SUBMENU = 4;


	public static const int MIIM_TYPE = 16;


	public static const int MIM_BACKGROUND = 2;


	public static const int MIM_STYLE = 16;


	public static const int MK_ALT = 32;


	public static const int MK_CONTROL = 8;


	public static const int MK_LBUTTON = 1;


	public static const int MK_MBUTTON = 16;


	public static const int MK_RBUTTON = 2;


	public static const int MK_SHIFT = 4;


	public static const int MK_XBUTTON1 = 32;


	public static const int MK_XBUTTON2 = 64;


	public static const int MM_TEXT = 1;


	public static const int MNC_CLOSE = 1;


	public static const int MNS_CHECKORBMP = 67108864;


	public static const int MONITOR_DEFAULTTONEAREST = 2;


	public static const int MONITORINFOF_PRIMARY = 1;


	public static const TCHAR[] MONTHCAL_CLASS = "SysMonthCal32";


	public static const int MOUSEEVENTF_ABSOLUTE = 32768;


	public static const int MOUSEEVENTF_LEFTDOWN = 2;


	public static const int MOUSEEVENTF_LEFTUP = 4;


	public static const int MOUSEEVENTF_MIDDLEDOWN = 32;


	public static const int MOUSEEVENTF_MIDDLEUP = 64;


	public static const int MOUSEEVENTF_MOVE = 1;


	public static const int MOUSEEVENTF_RIGHTDOWN = 8;


	public static const int MOUSEEVENTF_RIGHTUP = 16;


	public static const int MOUSEEVENTF_VIRTUALDESK = 16384;


	public static const int MOUSEEVENTF_WHEEL = 2048;


	public static const int MOUSEEVENTF_XDOWN = 128;


	public static const int MOUSEEVENTF_XUP = 256;


	public static const int MSGF_DIALOGBOX = 0;


	public static const int MSGF_COMMCTRL_BEGINDRAG = 16896;


	public static const int MSGF_COMMCTRL_SIZEHEADER = 16897;


	public static const int MSGF_COMMCTRL_DRAGSELECT = 16898;


	public static const int MSGF_COMMCTRL_TOOLBARCUST = 16899;


	public static const int MSGF_MAINLOOP = 8;


	public static const int MSGF_MENU = 2;


	public static const int MSGF_MOVE = 3;


	public static const int MSGF_MESSAGEBOX = 1;


	public static const int MSGF_NEXTWINDOW = 6;


	public static const int MSGF_SCROLLBAR = 5;


	public static const int MSGF_SIZE = 4;


	public static const int MSGF_USER = 4096;


	public static const int MWMO_INPUTAVAILABLE = 4;


	public static const int NI_COMPOSITIONSTR = 21;


	public static const int NIF_ICON = 2;


	public static const int NIF_INFO = 16;


	public static const int NIF_MESSAGE = 1;


	public static const int NIF_STATE = 8;


	public static const int NIF_TIP = 4;


	public static const int NIIF_ERROR = 3;


	public static const int NIIF_INFO = 1;


	public static const int NIIF_NONE = 0;


	public static const int NIIF_WARNING = 2;


	public static const int NIM_ADD = 0;


	public static const int NIM_DELETE = 2;


	public static const int NIM_MODIFY = 1;


	public static const int NIN_SELECT = 1024 + 0;


	public static const int NINF_KEY = 1;


	public static const int NIN_KEYSELECT = NIN_SELECT | NINF_KEY;


	public static const int NIN_BALLOONSHOW = 1024 + 2;


	public static const int NIN_BALLOONHIDE = 1024 + 3;


	public static const int NIN_BALLOONTIMEOUT = 1024 + 4;


	public static const int NIN_BALLOONUSERCLICK = 1024 + 5;


	public static const int NIS_HIDDEN = 1;


	public static const int NM_FIRST = 0;


	public static const int NM_CLICK = 4294967294u;


	public static const int NM_CUSTOMDRAW = NM_FIRST - 12;


	public static const int NM_DBLCLK = 4294967293u;


	public static const int NM_RECOGNIZEGESTURE = NM_FIRST - 16;


	public static const int NM_RELEASEDCAPTURE = NM_FIRST - 16;


	public static const int NM_RETURN = 4294967292u;


	public static int NOTIFYICONDATAA_V2_SIZE;


	public static int NOTIFYICONDATAW_V2_SIZE;


	public static int NOTIFYICONDATA_V2_SIZE;


	public static const int NOTSRCCOPY = 3342344;


	public static const int NULLREGION = 1;


	public static const int NULL_BRUSH = 5;


	public static const int NULL_PEN = 8;


	public static const int NUMRESERVED = 106;


	public static const int OBJID_CARET = 4294967288u;


	public static const int OBJID_CLIENT = 4294967292u;


	public static const int OBJID_MENU = 4294967293u;


	public static const int OBJID_WINDOW = 0;


	public static const int OBJ_BITMAP = 7;


	public static const int OBJ_FONT = 6;


	public static const int OBJ_PEN = 1;


	public static const int OBJID_HSCROLL = 4294967290u;


	public static const int OBJID_VSCROLL = 4294967291u;


	public static const TCHAR* OBM_CHECKBOXES = cast(TCHAR*)32759;


	public static const int ODS_SELECTED = 1;


	public static const int ODT_MENU = 1;


	public static const int OFN_ALLOWMULTISELECT = 512;


	public static const int OFN_EXPLORER = 524288;


	public static const int OFN_ENABLEHOOK = 32;


	public static const int OFN_HIDEREADONLY = 4;


	public static const int OFN_NOCHANGEDIR = 8;


	public static const int OFN_OVERWRITEPROMPT = 2;


	public static const int OIC_BANG = 32515;


	public static const int OIC_HAND = 32513;


	public static const int OIC_INFORMATION = 32516;


	public static const int OIC_QUES = 32514;


	public static const int OIC_WINLOGO = 32517;


	public static const int OPAQUE = 2;


	public static const int PATCOPY = 15728673;


	public static const int PATINVERT = 5898313;


	public static const int PBM_GETPOS = 1032;


	public static const int PBM_GETRANGE = 1031;


	public static const int PBM_GETSTATE = 1024 + 17;


	public static const int PBM_SETBARCOLOR = 1033;


	public static const int PBM_SETBKCOLOR = 8193;


	public static const int PBM_SETMARQUEE = 1024 + 10;


	public static const int PBM_SETPOS = 1026;


	public static const int PBM_SETRANGE32 = 1030;


	public static const int PBM_SETSTATE = 1024 + 16;


	public static const int PBM_STEPIT = 1029;


	public static const int PBS_MARQUEE = 8;


	public static const int PBS_SMOOTH = 1;


	public static const int PBS_VERTICAL = 4;


	public static const int PBS_NORMAL = 1;


	public static const int PBS_HOT = 2;


	public static const int PBS_PRESSED = 3;


	public static const int PBS_DISABLED = 4;


	public static const int PBS_DEFAULTED = 5;


	public static const int PBST_NORMAL = 1;


	public static const int PBST_ERROR = 2;


	public static const int PBST_PAUSED = 3;


	public static const int PD_ALLPAGES = 0;


	public static const int PD_COLLATE = 16;


	public static const int PD_PAGENUMS = 2;


	public static const int PD_PRINTTOFILE = 32;


	public static const int PD_RETURNDC = 256;


	public static const int PD_SELECTION = 1;


	public static const int PD_USEDEVMODECOPIESANDCOLLATE = 262144;


	public static const int PT_CLOSEFIGURE = 1;


	public static const int PT_LINETO = 2;


	public static const int PT_BEZIERTO = 4;


	public static const int PT_MOVETO = 6;


	public static const int PFM_TABSTOPS = 16;


	public static const int PHYSICALHEIGHT = 111;


	public static const int PHYSICALOFFSETX = 112;


	public static const int PHYSICALOFFSETY = 113;


	public static const int PHYSICALWIDTH = 110;


	public static const int PLANES = 14;


	public static const int PM_NOREMOVE = 0;


	public static const int PM_NOYIELD = 2;


	public static const int QS_HOTKEY = 128;


	public static const int QS_KEY = 1;


	public static const int QS_MOUSEMOVE = 2;


	public static const int QS_MOUSEBUTTON = 4;


	public static const int QS_MOUSE = QS_MOUSEMOVE | QS_MOUSEBUTTON;


	public static const int QS_INPUT = QS_KEY | QS_MOUSE;


	public static const int QS_POSTMESSAGE = 8;


	public static const int QS_TIMER = 16;


	public static const int QS_PAINT = 32;


	public static const int QS_SENDMESSAGE = 64;


	public static const int QS_ALLINPUT = QS_MOUSEMOVE | QS_MOUSEBUTTON | QS_KEY | QS_POSTMESSAGE | QS_TIMER | QS_PAINT | QS_SENDMESSAGE;


	public static const int PM_QS_INPUT = QS_INPUT << 16;


	public static const int PM_QS_POSTMESSAGE = (QS_POSTMESSAGE | QS_HOTKEY | QS_TIMER) << 16;


	public static const int PM_QS_PAINT = QS_PAINT << 16;


	public static const int PM_QS_SENDMESSAGE = QS_SENDMESSAGE << 16;


	public static const int PM_REMOVE = 1;


	public static const TCHAR[] PROGRESS_CLASS = "msctls_progress32";


	public static const int PP_BAR = 1;


	public static const int PP_BARVERT = 2;


	public static const int PP_CHUNK = 3;


	public static const int PP_CHUNKVERT = 4;


	public static const int PRF_CHILDREN = 16;


	public static const int PRF_CLIENT = 4;


	public static const int PRF_ERASEBKGND = 8;


	public static const int PRF_NONCLIENT = 2;


	public static const int PROGRESSCHUNKSIZE = 2411;


	public static const int PROGRESSSPACESIZE = 2412;


	public static const int PS_DASH = 1;


	public static const int PS_DASHDOT = 3;


	public static const int PS_DASHDOTDOT = 4;


	public static const int PS_DOT = 2;


	public static const int PS_ENDCAP_FLAT = 512;


	public static const int PS_ENDCAP_SQUARE = 256;


	public static const int PS_ENDCAP_ROUND = 0;


	public static const int PS_ENDCAP_MASK = 3840;


	public static const int PS_GEOMETRIC = 65536;


	public static const int PS_JOIN_BEVEL = 4096;


	public static const int PS_JOIN_MASK = 61440;


	public static const int PS_JOIN_MITER = 8192;


	public static const int PS_JOIN_ROUND = 0;


	public static const int PS_SOLID = 0;


	public static const int PS_STYLE_MASK = 15;


	public static const int PS_TYPE_MASK = 983040;


	public static const int PS_USERSTYLE = 7;


	public static const int R2_COPYPEN = 13;


	public static const int R2_XORPEN = 7;


	public static const int RASTERCAPS = 38;


	public static const int RASTER_FONTTYPE = 1;


	public static const int RBBIM_CHILD = 16;


	public static const int RBBIM_CHILDSIZE = 32;


	public static const int RBBIM_COLORS = 2;


	public static const int RBBIM_HEADERSIZE = 2048;


	public static const int RBBIM_ID = 256;


	public static const int RBBIM_IDEALSIZE = 512;


	public static const int RBBIM_SIZE = 64;


	public static const int RBBIM_STYLE = 1;


	public static const int RBBIM_TEXT = 4;


	public static const int RBBS_BREAK = 1;


	public static const int RBBS_GRIPPERALWAYS = 128;


	public static const int RBBS_NOGRIPPER = 256;


	public static const int RBBS_USECHEVRON = 512;


	public static const int RBBS_VARIABLEHEIGHT = 64;


	public static const int RBN_FIRST = 4294966465u;


	public static const int RBN_BEGINDRAG = RBN_FIRST - 4;


	public static const int RBN_CHILDSIZE = RBN_FIRST - 8;


	public static const int RBN_CHEVRONPUSHED = RBN_FIRST - 10;


	public static const int RBN_HEIGHTCHANGE = 4294966465u;


	public static const int RBS_DBLCLKTOGGLE = 32768;


	public static const int RBS_BANDBORDERS = 1024;


	public static const int RBS_VARHEIGHT = 512;


	public static const int RB_DELETEBAND = 1026;


	public static const int RB_GETBANDBORDERS = 1058;


	public static const int RB_GETBANDCOUNT = 1036;


	public static const int RB_GETBANDINFO = IsUnicode ? 1052 : 1053;


	public static const int RB_GETBANDMARGINS = 1064;


	public static const int RB_GETBARHEIGHT = 1051;


	public static const int RB_GETBKCOLOR = 1044;


	public static const int RB_GETRECT = 1033;


	public static const int RB_GETTEXTCOLOR = 1046;


	public static const int RB_IDTOINDEX = 1040;


	public static const int RB_INSERTBAND = IsUnicode ? 1034 : 1025;


	public static const int RB_MOVEBAND = 1063;


	public static const int RB_SETBANDINFO = IsUnicode ? 1035 : 1030;


	public static const int RB_SETBKCOLOR = 1043;


	public static const int RB_SETTEXTCOLOR = 1045;


	public static const int RC_BITBLT = 1;


	public static const int RC_PALETTE = 256;


	public static const int RDW_ALLCHILDREN = 128;


	public static const int RDW_ERASE = 4;


	public static const int RDW_FRAME = 1024;


	public static const int RDW_INVALIDATE = 1;


	public static const int RDW_UPDATENOW = 256;


	public static const int READ_CONTROL = 131072;


	public static const TCHAR[] REBARCLASSNAME = "ReBarWindow32";


	public static const int RGN_AND = 1;


	public static const int RGN_COPY = 5;


	public static const int RGN_DIFF = 4;


	public static const int RGN_ERROR = 0;


	public static const int RGN_OR = 2;


	public static const int RP_BAND = 3;


	public static const int SBP_ARROWBTN = 1;


	public static const int SBP_THUMBBTNHORZ = 2;


	public static const int SBP_THUMBBTNVERT = 3;


	public static const int SBP_LOWERTRACKHORZ = 4;


	public static const int SBP_UPPERTRACKHORZ = 5;


	public static const int SBP_LOWERTRACKVERT = 6;


	public static const int SBP_UPPERTRACKVERT = 7;


	public static const int SBP_GRIPPERHORZ = 8;


	public static const int SBP_GRIPPERVERT = 9;


	public static const int SBP_SIZEBOX = 10;


	public static const int SBS_HORZ = 0;


	public static const int SBS_VERT = 1;


	public static const int SB_BOTH = 3;


	public static const int SB_BOTTOM = 7;


	public static const int SB_CTL = 2;


	public static const int SB_ENDSCROLL = 8;


	public static const int SB_HORZ = 0;


	public static const int SB_LINEDOWN = 1;


	public static const int SB_LINEUP = 0;


	public static const int SB_PAGEDOWN = 3;


	public static const int SB_PAGEUP = 2;


	public static const int SB_THUMBPOSITION = 4;


	public static const int SB_THUMBTRACK = 5;


	public static const int SB_TOP = 6;


	public static const int SB_VERT = 1;


	public static const int SCF_ALL = 4;


	public static const int SCF_DEFAULT = 0;


	public static const int SCF_SELECTION = 1;


	public static const int SC_CLOSE = 61536;


	public static const int SC_HSCROLL = 61568;


	public static const int SC_KEYMENU = 61696;


	public static const int SC_MAXIMIZE = 61488;


	public static const int SC_MINIMIZE = 61472;


	public static const int SC_NEXTWINDOW = 61504;


	public static const int SC_RESTORE = 61728;


	public static const int SC_SIZE = 61440;


	public static const int SC_TASKLIST = 61744;


	public static const int SC_VSCROLL = 61552;


	public static const int SCRBS_NORMAL = 1;


	public static const int SCRBS_HOT = 2;


	public static const int SCRBS_PRESSED = 3;


	public static const int SCRBS_DISABLED = 4;


	public static const int SEM_FAILCRITICALERRORS = 1;


	public static const int SET_FEATURE_ON_PROCESS = 2;


	public static const int SF_RTF = 2;


	public static const int SHCMBF_HIDDEN = 2;


	public static const int SHCMBM_OVERRIDEKEY = 1024 + 403;


	public static const int SHCMBM_SETSUBMENU = 1424;


	public static const int SHCMBM_GETSUBMENU = 1425;


	public static const int SHGFI_ICON = 256;


	public static const int SHGFI_SMALLICON = 1;


	public static const int SHGFI_USEFILEATTRIBUTES = 16;


	public static const int SHMBOF_NODEFAULT = 1;


	public static const int SHMBOF_NOTIFY = 2;


	public static const int SHRG_RETURNCMD = 1;


	public static const int SIF_ALL = 23;


	public static const int SIF_DISABLENOSCROLL = 8;


	public static const int SIF_PAGE = 2;


	public static const int SIF_POS = 4;


	public static const int SIF_RANGE = 1;


	public static const int SIF_TRACKPOS = 16;


	public static const int SIP_DOWN = 1;


	public static const int SIP_UP = 0;


	public static const int SIPF_ON = 1;


	public static const int SIZE_RESTORED = 0;


	public static const int SIZE_MINIMIZED = 1;


	public static const int SIZE_MAXIMIZED = 2;


	public static const int SIZEPALETTE = 104;


	public static const int SM_CMONITORS = 80;


	public static const int SM_CXBORDER = 5;


	public static const int SM_CXCURSOR = 13;


	public static const int SM_CXDOUBLECLK = 36;


	public static const int SM_CYDOUBLECLK = 37;


	public static const int SM_CXEDGE = 45;


	public static const int SM_CXFOCUSBORDER = 83;


	public static const int SM_CXHSCROLL = 21;


	public static const int SM_CXICON = 11;


	public static const int SM_CYICON = 12;


	public static const int SM_CXVIRTUALSCREEN = 78;


	public static const int SM_CYVIRTUALSCREEN = 79;


	public static const int SM_CXSMICON = 49;


	public static const int SM_CYSMICON = 50;


	public static const int SM_CXSCREEN = 0;


	public static const int SM_XVIRTUALSCREEN = 76;


	public static const int SM_YVIRTUALSCREEN = 77;


	public static const int SM_CXVSCROLL = 2;


	public static const int SM_CYBORDER = 6;


	public static const int SM_CYCURSOR = 14;


	public static const int SM_CYFOCUSBORDER = 84;


	public static const int SM_CYHSCROLL = 3;


	public static const int SM_CYMENU = 15;


	public static const int SM_CXMINTRACK = 34;


	public static const int SM_CYMINTRACK = 35;


	public static const int SM_CMOUSEBUTTONS = 43;


	public static const int SM_CYSCREEN = 1;


	public static const int SM_CYVSCROLL = 20;


	public static const int SPI_GETFONTSMOOTHINGTYPE = 8202;


	public static const int SPI_GETHIGHCONTRAST = 66;


	public static const int SPI_GETWORKAREA = 48;


	public static const int SPI_GETMOUSEVANISH = 4128;


	public static const int SPI_GETNONCLIENTMETRICS = 41;


	public static const int SPI_GETWHEELSCROLLLINES = 104;


	public static const int SPI_GETCARETWIDTH = 8198;


	public static const int SPI_SETSIPINFO = 224;


	public static const int SPI_SETHIGHCONTRAST = 67;


	public static const int SRCAND = 8913094;


	public static const int SRCCOPY = 13369376;


	public static const int SRCINVERT = 6684742;


	public static const int SRCPAINT = 15597702;


	public static const int SS_BITMAP = 14;


	public static const int SS_CENTER = 1;


	public static const int SS_CENTERIMAGE = 512;


	public static const int SS_EDITCONTROL = 8192;


	public static const int SS_ICON = 3;


	public static const int SS_LEFT = 0;


	public static const int SS_LEFTNOWORDWRAP = 12;


	public static const int SS_NOTIFY = 256;


	public static const int SS_OWNERDRAW = 13;


	public static const int SS_REALSIZEIMAGE = 2048;


	public static const int SS_RIGHT = 2;


	public static const int SSA_FALLBACK = 32;


	public static const int SSA_GLYPHS = 128;


	public static const int SSA_METAFILE = 2048;


	public static const int SSA_LINK = 4096;


	public static const int STANDARD_RIGHTS_READ = 131072;


	public static const int STARTF_USESHOWWINDOW = 1;


	public static const int STATE_SYSTEM_INVISIBLE = 32768;


	public static const int STATE_SYSTEM_OFFSCREEN = 65536;


	public static const int STATE_SYSTEM_UNAVAILABLE = 1;


	public static const int STD_COPY = 1;


	public static const int STD_CUT = 0;


	public static const int STD_FILENEW = 6;


	public static const int STD_FILEOPEN = 7;


	public static const int STD_FILESAVE = 8;


	public static const int STD_PASTE = 2;


	public static const int STM_GETIMAGE = 371;


	public static const int STM_SETIMAGE = 370;


	public static const int SWP_ASYNCWINDOWPOS = 16384;


	public static const int SWP_DRAWFRAME = 32;


	public static const int SWP_NOACTIVATE = 16;


	public static const int SWP_NOCOPYBITS = 256;


	public static const int SWP_NOMOVE = 2;


	public static const int SWP_NOREDRAW = 8;


	public static const int SWP_NOSIZE = 1;


	public static const int SWP_NOZORDER = 4;


	public static const int SW_ERASE = 4;


	public static const int SW_HIDE = 0;


	public static const int SW_INVALIDATE = 2;


	public static const int SW_MINIMIZE = 6;


	public static const int SW_PARENTOPENING = 3;


	public static const int SW_RESTORE = IsWinCE ? 13 : 9;


	public static const int SW_SCROLLCHILDREN = 1;


	public static const int SW_SHOW = 5;


	public static const int SW_SHOWMAXIMIZED = IsWinCE ? 11 : 3;


	public static const int SW_SHOWMINIMIZED = 2;


	public static const int SW_SHOWMINNOACTIVE = 7;


	public static const int SW_SHOWNA = 8;


	public static const int SW_SHOWNOACTIVATE = 4;


	public static const int SYNCHRONIZE = 1048576;


	public static const int SYSRGN = 4;


	public static const int SYSTEM_FONT = 13;


	public static const int S_OK = 0;


	public static const int TABP_TABITEM = 1;


	public static const int TABP_TABITEMLEFTEDGE = 2;


	public static const int TABP_TABITEMRIGHTEDGE = 3;


	public static const int TABP_TABITEMBOTHEDGE = 4;


	public static const int TABP_TOPTABITEM = 5;


	public static const int TABP_TOPTABITEMLEFTEDGE = 6;


	public static const int TABP_TOPTABITEMRIGHTEDGE = 7;


	public static const int TABP_TOPTABITEMBOTHEDGE = 8;


	public static const int TABP_PANE = 9;


	public static const int TABP_BODY = 10;


	public static const int TBIF_COMMAND = 32;


	public static const int TBIF_STATE = 4;


	public static const int TBIF_IMAGE = 1;


	public static const int TBIF_LPARAM = 16;


	public static const int TBIF_SIZE = 64;


	public static const int TBIF_STYLE = 8;


	public static const int TBIF_TEXT = 2;


	public static const int TB_GETEXTENDEDSTYLE = 1024 + 85;


	public static const int TBM_GETLINESIZE = 1048;


	public static const int TBM_GETPAGESIZE = 1046;


	public static const int TBM_GETPOS = 1024;


	public static const int TBM_GETRANGEMAX = 1026;


	public static const int TBM_GETRANGEMIN = 1025;


	public static const int TBM_GETTHUMBRECT = 1049;


	public static const int TBM_SETLINESIZE = 1047;


	public static const int TBM_SETPAGESIZE = 1045;


	public static const int TBM_SETPOS = 1029;


	public static const int TBM_SETRANGEMAX = 1032;


	public static const int TBM_SETRANGEMIN = 1031;


	public static const int TBM_SETTICFREQ = 1044;


	public static const int TBN_DROPDOWN = 4294966586u;


	public static const int TBN_FIRST = 4294966596u;


	public static const int TBN_HOTITEMCHANGE = 4294966583u;


	public static const int TBSTATE_CHECKED = 1;


	public static const int TBSTATE_PRESSED = 2;


	public static const int TBSTYLE_CUSTOMERASE = 8192;


	public static const int TBSTYLE_DROPDOWN = 8;


	public static const int TBSTATE_ENABLED = 4;


	public static const int TBSTYLE_AUTOSIZE = 16;


	public static const int TBSTYLE_EX_DOUBLEBUFFER = 128;


	public static const int TBSTYLE_EX_DRAWDDARROWS = 1;


	public static const int TBSTYLE_EX_HIDECLIPPEDBUTTONS = 16;


	public static const int TBSTYLE_EX_MIXEDBUTTONS = 8;


	public static const int TBSTYLE_FLAT = 2048;


	public static const int TBSTYLE_LIST = 4096;


	public static const int TBSTYLE_TOOLTIPS = 256;


	public static const int TBSTYLE_TRANSPARENT = 32768;


	public static const int TBSTYLE_WRAPABLE = 512;


	public static const int TBS_AUTOTICKS = 1;


	public static const int TBS_BOTH = 8;


	public static const int TBS_DOWNISLEFT = 1024;


	public static const int TBS_HORZ = 0;


	public static const int TBS_VERT = 2;


	public static const int TB_ADDSTRING = IsUnicode ? 1101 : 1052;


	public static const int TB_AUTOSIZE = 1057;


	public static const int TB_BUTTONCOUNT = 1048;


	public static const int TB_BUTTONSTRUCTSIZE = 1054;


	public static const int TB_COMMANDTOINDEX = 1049;


	public static const int TB_DELETEBUTTON = 1046;


	public static const int TB_ENDTRACK = 8;


	public static const int TB_GETBUTTON = 1047;


	public static const int TB_GETBUTTONINFO = IsUnicode ? 1087 : 1089;


	public static const int TB_GETBUTTONSIZE = 1082;


	public static const int TB_GETBUTTONTEXT = IsUnicode ? 1099 : 1069;


	public static const int TB_GETDISABLEDIMAGELIST = 1079;


	public static const int TB_GETHOTIMAGELIST = 1077;


	public static const int TB_GETHOTITEM = 1024 + 71;


	public static const int TB_GETIMAGELIST = 1073;


	public static const int TB_GETITEMRECT = 1053;


	public static const int TB_GETPADDING = 1024 + 86;


	public static const int TB_GETROWS = 1064;


	public static const int TB_GETSTATE = 1042;


	public static const int TB_GETTOOLTIPS = 1059;


	public static const int TB_INSERTBUTTON = IsUnicode ? 1091 : 1045;


	public static const int TB_LOADIMAGES = 1074;


	public static const int TB_MAPACCELERATOR = 1024 + (IsUnicode ? 90 : 78);


	public static const int TB_SETBITMAPSIZE = 1056;


	public static const int TB_SETBUTTONINFO = IsUnicode ? 1088 : 1090;


	public static const int TB_SETBUTTONSIZE = 1055;


	public static const int TB_SETDISABLEDIMAGELIST = 1078;


	public static const int TB_SETEXTENDEDSTYLE = 1108;


	public static const int TB_SETHOTIMAGELIST = 1076;


	public static const int TB_SETHOTITEM = 1024 + 72;


	public static const int TB_SETIMAGELIST = 1072;


	public static const int TB_SETPARENT = 1024 + 37;


	public static const int TB_SETROWS = 1063;


	public static const int TB_SETSTATE = 1041;


	public static const int TB_THUMBPOSITION = 4;


	public static const int TCIF_IMAGE = 2;


	public static const int TCIF_TEXT = 1;


	public static const int TCI_SRCCHARSET = 1;


	public static const int TCI_SRCCODEPAGE = 2;


	public static const int TCM_ADJUSTRECT = 4904;


	public static const int TCM_DELETEITEM = 4872;


	public static const int TCM_GETCURSEL = 4875;


	public static const int TCM_GETITEMCOUNT = 4868;


	public static const int TCM_GETITEMRECT = 4874;


	public static const int TCM_GETTOOLTIPS = 4909;


	public static const int TCM_HITTEST = 4877;


	public static const int TCM_INSERTITEM = IsUnicode ? 4926 : 4871;


	public static const int TCM_SETCURSEL = 4876;


	public static const int TCM_SETIMAGELIST = 4867;


	public static const int TCM_SETITEM = IsUnicode ? 4925 : 4870;


	public static const int TCN_SELCHANGE = 4294966745u;


	public static const int TCN_SELCHANGING = 4294966744u;


	public static const int TCS_BOTTOM = 2;


	public static const int TCS_FOCUSNEVER = 32768;


	public static const int TCS_MULTILINE = 512;


	public static const int TCS_TABS = 0;


	public static const int TCS_TOOLTIPS = 16384;


	public static const int TECHNOLOGY = 2;


	public static const int TF_ATTR_INPUT = 0;


	public static const int TF_ATTR_TARGET_CONVERTED = 1;


	public static const int TF_ATTR_CONVERTED = 2;


	public static const int TF_ATTR_TARGET_NOTCONVERTED = 3;


	public static const int TF_ATTR_INPUT_ERROR = 4;


	public static const int TF_ATTR_FIXEDCONVERTED = 5;


	public static const int TF_ATTR_OTHER = -1;


	public alias TF_DA_COLORTYPE.TF_CT_NONE TF_CT_NONE;

	public alias TF_DA_COLORTYPE.TF_CT_SYSCOLOR TF_CT_SYSCOLOR;

	public alias TF_DA_COLORTYPE.TF_CT_COLORREF TF_CT_COLORREF;

	public alias TF_DA_LINESTYLE.TF_LS_NONE TF_LS_NONE;

	public alias TF_DA_LINESTYLE.TF_LS_SOLID TF_LS_SOLID;

	public alias TF_DA_LINESTYLE.TF_LS_DOT TF_LS_DOT;

	public alias TF_DA_LINESTYLE.TF_LS_DASH TF_LS_DASH;

	public alias TF_DA_LINESTYLE.TF_LS_SQUIGGLE TF_LS_SQUIGGLE;

	public static const int TIME_NOSECONDS = 2;


	public static const int TIS_NORMAL = 1;


	public static const int TIS_HOT = 2;


	public static const int TIS_SELECTED = 3;


	public static const int TIS_DISABLED = 4;


	public static const int TIS_FOCUSED = 5;


	public static const int TKP_TRACK = 1;


	public static const int TKP_TRACKVERT = 2;


	public static const int TKP_THUMB = 3;


	public static const int TKP_THUMBBOTTOM = 4;


	public static const int TKP_THUMBTOP = 5;


	public static const int TKP_THUMBVERT = 6;


	public static const int TKP_THUMBLEFT = 7;


	public static const int TKP_THUMBRIGHT = 8;


	public static const int TKP_TICS = 9;


	public static const int TKP_TICSVERT = 10;


	public static const int TME_HOVER = 1;


	public static const int TME_LEAVE = 2;


	public static const int TME_QUERY = 1073741824;


	public static const int TMPF_VECTOR = 2;


	public static const int TMT_CONTENTMARGINS = 3602;


	public static const TCHAR[] TOOLBARCLASSNAME = "ToolbarWindow32";


	public static const TCHAR[] TOOLTIPS_CLASS = "tooltips_class32";


	public static const int TP_BUTTON = 1;


	public static const int TP_DROPDOWNBUTTON = 2;


	public static const int TP_SPLITBUTTON = 3;


	public static const int TP_SPLITBUTTONDROPDOWN = 4;


	public static const int TP_SEPARATOR = 5;


	public static const int TP_SEPARATORVERT = 6;


	public static const int TPM_LEFTALIGN = 0;


	public static const int TPM_LEFTBUTTON = 0;


	public static const int TPM_RIGHTBUTTON = 2;


	public static const int TPM_RIGHTALIGN = 8;


	public static const TCHAR[] TRACKBAR_CLASS = "msctls_trackbar32";


	public static const int TRANSPARENT = 1;


	public static const int TREIS_DISABLED = 4;


	public static const int TREIS_HOT = 2;


	public static const int TREIS_NORMAL = 1;


	public static const int TREIS_SELECTED = 3;


	public static const int TREIS_SELECTEDNOTFOCUS = 5;


	public static const int TS_MIN = 0;


	public static const int TS_TRUE = 1;


	public static const int TS_DRAW = 2;


	public static const int TS_NORMAL = 1;


	public static const int TS_HOT = 2;


	public static const int TS_PRESSED = 3;


	public static const int TS_DISABLED = 4;


	public static const int TS_CHECKED = 5;


	public static const int TS_HOTCHECKED = 6;


	public static const int TTDT_AUTOMATIC = 0;


	public static const int TTDT_RESHOW = 1;


	public static const int TTDT_AUTOPOP = 2;


	public static const int TTDT_INITIAL = 3;


	public static const int TTF_ABSOLUTE = 128;


	public static const int TTF_IDISHWND = 1;


	public static const int TTF_SUBCLASS = 16;


	public static const int TTF_RTLREADING = 4;


	public static const int TTF_TRACK = 32;


	public static const int TTF_TRANSPARENT = 256;


	public static const int TTI_NONE = 0;


	public static const int TTI_INFO = 1;


	public static const int TTI_WARNING = 2;


	public static const int TTI_ERROR = 3;


	public static const int TTM_ACTIVATE = 1024 + 1;


	public static const int TTM_ADDTOOL = IsUnicode ? 1074 : 1028;


	public static const int TTM_ADJUSTRECT = 1024 + 31;


	public static const int TTM_GETCURRENTTOOLA = 1024 + 15;


	public static const int TTM_GETCURRENTTOOLW = 1024 + 59;


	public static const int TTM_GETCURRENTTOOL = 1024 + (IsUnicode ? 59 : 15);


	public static const int TTM_GETDELAYTIME = 1024 + 21;


	public static const int TTM_DELTOOL = IsUnicode ? 1075 : 1029;


	public static const int TTM_GETTOOLINFO = 1024 + (IsUnicode ? 53 : 8);


	public static const int TTM_NEWTOOLRECT = 1024 + (IsUnicode ? 52 : 6);


	public static const int TTM_POP = 1024 + 28;


	public static const int TTM_SETDELAYTIME = 1024 + 3;


	public static const int TTM_SETMAXTIPWIDTH = 1048;


	public static const int TTM_SETTITLEA = 1024 + 32;


	public static const int TTM_SETTITLEW = 1024 + 33;


	public static const int TTM_SETTITLE = 1024 + (IsUnicode ? 33 : 32);


	public static const int TTM_TRACKPOSITION = 1042;


	public static const int TTM_TRACKACTIVATE = 1041;


	public static const int TTM_UPDATE = 1053;


	public static const int TTN_FIRST = 4294966776u;


	public static const int TTN_GETDISPINFO = IsUnicode ? 4294966766u : 4294966776u;


	public static const int TTN_GETDISPINFOW = 4294966766u;


	public static const int TTN_GETDISPINFOA = 4294966776u;


	public static const int TTN_POP = TTN_FIRST - 2;


	public static const int TTN_SHOW = TTN_FIRST - 1;


	public static const int TTS_ALWAYSTIP = 1;


	public static const int TTS_BALLOON = 64;


	public static const int TTS_NOANIMATE = 16;


	public static const int TTS_NOFADE = 32;


	public static const int TTS_NOPREFIX = 2;


	public static const int TV_FIRST = 4352;


	public static const int TVE_COLLAPSE = 1;


	public static const int TVE_COLLAPSERESET = 32768;


	public static const int TVE_EXPAND = 2;


	public static const int TVGN_CARET = 9;


	public static const int TVGN_CHILD = 4;


	public static const int TVGN_DROPHILITED = 8;


	public static const int TVGN_FIRSTVISIBLE = 5;


	public static const int TVGN_LASTVISIBLE = 10;


	public static const int TVGN_NEXT = 1;


	public static const int TVGN_NEXTVISIBLE = 6;


	public static const int TVGN_PARENT = 3;


	public static const int TVGN_PREVIOUS = 2;


	public static const int TVGN_PREVIOUSVISIBLE = 7;


	public static const int TVGN_ROOT = 0;


	public static const int TVHT_ONITEM = 70;


	public static const int TVHT_ONITEMBUTTON = 16;


	public static const int TVHT_ONITEMICON = 2;


	public static const int TVHT_ONITEMINDENT = 8;


	public static const int TVHT_ONITEMRIGHT = 32;


	public static const int TVHT_ONITEMLABEL = 4;


	public static const int TVHT_ONITEMSTATEICON = 64;


	public static const int TVIF_HANDLE = 16;


	public static const int TVIF_IMAGE = 2;


	public static const int TVIF_INTEGRAL = 128;


	public static const int TVIF_PARAM = 4;


	public static const int TVIF_SELECTEDIMAGE = 32;


	public static const int TVIF_STATE = 8;


	public static const int TVIF_TEXT = 1;


	public static const int TVIS_DROPHILITED = 8;


	public static const int TVIS_EXPANDED = 32;


	public static const int TVIS_SELECTED = 2;


	public static const int TVIS_STATEIMAGEMASK = 61440;


	public static const int TVI_FIRST = -65535;


	public static const int TVI_LAST = -65534;


	public static const int TVI_ROOT = -65536;


	public static const int TVI_SORT = -65533;


	public static const int TVM_CREATEDRAGIMAGE = TV_FIRST + 18;


	public static const int TVM_DELETEITEM = 4353;


	public static const int TVM_ENSUREVISIBLE = 4372;


	public static const int TVM_EXPAND = 4354;


	public static const int TVM_GETBKCOLOR = 4383;


	public static const int TVM_GETCOUNT = 4357;


	public static const int TVM_GETEXTENDEDSTYLE = TV_FIRST + 45;


	public static const int TVM_GETIMAGELIST = 4360;


	public static const int TVM_GETITEM = IsUnicode ? 4414 : 4364;


	public static const int TVM_GETITEMHEIGHT = 4380;


	public static const int TVM_GETITEMRECT = 4356;


	public static const int TVM_GETITEMSTATE = TV_FIRST + 39;


	public static const int TVM_GETNEXTITEM = 4362;


	public static const int TVM_GETTEXTCOLOR = 4384;


	public static const int TVM_GETTOOLTIPS = TV_FIRST + 25;


	public static const int TVM_GETVISIBLECOUNT = TV_FIRST + 16;


	public static const int TVM_HITTEST = 4369;


	public static const int TVM_INSERTITEM = IsUnicode ? 4402 : 4352;


	public static const int TVM_MAPACCIDTOHTREEITEM = TV_FIRST + 42;


	public static const int TVM_MAPHTREEITEMTOACCID = TV_FIRST + 43;


	public static const int TVM_SELECTITEM = 4363;


	public static const int TVM_SETBKCOLOR = 4381;


	public static const int TVM_SETEXTENDEDSTYLE = TV_FIRST + 44;


	public static const int TVM_SETIMAGELIST = 4361;


	public static const int TVM_SETINSERTMARK = 4378;


	public static const int TVM_SETITEM = IsUnicode ? 4415 : 4365;


	public static const int TVM_SETITEMHEIGHT = TV_FIRST + 27;


	public static const int TVM_SETSCROLLTIME = TV_FIRST + 33;


	public static const int TVM_SETTEXTCOLOR = 4382;


	public static const int TVM_SORTCHILDREN = TV_FIRST + 19;


	public static const int TVM_SORTCHILDRENCB = TV_FIRST + 21;


	public static const int TVN_BEGINDRAGW = 4294966840u;


	public static const int TVN_BEGINDRAGA = 4294966889u;


	public static const int TVN_BEGINRDRAGW = 4294966839u;


	public static const int TVN_BEGINRDRAGA = 4294966888u;


	public static const int TVN_FIRST = 4294966896u;


	public static const int TVN_GETDISPINFOA = TVN_FIRST - 3;


	public static const int TVN_GETDISPINFOW = TVN_FIRST - 52;


	public static const int TVN_ITEMCHANGINGW = TVN_FIRST - 17;


	public static const int TVN_ITEMCHANGINGA = TVN_FIRST - 16;


	public static const int TVN_ITEMEXPANDEDA = TVN_FIRST - 6;


	public static const int TVN_ITEMEXPANDEDW = TVN_FIRST - 55;


	public static const int TVN_ITEMEXPANDINGW = 4294966842u;


	public static const int TVN_ITEMEXPANDINGA = 4294966891u;


	public static const int TVN_SELCHANGEDW = 4294966845u;


	public static const int TVN_SELCHANGEDA = 4294966894u;


	public static const int TVN_SELCHANGINGW = 4294966846u;


	public static const int TVN_SELCHANGINGA = 4294966895u;


	public static const int TVP_GLYPH = 2;


	public static const int TVP_TREEITEM = 1;


	public static const int TVSIL_NORMAL = 0;


	public static const int TVSIL_STATE = 2;


	public static const int TVS_DISABLEDRAGDROP = 16;


	public static const int TVS_EX_AUTOHSCROLL = 32;


	public static const int TVS_EX_DOUBLEBUFFER = 4;


	public static const int TVS_EX_DIMMEDCHECKBOXES = 512;


	public static const int TVS_EX_DRAWIMAGEASYNC = 1024;


	public static const int TVS_EX_EXCLUSIONCHECKBOXES = 256;


	public static const int TVS_EX_FADEINOUTEXPANDOS = 64;


	public static const int TVS_EX_MULTISELECT = 2;


	public static const int TVS_EX_NOINDENTSTATE = 8;


	public static const int TVS_EX_PARTIALCHECKBOXES = 128;


	public static const int TVS_EX_RICHTOOLTIP = 16;


	public static const int TVS_FULLROWSELECT = 4096;


	public static const int TVS_HASBUTTONS = 1;


	public static const int TVS_HASLINES = 2;


	public static const int TVS_LINESATROOT = 4;


	public static const int TVS_NOHSCROLL = 32768;


	public static const int TVS_NONEVENHEIGHT = 16384;


	public static const int TVS_NOSCROLL = 8192;


	public static const int TVS_NOTOOLTIPS = 128;


	public static const int TVS_SHOWSELALWAYS = 32;


	public static const int TVS_TRACKSELECT = 512;


	public static const int UDM_GETACCEL = 1132;


	public static const int UDM_GETRANGE32 = 1136;


	public static const int UDM_GETPOS = 1128;


	public static const int UDM_GETPOS32 = 1138;


	public static const int UDM_SETACCEL = 1131;


	public static const int UDM_SETRANGE32 = 1135;


	public static const int UDM_SETPOS = 1127;


	public static const int UDM_SETPOS32 = 1137;


	public static const int UDN_DELTAPOS = -722;


	public static const int UDS_ALIGNLEFT = 8;


	public static const int UDS_ALIGNRIGHT = 4;


	public static const int UDS_AUTOBUDDY = 16;


	public static const int UDS_WRAP = 1;


	public static const int UIS_CLEAR = 2;


	public static const int UIS_INITIALIZE = 3;


	public static const int UIS_SET = 1;


	public static const int UISF_HIDEACCEL = 2;


	public static const int UISF_HIDEFOCUS = 1;


	public static const TCHAR[] UPDOWN_CLASS = "msctls_updown32";


	public static const int USP_E_SCRIPT_NOT_IN_FONT = 2147746304u;


	public static const int VERTRES = 10;


	public static const int VK_BACK = 8;


	public static const int VK_CANCEL = 3;


	public static const int VK_CAPITAL = 20;


	public static const int VK_CONTROL = 17;


	public static const int VK_DECIMAL = 110;


	public static const int VK_DELETE = 46;


	public static const int VK_DIVIDE = 111;


	public static const int VK_DOWN = 40;


	public static const int VK_END = 35;


	public static const int VK_ESCAPE = 27;


	public static const int VK_F1 = 112;


	public static const int VK_F10 = 121;


	public static const int VK_F11 = 122;


	public static const int VK_F12 = 123;


	public static const int VK_F13 = 124;


	public static const int VK_F14 = 125;


	public static const int VK_F15 = 126;


	public static const int VK_F2 = 113;


	public static const int VK_F3 = 114;


	public static const int VK_F4 = 115;


	public static const int VK_F5 = 116;


	public static const int VK_F6 = 117;


	public static const int VK_F7 = 118;


	public static const int VK_F8 = 119;


	public static const int VK_F9 = 120;


	public static const int VK_HOME = 36;


	public static const int VK_INSERT = 45;


	public static const int VK_LBUTTON = 1;


	public static const int VK_LEFT = 37;


	public static const int VK_MBUTTON = 4;


	public static const int VK_MENU = 18;


	public static const int VK_MULTIPLY = 106;


	public static const int VK_N = 78;


	public static const int VK_NEXT = 34;


	public static const int VK_NUMLOCK = 144;


	public static const int VK_NUMPAD0 = 96;


	public static const int VK_NUMPAD1 = 97;


	public static const int VK_NUMPAD2 = 98;


	public static const int VK_NUMPAD3 = 99;


	public static const int VK_NUMPAD4 = 100;


	public static const int VK_NUMPAD5 = 101;


	public static const int VK_NUMPAD6 = 102;


	public static const int VK_NUMPAD7 = 103;


	public static const int VK_NUMPAD8 = 104;


	public static const int VK_NUMPAD9 = 105;


	public static const int VK_PAUSE = 19;


	public static const int VK_PRIOR = 33;


	public static const int VK_RBUTTON = 2;


	public static const int VK_RETURN = 13;


	public static const int VK_RIGHT = 39;


	public static const int VK_SCROLL = 145;


	public static const int VK_SEPARATOR = 108;


	public static const int VK_SHIFT = 16;


	public static const int VK_SNAPSHOT = 44;


	public static const int VK_SPACE = 32;


	public static const int VK_SUBTRACT = 109;


	public static const int VK_TAB = 9;


	public static const int VK_UP = 38;


	public static const int VK_XBUTTON1 = 5;


	public static const int VK_XBUTTON2 = 6;


	public static const int VK_ADD = 107;


	public static const int VK_APP1 = 193;


	public static const int VK_APP2 = 194;


	public static const int VK_APP3 = 195;


	public static const int VK_APP4 = 196;


	public static const int VK_APP5 = 197;


	public static const int VK_APP6 = 198;


	public static const TCHAR[] WC_HEADER = "SysHeader32";


	public static const TCHAR[] WC_LINK = "SysLink";


	public static const TCHAR[] WC_LISTVIEW = "SysListView32";


	public static const TCHAR[] WC_TABCONTROL = "SysTabControl32";


	public static const TCHAR[] WC_TREEVIEW = "SysTreeView32";


	public static const int WINDING = 2;


	public static const int WH_CBT = 5;


	public static const int WH_GETMESSAGE = 3;


	public static const int WH_MSGFILTER = 4294967295u;


	public static const int WH_FOREGROUNDIDLE = 11;


	public static const int WHEEL_DELTA = 120;


	public static const int WHEEL_PAGESCROLL = 4294967295u;


	public static const int WHITE_BRUSH = 0;


	public static const int WM_ACTIVATE = 6;


	public static const int WM_ACTIVATEAPP = 28;


	public static const int WM_APP = 32768;


	public static const int WM_DWMCOLORIZATIONCOLORCHANGED = 800;


	public static const int WM_CANCELMODE = 31;


	public static const int WM_CAPTURECHANGED = 533;


	public static const int WM_CHANGEUISTATE = 295;


	public static const int WM_CHAR = 258;


	public static const int WM_CLEAR = 771;


	public static const int WM_CLOSE = 16;


	public static const int WM_COMMAND = 273;


	public static const int WM_CONTEXTMENU = 123;


	public static const int WM_COPY = 769;


	public static const int WM_CREATE = 1;


	public static const int WM_CTLCOLORBTN = 309;


	public static const int WM_CTLCOLORDLG = 310;


	public static const int WM_CTLCOLOREDIT = 307;


	public static const int WM_CTLCOLORLISTBOX = 308;


	public static const int WM_CTLCOLORMSGBOX = 306;


	public static const int WM_CTLCOLORSCROLLBAR = 311;


	public static const int WM_CTLCOLORSTATIC = 312;


	public static const int WM_CUT = 768;


	public static const int WM_DEADCHAR = 259;


	public static const int WM_DESTROY = 2;


	public static const int WM_DRAWITEM = 43;


	public static const int WM_ENDSESSION = 22;


	public static const int WM_ENTERIDLE = 289;


	public static const int WM_ERASEBKGND = 20;


	public static const int WM_GETDLGCODE = 135;


	public static const int WM_GETFONT = 49;


	public static const int WM_GETOBJECT = 61;


	public static const int WM_GETMINMAXINFO = 36;


	public static const int WM_HELP = 83;


	public static const int WM_HOTKEY = 786;


	public static const int WM_HSCROLL = 276;


	public static const int WM_IME_CHAR = 646;


	public static const int WM_IME_COMPOSITION = 271;


	public static const int WM_IME_COMPOSITION_START = 269;


	public static const int WM_IME_ENDCOMPOSITION = 270;


	public static const int WM_INITDIALOG = 272;


	public static const int WM_INITMENUPOPUP = 279;


	public static const int WM_INPUTLANGCHANGE = 81;


	public static const int WM_KEYDOWN = 256;


	public static const int WM_KEYFIRST = 256;


	public static const int WM_KEYLAST = 264;


	public static const int WM_KEYUP = 257;


	public static const int WM_KILLFOCUS = 8;


	public static const int WM_LBUTTONDBLCLK = 515;


	public static const int WM_LBUTTONDOWN = 513;


	public static const int WM_LBUTTONUP = 514;


	public static const int WM_MBUTTONDBLCLK = 521;


	public static const int WM_MBUTTONDOWN = 519;


	public static const int WM_MBUTTONUP = 520;


	public static const int WM_MEASUREITEM = 44;


	public static const int WM_MENUCHAR = 288;


	public static const int WM_MENUSELECT = 287;


	public static const int WM_MOUSEACTIVATE = 33;


	public static const int WM_MOUSEFIRST = 512;


	public static const int WM_MOUSEHOVER = 673;


	public static const int WM_MOUSELEAVE = 675;


	public static const int WM_MOUSEMOVE = 512;


	public static const int WM_MOUSEWHEEL = 522;


	public static const int WM_MOUSELAST = 525;


	public static const int WM_MOVE = 3;


	public static const int WM_NCACTIVATE = 134;


	public static const int WM_NCCALCSIZE = 131;


	public static const int WM_NCHITTEST = 132;


	public static const int WM_NCLBUTTONDOWN = 161;


	public static const int WM_NCPAINT = 133;


	public static const int WM_NOTIFY = 78;


	public static const int WM_NULL = 0;


	public static const int WM_PAINT = 15;


	public static const int WM_PALETTECHANGED = 785;


	public static const int WM_PARENTNOTIFY = 528;


	public static const int WM_PASTE = 770;


	public static const int WM_PRINT = 791;


	public static const int WM_PRINTCLIENT = 792;


	public static const int WM_QUERYENDSESSION = 17;


	public static const int WM_QUERYNEWPALETTE = 783;


	public static const int WM_QUERYOPEN = 19;


	public static const int WM_QUERYUISTATE = 297;


	public static const int WM_RBUTTONDBLCLK = 518;


	public static const int WM_RBUTTONDOWN = 516;


	public static const int WM_RBUTTONUP = 517;


	public static const int WM_SETCURSOR = 32;


	public static const int WM_SETFOCUS = 7;


	public static const int WM_SETFONT = 48;


	public static const int WM_SETICON = 128;


	public static const int WM_SETREDRAW = 11;


	public static const int WM_SETTEXT = 12;


	public static const int WM_SETTINGCHANGE = 26;


	public static const int WM_SHOWWINDOW = 24;


	public static const int WM_SIZE = 5;


	public static const int WM_SYSCHAR = 262;


	public static const int WM_SYSCOLORCHANGE = 21;


	public static const int WM_SYSCOMMAND = 274;


	public static const int WM_SYSKEYDOWN = 260;


	public static const int WM_SYSKEYUP = 261;


	public static const int WM_TIMER = 275;


	public static const int WM_THEMECHANGED = 794;


	public static const int WM_UNDO = 772;


	public static const int WM_UPDATEUISTATE = 296;


	public static const int WM_USER = 1024;


	public static const int WM_VSCROLL = 277;


	public static const int WM_WINDOWPOSCHANGED = 71;


	public static const int WM_WINDOWPOSCHANGING = 70;


	public static const int WS_BORDER = 8388608;


	public static const int WS_CAPTION = 12582912;


	public static const int WS_CHILD = 1073741824;


	public static const int WS_MINIMIZE = 536870912;


	public static const int WS_CLIPCHILDREN = 33554432;


	public static const int WS_CLIPSIBLINGS = 67108864;


	public static const int WS_DISABLED = 67108864;


	public static const int WS_EX_APPWINDOW = 262144;


	public static const int WS_EX_CAPTIONOKBTN = 2147483648u;


	public static const int WS_EX_CLIENTEDGE = 512;


	public static const int WS_EX_COMPOSITED = 33554432;


	public static const int WS_EX_DLGMODALFRAME = 1;


	public static const int WS_EX_LAYERED = 524288;


	public static const int WS_EX_LAYOUTRTL = 4194304;


	public static const int WS_EX_LEFTSCROLLBAR = 16384;


	public static const int WS_EX_MDICHILD = 64;


	public static const int WS_EX_NOINHERITLAYOUT = 1048576;


	public static const int WS_EX_NOACTIVATE = 134217728;


	public static const int WS_EX_RIGHT = 4096;


	public static const int WS_EX_RTLREADING = 8192;


	public static const int WS_EX_STATICEDGE = 131072;


	public static const int WS_EX_TOOLWINDOW = 128;


	public static const int WS_EX_TOPMOST = 8;


	public static const int WS_EX_TRANSPARENT = 32;


	public static const int WS_HSCROLL = 1048576;


	public static const int WS_MAXIMIZEBOX = IsWinCE ? 131072 : 65536;


	public static const int WS_MINIMIZEBOX = IsWinCE ? 65536 : 131072;


	public static const int WS_OVERLAPPED = IsWinCE ? WS_BORDER | WS_CAPTION : 0;


	public static const int WS_OVERLAPPEDWINDOW = 13565952;


	public static const int WS_POPUP = 2147483648u;


	public static const int WS_SYSMENU = 524288;


	public static const int WS_TABSTOP = 65536;


	public static const int WS_THICKFRAME = 262144;


	public static const int WS_VISIBLE = 268435456;


	public static const int WS_VSCROLL = 2097152;


	public static const int WM_XBUTTONDOWN = 523;


	public static const int WM_XBUTTONUP = 524;


	public static const int WM_XBUTTONDBLCLK = 525;


	public static const int XBUTTON1 = 1;


	public static const int XBUTTON2 = 2;


	version (ANSI)
	{
		alias DWTWINAPI.AddFontResourceExA AddFontResourceEx;
		alias DWTWINAPI.AssocQueryStringA AssocQueryString;
		alias DWTWINAPI.CallWindowProcA CallWindowProc;
		alias DWTWINAPI.CharLowerA CharLower;
		alias DWTWINAPI.CharUpperA CharUpper;
		alias DWTWINAPI.ChooseColorA ChooseColor;
		alias DWTWINAPI.ChooseFontA ChooseFont;
		alias DWTWINAPI.CreateAcceleratorTableA CreateAcceleratorTable;
		alias DWTWINAPI.CreateDCA CreateDC;
		alias DWTWINAPI.CreateEnhMetaFileA CreateEnhMetaFile;
		alias DWTWINAPI.CreateEventA CreateEvent;
		alias DWTWINAPI.CreateFileA CreateFile;
		alias DWTWINAPI.CreateFontIndirectA CreateFontIndirect;
		alias DWTWINAPI.CreateWindowExA CreateWindowEx;
		alias DWTWINAPI.DefFrameProcA DefFrameProc;
		alias DWTWINAPI.DefMDIChildProcA DefMDIChildProc;
		alias DWTWINAPI.DefWindowProcA DefWindowProc;
		alias DWTWINAPI.DeleteFileA DeleteFile;
		alias DWTWINAPI.DispatchMessageA DispatchMessage;
		alias DWTWINAPI.DragQueryFileA DragQueryFile;
		alias DWTWINAPI.DrawStateA DrawState;
		alias DWTWINAPI.DrawTextA DrawText;
		alias DWTWINAPI.EnumFontFamiliesExA EnumFontFamiliesEx;
		alias DWTWINAPI.EnumFontFamiliesA EnumFontFamilies;
		alias DWTWINAPI.EnumSystemLanguageGroupsA EnumSystemLanguageGroups;
		alias EnumSystemLocalesA EnumSystemLocales;
		alias DWTWINAPI.ExpandEnvironmentStringsA ExpandEnvironmentStrings;
		alias DWTWINAPI.ExtTextOutA ExtTextOut;
		alias DWTWINAPI.ExtractIconExA ExtractIconEx;
		alias DWTWINAPI.FindResourceA FindResource;
		alias DWTWINAPI.FindWindowA FindWindow;
		alias DWTWINAPI.FormatMessageA FormatMessage;
		alias DWTWINAPI.GetCharABCWidthsA GetCharABCWidths;
		alias DWTWINAPI.GetCharWidthA GetCharWidth;
		alias DWTWINAPI.GetCharacterPlacementA GetCharacterPlacement;
		alias DWTWINAPI.GetClassInfoA GetClassInfo;
		alias DWTWINAPI.GetClassNameA GetClassName;
		alias DWTWINAPI.GetClipboardFormatNameA GetClipboardFormatName;
		alias DWTWINAPI.GetDateFormatA GetDateFormat;
		alias DWTWINAPI.GetTimeFormatA GetTimeFormat;
		alias DWTWINAPI.GetKeyNameTextA GetKeyNameText;
		alias DWTWINAPI.GetLocaleInfoA GetLocaleInfo;
		alias DWTWINAPI.GetMenuItemInfoA GetMenuItemInfo;
		alias DWTWINAPI.GetMessageA GetMessage;
		alias DWTWINAPI.GetModuleFileNameA GetModuleFileName;
		alias DWTWINAPI.GetModuleHandleA GetModuleHandle;
		alias DWTWINAPI.GetMonitorInfoA GetMonitorInfo;
		alias DWTWINAPI.GetObjectA GetObject;
		alias DWTWINAPI.GetOpenFileNameA GetOpenFileName;
		alias DWTWINAPI.GetOutlineTextMetricsA GetOutlineTextMetrics;
		alias DWTWINAPI.GetProfileStringA _GetProfileString;
		alias DWTWINAPI.GetPropA GetProp;
		alias DWTWINAPI.GetSaveFileNameA GetSaveFileName;
		alias DWTWINAPI.GetStartupInfoA GetStartupInfo;
		alias DWTWINAPI.GetTextExtentPoint32A GetTextExtentPoint32;
		alias DWTWINAPI.GetTextMetricsA GetTextMetrics;
		alias DWTWINAPI.GetVersionExA GetVersionEx;
		alias DWTWINAPI.GetWindowLongA GetWindowLong;
		alias DWTWINAPI.GetWindowLongA GetWindowLongPtr;
		alias DWTWINAPI.GetWindowTextA _GetWindowText;
		alias DWTWINAPI.GetWindowTextLengthA GetWindowTextLength;
		alias DWTWINAPI.GlobalAddAtomA GlobalAddAtom;
		alias DWTWINAPI.InsertMenuA InsertMenu;
		alias DWTWINAPI.InsertMenuItemA InsertMenuItem;
		alias DWTWINAPI.LoadBitmapA LoadBitmap;
		alias DWTWINAPI.LoadCursorA LoadCursor;
		alias DWTWINAPI.LoadIconA LoadIcon;
		alias DWTWINAPI.LoadImageA LoadImage;
		alias DWTWINAPI.LoadLibraryA LoadLibrary;
		alias DWTWINAPI.LoadStringA LoadString;
		alias DWTWINAPI.MapVirtualKeyA MapVirtualKey;
		alias DWTWINAPI.MessageBoxA MessageBox;
		alias DWTWINAPI.OutputDebugStringA OutputDebugString;
		alias DWTWINAPI.PeekMessageA PeekMessage;
		alias DWTWINAPI.PostMessageA PostMessage;
		alias DWTWINAPI.PostThreadMessageA PostThreadMessage;
		alias DWTWINAPI.PrintDlgA PrintDlg;
		alias DWTWINAPI.RegEnumKeyExA RegEnumKeyEx;
		alias DWTWINAPI.RegOpenKeyExA RegOpenKeyEx;
		alias DWTWINAPI.RegQueryInfoKeyA RegQueryInfoKey;
		alias DWTWINAPI.RegQueryValueExA RegQueryValueEx;
		alias DWTWINAPI.RegisterClassA RegisterClass;
		alias DWTWINAPI.RegisterClipboardFormatA RegisterClipboardFormat;
		alias DWTWINAPI.RegOpenKeyExA RegOpenKeyEx;
		alias DWTWINAPI.RegisterWindowMessageA RegisterWindowMessage;
		alias DWTWINAPI.RemovePropA RemoveProp;
		alias DWTWINAPI.SHBrowseForFolderA SHBrowseForFolder;
		alias DWTWINAPI.SHGetPathFromIDListA SHGetPathFromIDList;
		alias DWTWINAPI.SendMessageA SendMessage;
		alias DWTWINAPI.SetMenuItemInfoA SetMenuItemInfo;
		alias DWTWINAPI.SetPropA SetProp;
		alias DWTWINAPI.SetWindowLongA SetWindowLong;
		alias DWTWINAPI.SetWindowLongA SetWindowLongPtr;
		alias DWTWINAPI.SetWindowTextA SetWindowText;
		alias DWTWINAPI.SetWindowsHookExA SetWindowsHookEx;
		alias DWTWINAPI.ShellExecuteExA ShellExecuteEx;
		alias DWTWINAPI.Shell_NotifyIconA Shell_NotifyIcon;
		alias DWTWINAPI.StartDocA StartDoc;
		alias DWTWINAPI.SystemParametersInfoA SystemParametersInfo;
		alias DWTWINAPI.TranslateAcceleratorA TranslateAccelerator;
		alias DWTWINAPI.UnregisterClassA UnregisterClass;
		alias DWTWINAPI.VkKeyScanA VkKeyScan;
	}
	else
	{
		alias DWTWINAPI.AddFontResourceExW AddFontResourceEx;
		alias DWTWINAPI.AssocQueryStringW AssocQueryString;
		alias DWTWINAPI.CallWindowProcW CallWindowProc;
		alias DWTWINAPI.CharLowerW CharLower;
		alias DWTWINAPI.CharUpperW CharUpper;
		alias DWTWINAPI.ChooseColorW ChooseColor;
		alias DWTWINAPI.ChooseFontW ChooseFont;
		alias DWTWINAPI.CreateAcceleratorTableW CreateAcceleratorTable;
		alias DWTWINAPI.CreateDCW CreateDC;
		alias DWTWINAPI.CreateEnhMetaFileW CreateEnhMetaFile;
		alias DWTWINAPI.CreateEventW CreateEvent;
		alias DWTWINAPI.CreateFileW CreateFile;
		alias DWTWINAPI.CreateFontIndirectW CreateFontIndirect;
		alias DWTWINAPI.CreateWindowExW CreateWindowEx;
		alias DWTWINAPI.DefFrameProcW DefFrameProc;
		alias DWTWINAPI.DefMDIChildProcW DefMDIChildProc;
		alias DWTWINAPI.DefWindowProcW DefWindowProc;
		alias DWTWINAPI.DeleteFileW DeleteFile;
		alias DWTWINAPI.DispatchMessageW DispatchMessage;
		alias DWTWINAPI.DragQueryFileW DragQueryFile;
		alias DWTWINAPI.DrawStateW DrawState;
		alias DWTWINAPI.DrawTextW DrawText;
		alias DWTWINAPI.EnumFontFamiliesExW EnumFontFamiliesEx;
		alias DWTWINAPI.EnumFontFamiliesW EnumFontFamilies;
		alias EnumSystemLanguageGroupsW EnumSystemLanguageGroups;
		alias EnumSystemLocalesW EnumSystemLocales;
		alias DWTWINAPI.ExpandEnvironmentStringsW ExpandEnvironmentStrings;
		alias DWTWINAPI.ExtTextOutW ExtTextOut;
		alias DWTWINAPI.ExtractIconExW ExtractIconEx;
		alias DWTWINAPI.FindResourceW FindResource;
		alias DWTWINAPI.FindWindowW FindWindow;
		alias DWTWINAPI.FormatMessageW FormatMessage;
		alias DWTWINAPI.GetCharABCWidthsW GetCharABCWidths;
		alias DWTWINAPI.GetCharWidthW GetCharWidth;
		alias DWTWINAPI.GetCharacterPlacementW GetCharacterPlacement;
		alias DWTWINAPI.GetClassInfoW GetClassInfo;
		alias DWTWINAPI.GetClassNameW GetClassName;
		alias DWTWINAPI.GetClipboardFormatNameW GetClipboardFormatName;
		alias DWTWINAPI.GetDateFormatW GetDateFormat;
		alias DWTWINAPI.GetTimeFormatW GetTimeFormat;
		alias DWTWINAPI.GetKeyNameTextW GetKeyNameText;
		alias DWTWINAPI.GetLocaleInfoW GetLocaleInfo;
		alias DWTWINAPI.GetMenuItemInfoW GetMenuItemInfo;
		alias DWTWINAPI.GetMessageW GetMessage;
		alias DWTWINAPI.GetModuleFileNameW GetModuleFileName;
		alias DWTWINAPI.GetModuleHandleW GetModuleHandle;
		alias DWTWINAPI.GetMonitorInfoW GetMonitorInfo;
		alias DWTWINAPI.GetObjectW GetObject;
		alias DWTWINAPI.GetOpenFileNameW GetOpenFileName;
		alias DWTWINAPI.GetOutlineTextMetricsW GetOutlineTextMetrics;
		alias DWTWINAPI.GetProfileStringW _GetProfileString;
		alias DWTWINAPI.GetPropW GetProp;
		alias DWTWINAPI.GetSaveFileNameW GetSaveFileName;
		alias DWTWINAPI.CreateProcessW CreateProcess;
		alias DWTWINAPI.GetStartupInfoW GetStartupInfo;
		alias DWTWINAPI.GetTextExtentPoint32W GetTextExtentPoint32;
		alias DWTWINAPI.GetTextMetricsW GetTextMetrics;
		alias DWTWINAPI.GetVersionExW GetVersionEx;
		alias DWTWINAPI.GetWindowLongW GetWindowLong;
		alias DWTWINAPI.GetWindowLongW GetWindowLongPtr;
		alias DWTWINAPI.GetWindowTextW _GetWindowText;
		alias DWTWINAPI.GetWindowTextLengthW GetWindowTextLength;
		alias DWTWINAPI.GlobalAddAtomW GlobalAddAtom;
		alias DWTWINAPI.InsertMenuW InsertMenu;
		alias DWTWINAPI.InsertMenuItemW InsertMenuItem;
		alias DWTWINAPI.LoadBitmapW LoadBitmap;
		alias DWTWINAPI.LoadCursorW LoadCursor;
		alias DWTWINAPI.LoadIconW LoadIcon;
		alias DWTWINAPI.LoadImageW LoadImage;
		alias DWTWINAPI.LoadLibraryW LoadLibrary;
		alias DWTWINAPI.LoadStringW LoadString;
		alias DWTWINAPI.MapVirtualKeyW MapVirtualKey;
		alias DWTWINAPI.MessageBoxW MessageBox;
		alias DWTWINAPI.OutputDebugStringW OutputDebugString;
		alias DWTWINAPI.PeekMessageW PeekMessage;
		alias DWTWINAPI.PostMessageW PostMessage;
		alias DWTWINAPI.PostThreadMessageW PostThreadMessage;
		alias DWTWINAPI.PrintDlgW PrintDlg;
		alias DWTWINAPI.RegEnumKeyExW RegEnumKeyEx;
		alias DWTWINAPI.RegOpenKeyExW RegOpenKeyEx;
		alias DWTWINAPI.RegQueryInfoKeyW RegQueryInfoKey;
		alias DWTWINAPI.RegQueryValueExW RegQueryValueEx;
		alias DWTWINAPI.RegisterClassW RegisterClass;
		alias DWTWINAPI.RegisterClipboardFormatW RegisterClipboardFormat;
		alias DWTWINAPI.RegisterWindowMessageW RegisterWindowMessage;
		alias DWTWINAPI.RemovePropW RemoveProp;
		alias DWTWINAPI.SHBrowseForFolderW SHBrowseForFolder;
		alias DWTWINAPI.SHGetPathFromIDListW SHGetPathFromIDList;
		alias DWTWINAPI.SendMessageW SendMessage;
		alias DWTWINAPI.SetMenuItemInfoW SetMenuItemInfo;
		alias DWTWINAPI.SetWindowLongW SetWindowLong;
		alias DWTWINAPI.SetWindowLongW SetWindowLongPtr;
		alias DWTWINAPI.SetWindowTextW SetWindowText;
		alias DWTWINAPI.SetWindowsHookExW SetWindowsHookEx;
		alias DWTWINAPI.SetPropW SetProp;
		alias DWTWINAPI.ShellExecuteExW ShellExecuteEx;
		alias DWTWINAPI.Shell_NotifyIconW Shell_NotifyIcon;
		alias DWTWINAPI.StartDocW StartDoc;
		alias DWTWINAPI.SystemParametersInfoW SystemParametersInfo;
		alias DWTWINAPI.TranslateAcceleratorW TranslateAccelerator;
		alias DWTWINAPI.UnregisterClassW UnregisterClass;
		alias DWTWINAPI.VkKeyScanW VkKeyScan;
	}
	public static extern (Windows) 
	{
		BOOL function() IsAppThemed;
		HRESULT function(HTHEME hTheme, HDC hdc, int iPartId, int iStateId, RECT* pRect, RECT* pClipRect) DrawThemeBackground;
		HRESULT function(HTHEME hTheme, HDC hdc, int iPartId, int iStateId, LPCRECT pDestRect, UINT uEdge, UINT uFlags, LPRECT pContentRect) DrawThemeEdge;
		HRESULT function(HTHEME hTheme, HDC hdc, int iPartId, int iStateId, LPCRECT pRect, HIMAGELIST himl, int iImageIndex) DrawThemeIcon;
		HRESULT function(HWND hwnd, HDC hdc, RECT* prc) DrawThemeParentBackground;
		HRESULT function(HTHEME hTheme, HDC hdc, int iPartId, int iStateId, LPCWSTR pszText, int iCharCount, DWORD dwTextFlags, DWORD dwTextFlags2, LPCRECT pRect) DrawThemeText;
		HTHEME function(HWND hwnd, LPCWSTR pszClassList) OpenThemeData;
		HRESULT function() BufferedPaintInit;
		HRESULT function(HTHEME hTheme) CloseThemeData;
		HRESULT function() BufferedPaintUnInit;
		HPAINTBUFFER function(HDC hdcTarget, RECT* prcTarget, uint dwFormat, void* pPaintParams, HDC* phdc) BeginBufferedPaint;
		HRESULT function(HPAINTBUFFER hBufferedPaint, BOOL fUpdateTarget) EndBufferedPaint;
		HRESULT function(HTHEME hTheme, HDC hdc, int iPartId, int iStateId, LPCWSTR pszText, int iCharCount, DWORD dwTextFlags, LPCRECT pBoundingRect, LPRECT pExtentRect) GetThemeTextExtent;
		HRESULT function(HWND hwnd, LPCWSTR pszSubAppName, LPCWSTR pszSubIdList) SetWindowTheme;
	}


	mixin(gshared!"static SymbolVersioned2[] Symbols_UxTheme;");
	private static void static_this_1();

	static void loadLib_UxTheme();
	public static extern (Windows) 
	{
		BOOL function(HWND hwnd, COLORREF* pcrKey, BYTE* pbAlpha, DWORD* pdwFlags) GetLayeredWindowAttributes;
		BOOL function(HWND hwnd, COLORREF crKey, BYTE bAlpha, DWORD dwFlags) SetLayeredWindowAttributes;
		BOOL function(HWND hwnd, HDC hdcBlt, UINT nFlags) PrintWindow;
	}


	mixin(gshared!"static SymbolVersioned2[] Symbols_CoreImm = [\x0a];");
	public static extern (Windows) 
	{
		BOOL function() SetProcessDPIAware;
		BOOL function(HWND hWnd) IsHungAppWindow;
	}


	mixin(gshared!"static SymbolVersioned2[] Symbols_User32;");
	private static void static_this_2();

	public static extern (Windows) 
	{
		HIMC function(HWND hWnd) ImmGetContext;
		BOOL function(DWORD idThread) ImmDisableTextFrameService;
		HIMC function(HWND hWnd, HIMC hIMC) ImmAssociateContext;
		HIMC function() ImmCreateContext;
		int function(HIMC hIMC) ImmDestroyContext;
		BOOL function(HIMC hIMC, LPDWORD lpfdwConversion, LPDWORD lpfdwSentence) ImmGetConversionStatus;
		HWND function(HWND hWnd) ImmGetDefaultIMEWnd;
		BOOL function(HIMC hIMC) ImmGetOpenStatus;
		BOOL function(HWND hWnd, HIMC hIMC) ImmReleaseContext;
		version (ANSI)
		{
			BOOL function(HIMC hIMC, LOGFONTA* lplf) ImmSetCompositionFont;
			LONG function(HIMC hIMC, DWORD dwIndex, LPVOID lpBuf, DWORD dwBufLen) ImmGetCompositionString;
			BOOL function(HIMC hIMC, LPLOGFONTA lplf) ImmGetCompositionFont;
		}
		else
		{
			BOOL function(HIMC hIMC, LOGFONTW* lplf) ImmSetCompositionFont;
			LONG function(HIMC hIMC, DWORD dwIndex, LPVOID lpBuf, DWORD dwBufLen) ImmGetCompositionString;
			BOOL function(HIMC hIMC, LOGFONTW* lplf) ImmGetCompositionFont;
		}
		BOOL function(HIMC hIMC, LPCOMPOSITIONFORM lpCompForm) ImmSetCompositionWindow;
		BOOL function(HIMC hIMC, DWORD fdwConversion, DWORD fdwSentence) ImmSetConversionStatus;
		BOOL function(HIMC hIMC, BOOL fOpen) ImmSetOpenStatus;
		BOOL function(HIMC hIMC, DWORD dwAction, DWORD dwIndex, DWORD dwValue) ImmNotifyIME;
		LONG function(HIMC hIMC, DWORD dwIndex, LPVOID lpBuf, DWORD dwBufLen) ImmGetCompositionStringA;
		LONG function(HIMC hIMC, DWORD dwIndex, LPVOID lpBuf, DWORD dwBufLen) ImmGetCompositionStringW;
		BOOL function(HIMC hIMC, LPCANDIDATEFORM lpCandidate) ImmSetCandidateWindow;
	}


	mixin(gshared!"static SymbolVersioned2[] Symbols_Imm32;");
	private static void static_this_3();

	version (ANSI)
	{
	}
	else
	{
		mixin(gshared!"static SymbolVersioned2[] Symbols_Kernel32;");
		private static void static_this_4();

	}
	alias DWTWINAPI.AbortDoc AbortDoc;
	alias DWTWINAPI.ActivateKeyboardLayout ActivateKeyboardLayout;
	alias DWTWINAPI.AdjustWindowRectEx AdjustWindowRectEx;
	alias DWTWINAPI.AlphaBlend AlphaBlend;
	alias DWTWINAPI.Arc Arc;
	alias DWTWINAPI.BeginDeferWindowPos BeginDeferWindowPos;
	alias DWTWINAPI.BeginPaint BeginPaint;
	alias DWTWINAPI.BeginPath BeginPath;
	alias DWTWINAPI.BitBlt BitBlt;
	alias DWTWINAPI.BringWindowToTop BringWindowToTop;
	alias DWTWINAPI.CallNextHookEx CallNextHookEx;
	alias DWTWINAPI.CallWindowProcA CallWindowProcA;
	alias DWTWINAPI.CallWindowProcW CallWindowProcW;
	alias DWTWINAPI.CharLowerA CharLowerA;
	alias DWTWINAPI.CharLowerW CharLowerW;
	alias DWTWINAPI.CharUpperA CharUpperA;
	alias DWTWINAPI.CharUpperW CharUpperW;
	alias DWTWINAPI.CheckMenuItem CheckMenuItem;
	alias DWTWINAPI.ChooseColorA ChooseColorA;
	alias DWTWINAPI.ChooseColorW ChooseColorW;
	alias DWTWINAPI.ChooseFontA ChooseFontA;
	alias DWTWINAPI.ChooseFontW ChooseFontW;
	alias DWTWINAPI.ClientToScreen ClientToScreen;
	alias DWTWINAPI.CloseHandle CloseHandle;
	alias DWTWINAPI.CloseClipboard CloseClipboard;
	alias DWTWINAPI.CloseEnhMetaFile CloseEnhMetaFile;
	alias DWTWINAPI.CloseMetaFile CloseMetaFile;
	alias DWTWINAPI.CombineRgn CombineRgn;
	alias DWTWINAPI.CommDlgExtendedError CommDlgExtendedError;
	version (WinCE)
	{
		alias DWTWINAPI.CommandBar_AddAdornments CommandBar_AddAdornments;
		alias DWTWINAPI.CommandBar_Create CommandBar_Create;
		alias DWTWINAPI.CommandBar_Destroy CommandBar_Destroy;
		alias DWTWINAPI.CommandBar_DrawMenuBar CommandBar_DrawMenuBar;
		alias DWTWINAPI.CommandBar_Height CommandBar_Height;
		alias DWTWINAPI.CommandBar_InsertMenubarEx CommandBar_InsertMenubarEx;
		alias DWTWINAPI.CommandBar_Show CommandBar_Show;
	}
	alias DWTWINAPI.CopyImage CopyImage;
	alias DWTWINAPI.CreateAcceleratorTableA CreateAcceleratorTableA;
	alias DWTWINAPI.CreateAcceleratorTableW CreateAcceleratorTableW;
	alias DWTWINAPI.CreateBitmap CreateBitmap;
	alias DWTWINAPI.CreateCaret CreateCaret;
	alias DWTWINAPI.CreateCompatibleBitmap CreateCompatibleBitmap;
	alias DWTWINAPI.CreateCompatibleDC CreateCompatibleDC;
	alias DWTWINAPI.CreateCursor CreateCursor;
	alias DWTWINAPI.CreateDCA CreateDCA;
	alias DWTWINAPI.CreateDCW CreateDCW;
	alias DWTWINAPI.CreateDIBSection CreateDIBSection;
	alias DWTWINAPI.CreateEventA CreateEventA;
	alias DWTWINAPI.CreateEventW CreateEventW;
	alias DWTWINAPI.CreateFileA CreateFileA;
	alias DWTWINAPI.CreateFileW CreateFileW;
	alias DWTWINAPI.CreateFontIndirectA CreateFontIndirectA;
	alias DWTWINAPI.CreateFontIndirectW CreateFontIndirectW;
	alias DWTWINAPI.CreateIconIndirect CreateIconIndirect;
	alias DWTWINAPI.CreateMenu CreateMenu;
	alias DWTWINAPI.CreatePalette CreatePalette;
	alias DWTWINAPI.CreatePatternBrush CreatePatternBrush;
	alias DWTWINAPI.CreatePen CreatePen;
	alias DWTWINAPI.CreatePolygonRgn CreatePolygonRgn;
	alias DWTWINAPI.CreatePopupMenu CreatePopupMenu;
	alias DWTWINAPI.CreateRectRgn CreateRectRgn;
	alias DWTWINAPI.CreateSolidBrush CreateSolidBrush;
	alias DWTWINAPI.CreateWindowExA CreateWindowExA;
	alias DWTWINAPI.CreateWindowExW CreateWindowExW;
	alias DWTWINAPI.DefFrameProcA DefFrameProcA;
	alias DWTWINAPI.DefFrameProcW DefFrameProcW;
	alias DWTWINAPI.DefMDIChildProcA DefMDIChildProcA;
	alias DWTWINAPI.DefMDIChildProcW DefMDIChildProcW;
	alias DWTWINAPI.DefWindowProcA DefWindowProcA;
	alias DWTWINAPI.DefWindowProcW DefWindowProcW;
	alias DWTWINAPI.DeferWindowPos DeferWindowPos;
	alias DWTWINAPI.DeleteDC DeleteDC;
	alias DWTWINAPI.DeleteEnhMetaFile DeleteEnhMetaFile;
	alias DWTWINAPI.DeleteMenu DeleteMenu;
	alias DWTWINAPI.DeleteObject DeleteObject;
	alias DWTWINAPI.DestroyAcceleratorTable DestroyAcceleratorTable;
	alias DWTWINAPI.DestroyCaret DestroyCaret;
	alias DWTWINAPI.DestroyCursor DestroyCursor;
	alias DWTWINAPI.DestroyIcon DestroyIcon;
	alias DWTWINAPI.DestroyMenu DestroyMenu;
	alias DWTWINAPI.DestroyWindow DestroyWindow;
	alias DWTWINAPI.DispatchMessageA DispatchMessageA;
	alias DWTWINAPI.DispatchMessageW DispatchMessageW;
	alias DWTWINAPI.DragDetect DragDetect;
	alias DWTWINAPI.DragFinish DragFinish;
	alias DWTWINAPI.DragQueryFileA DragQueryFileA;
	alias DWTWINAPI.DragQueryFileW DragQueryFileW;
	alias DWTWINAPI.DrawEdge DrawEdge;
	alias DWTWINAPI.DrawFocusRect DrawFocusRect;
	alias DWTWINAPI.DrawFrameControl DrawFrameControl;
	alias DWTWINAPI.DrawIconEx DrawIconEx;
	alias DWTWINAPI.DrawMenuBar DrawMenuBar;
	alias DWTWINAPI.DrawStateA DrawStateA;
	alias DWTWINAPI.DrawStateW DrawStateW;
	alias DWTWINAPI.DrawTextA DrawTextA;
	alias DWTWINAPI.DrawTextW DrawTextW;
	alias DWTWINAPI.Ellipse Ellipse;
	alias DWTWINAPI.EnableMenuItem EnableMenuItem;
	alias DWTWINAPI.EnableScrollBar EnableScrollBar;
	alias DWTWINAPI.EnableWindow EnableWindow;
	alias DWTWINAPI.EndDeferWindowPos EndDeferWindowPos;
	alias DWTWINAPI.EndDoc EndDoc;
	alias DWTWINAPI.EndPage EndPage;
	alias DWTWINAPI.EndPaint EndPaint;
	alias DWTWINAPI.EndPath EndPath;
	alias DWTWINAPI.EnumDisplayMonitors EnumDisplayMonitors;
	alias DWTWINAPI.EnumEnhMetaFile EnumEnhMetaFile;
	alias DWTWINAPI.EnumFontFamiliesA EnumFontFamiliesA;
	alias DWTWINAPI.EnumFontFamiliesExA EnumFontFamiliesExA;
	alias DWTWINAPI.EnumFontFamiliesExW EnumFontFamiliesExW;
	alias DWTWINAPI.EnumFontFamiliesW EnumFontFamiliesW;
	alias DWTWINAPI.EqualRect EqualRect;
	alias DWTWINAPI.EqualRgn EqualRgn;
	alias DWTWINAPI.ExcludeClipRect ExcludeClipRect;
	alias DWTWINAPI.ExpandEnvironmentStringsA ExpandEnvironmentStringsA;
	alias DWTWINAPI.ExpandEnvironmentStringsW ExpandEnvironmentStringsW;
	alias DWTWINAPI.ExtTextOutA ExtTextOutA;
	alias DWTWINAPI.ExtTextOutW ExtTextOutW;
	alias DWTWINAPI.ExtractIconExA ExtractIconExA;
	alias DWTWINAPI.ExtractIconExW ExtractIconExW;
	alias DWTWINAPI.ExtCreatePen ExtCreatePen;
	alias DWTWINAPI.ExtCreateRegion ExtCreateRegion;
	alias DWTWINAPI.FillRect FillRect;
	alias DWTWINAPI.FindResourceA FindResourceA;
	alias DWTWINAPI.FindResourceW FindResourceW;
	alias DWTWINAPI.FindWindowA FindWindowA;
	alias DWTWINAPI.FindWindowW FindWindowW;
	alias DWTWINAPI.FormatMessageA FormatMessageA;
	alias DWTWINAPI.FormatMessageW FormatMessageW;
	alias DWTWINAPI.FreeLibrary FreeLibrary;
	alias DWTWINAPI.GdiSetBatchLimit GdiSetBatchLimit;
	alias DWTWINAPI.GetACP GetACP;
	alias DWTWINAPI.GetAsyncKeyState GetAsyncKeyState;
	alias DWTWINAPI.GetActiveWindow GetActiveWindow;
	alias DWTWINAPI.GetBkColor GetBkColor;
	alias DWTWINAPI.GetCapture GetCapture;
	alias DWTWINAPI.GetCaretPos GetCaretPos;
	alias DWTWINAPI.GetCharABCWidthsA GetCharABCWidthsA;
	alias DWTWINAPI.GetCharABCWidthsW GetCharABCWidthsW;
	alias DWTWINAPI.GetCharWidthA GetCharWidthA;
	alias DWTWINAPI.GetCharWidthW GetCharWidthW;
	alias DWTWINAPI.GetCharacterPlacementA GetCharacterPlacementA;
	alias DWTWINAPI.GetCharacterPlacementW GetCharacterPlacementW;
	alias DWTWINAPI.GetClassInfoA GetClassInfoA;
	alias DWTWINAPI.GetClassInfoW GetClassInfoW;
	alias DWTWINAPI.GetClientRect GetClientRect;
	alias DWTWINAPI.GetClipBox GetClipBox;
	alias DWTWINAPI.GetClipRgn GetClipRgn;
	alias DWTWINAPI.GetClipboardData GetClipboardData;
	alias DWTWINAPI.GetClipboardFormatNameA GetClipboardFormatNameA;
	alias DWTWINAPI.GetClipboardFormatNameW GetClipboardFormatNameW;
	alias DWTWINAPI.GetComboBoxInfo GetComboBoxInfo;
	alias DWTWINAPI.GetCurrentObject GetCurrentObject;
	alias DWTWINAPI.GetCurrentProcessId GetCurrentProcessId;
	alias DWTWINAPI.GetCurrentThreadId GetCurrentThreadId;
	alias DWTWINAPI.GetCursor GetCursor;
	alias DWTWINAPI.GetCursorPos GetCursorPos;
	alias DWTWINAPI.GetDC GetDC;
	alias DWTWINAPI.GetDCEx GetDCEx;
	alias DWTWINAPI.GetDIBColorTable GetDIBColorTable;
	alias DWTWINAPI.GetDIBits GetDIBits;
	alias DWTWINAPI.GetDesktopWindow GetDesktopWindow;
	alias DWTWINAPI.GetDeviceCaps GetDeviceCaps;
	alias DWTWINAPI.GetDialogBaseUnits GetDialogBaseUnits;
	alias DWTWINAPI.GetDlgItem GetDlgItem;
	alias DWTWINAPI.GetDoubleClickTime GetDoubleClickTime;
	alias DWTWINAPI.GetFocus GetFocus;
	alias DWTWINAPI.GetFontLanguageInfo GetFontLanguageInfo;
	alias DWTWINAPI.GetGUIThreadInfo GetGUIThreadInfo;
	alias DWTWINAPI.GetIconInfo GetIconInfo;
	alias DWTWINAPI.GetKeyNameTextA GetKeyNameTextA;
	alias DWTWINAPI.GetKeyNameTextW GetKeyNameTextW;
	alias DWTWINAPI.GetKeyState GetKeyState;
	alias DWTWINAPI.GetKeyboardLayout GetKeyboardLayout;
	alias DWTWINAPI.GetKeyboardLayoutList GetKeyboardLayoutList;
	alias DWTWINAPI.GetKeyboardState GetKeyboardState;
	alias DWTWINAPI.GetLastActivePopup GetLastActivePopup;
	alias DWTWINAPI.GetLastError GetLastError;
	alias DWTWINAPI.GetLayout GetLayout;
	alias DWTWINAPI.GetLocaleInfoA GetLocaleInfoA;
	alias DWTWINAPI.GetLocaleInfoW GetLocaleInfoW;
	alias DWTWINAPI.GetMenu GetMenu;
	alias DWTWINAPI.GetMenuBarInfo GetMenuBarInfo;
	alias DWTWINAPI.GetMenuDefaultItem GetMenuDefaultItem;
	alias DWTWINAPI.GetMenuInfo GetMenuInfo;
	alias DWTWINAPI.GetMenuItemCount GetMenuItemCount;
	alias DWTWINAPI.GetMenuItemInfoA GetMenuItemInfoA;
	alias DWTWINAPI.GetMenuItemInfoW GetMenuItemInfoW;
	alias DWTWINAPI.GetMenuItemRect GetMenuItemRect;
	alias DWTWINAPI.GetMessageA GetMessageA;
	alias DWTWINAPI.GetMessagePos GetMessagePos;
	alias DWTWINAPI.GetMessageTime GetMessageTime;
	alias DWTWINAPI.GetMetaRgn GetMetaRgn;
	alias DWTWINAPI.GetMessageW GetMessageW;
	alias DWTWINAPI.GetModuleFileNameA GetModuleFileNameA;
	alias DWTWINAPI.GetModuleFileNameW GetModuleFileNameW;
	alias DWTWINAPI.GetModuleHandleA GetModuleHandleA;
	alias DWTWINAPI.GetModuleHandleW GetModuleHandleW;
	alias DWTWINAPI.GetMonitorInfoA GetMonitorInfoA;
	alias DWTWINAPI.GetMonitorInfoW GetMonitorInfoW;
	alias DWTWINAPI.GetNearestPaletteIndex GetNearestPaletteIndex;
	alias DWTWINAPI.GetPath GetPath;
	alias DWTWINAPI.GetObjectA GetObjectA;
	alias DWTWINAPI.GetObjectW GetObjectW;
	alias DWTWINAPI.GetOpenFileNameA GetOpenFileNameA;
	alias DWTWINAPI.GetOpenFileNameW GetOpenFileNameW;
	alias DWTWINAPI.GetPaletteEntries GetPaletteEntries;
	alias DWTWINAPI.GetParent GetParent;
	alias DWTWINAPI.GetPixel GetPixel;
	alias DWTWINAPI.GetPolyFillMode GetPolyFillMode;
	alias DWTWINAPI.GetProcAddress GetProcAddress;
	alias DWTWINAPI.GetProcessHeap GetProcessHeap;
	alias DWTWINAPI.GetProfileStringA GetProfileStringA;
	alias DWTWINAPI.GetProfileStringW GetProfileStringW;
	alias DWTWINAPI.GetROP2 GetROP2;
	alias DWTWINAPI.GetRandomRgn GetRandomRgn;
	alias DWTWINAPI.GetRegionData GetRegionData;
	alias DWTWINAPI.GetRgnBox GetRgnBox;
	alias DWTWINAPI.GetSaveFileNameA GetSaveFileNameA;
	alias DWTWINAPI.GetSaveFileNameW GetSaveFileNameW;
	alias DWTWINAPI.GetScrollInfo GetScrollInfo;
	alias DWTWINAPI.GetStockObject GetStockObject;
	alias DWTWINAPI.GetSysColor GetSysColor;
	alias DWTWINAPI.GetSysColorBrush GetSysColorBrush;
	alias DWTWINAPI.GetSystemMenu GetSystemMenu;
	alias DWTWINAPI.GetSystemMetrics GetSystemMetrics;
	alias DWTWINAPI.GetSystemPaletteEntries GetSystemPaletteEntries;
	alias DWTWINAPI.GetTextCharset GetTextCharset;
	alias DWTWINAPI.GetTextColor GetTextColor;
	alias DWTWINAPI.GetTextExtentPoint32A GetTextExtentPoint32A;
	alias DWTWINAPI.GetTextExtentPoint32W GetTextExtentPoint32W;
	alias DWTWINAPI.GetTextMetricsA GetTextMetricsA;
	alias DWTWINAPI.GetTextMetricsW GetTextMetricsW;
	alias DWTWINAPI.GetTickCount GetTickCount;
	alias DWTWINAPI.GetUpdateRect GetUpdateRect;
	alias DWTWINAPI.GetUpdateRgn GetUpdateRgn;
	alias DWTWINAPI.GetVersion GetVersion;
	alias DWTWINAPI.GetVersionExA GetVersionExA;
	alias DWTWINAPI.GetVersionExW GetVersionExW;
	alias DWTWINAPI.GetWindow GetWindow;
	alias DWTWINAPI.GetWindowDC GetWindowDC;
	alias DWTWINAPI.GetWindowOrgEx GetWindowOrgEx;
	alias DWTWINAPI.GetWindowLongA GetWindowLongA;
	alias DWTWINAPI.GetWindowLongW GetWindowLongW;
	alias DWTWINAPI.GetWindowPlacement GetWindowPlacement;
	alias DWTWINAPI.GetWindowRect GetWindowRect;
	alias DWTWINAPI.GetWindowRgn GetWindowRgn;
	alias DWTWINAPI.GetWindowTextA GetWindowTextA;
	alias DWTWINAPI.GetWindowTextLengthA GetWindowTextLengthA;
	alias DWTWINAPI.GetWindowTextLengthW GetWindowTextLengthW;
	alias DWTWINAPI.GetWindowTextW GetWindowTextW;
	alias DWTWINAPI.GetWindowThreadProcessId GetWindowThreadProcessId;
	alias DWTWINAPI.GlobalAlloc GlobalAlloc;
	alias DWTWINAPI.GlobalFree GlobalFree;
	alias DWTWINAPI.GlobalLock GlobalLock;
	alias DWTWINAPI.GlobalSize GlobalSize;
	alias DWTWINAPI.GlobalUnlock GlobalUnlock;
	alias DWTWINAPI.GradientFill GradientFill;
	alias DWTWINAPI.HeapAlloc HeapAlloc;
	alias DWTWINAPI.HeapFree HeapFree;
	alias DWTWINAPI.HideCaret HideCaret;
	alias DWTWINAPI.IIDFromString IIDFromString;
	alias DWTWINAPI.ImageList_Add ImageList_Add;
	alias DWTWINAPI.ImageList_AddMasked ImageList_AddMasked;
	alias DWTWINAPI.ImageList_BeginDrag ImageList_BeginDrag;
	alias DWTWINAPI.ImageList_Create ImageList_Create;
	alias DWTWINAPI.ImageList_Destroy ImageList_Destroy;
	alias DWTWINAPI.ImageList_DragEnter ImageList_DragEnter;
	alias DWTWINAPI.ImageList_DragLeave ImageList_DragLeave;
	alias DWTWINAPI.ImageList_DragMove ImageList_DragMove;
	alias DWTWINAPI.ImageList_DragShowNolock ImageList_DragShowNolock;
	alias DWTWINAPI.ImageList_Draw ImageList_Draw;
	alias DWTWINAPI.ImageList_EndDrag ImageList_EndDrag;
	alias DWTWINAPI.ImageList_GetIcon ImageList_GetIcon;
	alias DWTWINAPI.ImageList_GetIconSize ImageList_GetIconSize;
	alias DWTWINAPI.ImageList_GetImageCount ImageList_GetImageCount;
	alias DWTWINAPI.ImageList_Remove ImageList_Remove;
	alias DWTWINAPI.ImageList_Replace ImageList_Replace;
	alias DWTWINAPI.ImageList_ReplaceIcon ImageList_ReplaceIcon;
	alias DWTWINAPI.ImageList_SetIconSize ImageList_SetIconSize;
	alias DWTWINAPI.InitCommonControls InitCommonControls;
	alias DWTWINAPI.InitCommonControlsEx InitCommonControlsEx;
	alias DWTWINAPI.InsertMenuA InsertMenuA;
	alias DWTWINAPI.InsertMenuItemA InsertMenuItemA;
	alias DWTWINAPI.InsertMenuItemW InsertMenuItemW;
	alias DWTWINAPI.InsertMenuW InsertMenuW;
	alias DWTWINAPI.InterlockedDecrement InterlockedDecrement;
	alias DWTWINAPI.InterlockedIncrement InterlockedIncrement;
	alias DWTWINAPI.IntersectClipRect IntersectClipRect;
	alias DWTWINAPI.IntersectRect IntersectRect;
	alias DWTWINAPI.InvalidateRect InvalidateRect;
	alias DWTWINAPI.InvalidateRgn InvalidateRgn;
	alias DWTWINAPI.IsDBCSLeadByte IsDBCSLeadByte;
	alias DWTWINAPI.IsIconic IsIconic;
	alias DWTWINAPI.IsWindow IsWindow;
	alias DWTWINAPI.IsWindowEnabled IsWindowEnabled;
	alias DWTWINAPI.IsWindowVisible IsWindowVisible;
	alias DWTWINAPI.IsZoomed IsZoomed;
	alias DWTWINAPI.KillTimer KillTimer;
	alias DWTWINAPI.LineTo LineTo;
	alias DWTWINAPI.LoadBitmapA LoadBitmapA;
	alias DWTWINAPI.LoadBitmapW LoadBitmapW;
	alias DWTWINAPI.LoadCursorA LoadCursorA;
	alias DWTWINAPI.LoadCursorW LoadCursorW;
	alias DWTWINAPI.LoadIconA LoadIconA;
	alias DWTWINAPI.LoadIconW LoadIconW;
	alias DWTWINAPI.LoadImageA LoadImageA;
	alias DWTWINAPI.LoadImageW LoadImageW;
	alias DWTWINAPI.LoadLibraryA LoadLibraryA;
	alias DWTWINAPI.LoadLibraryW LoadLibraryW;
	alias DWTWINAPI.LoadResource LoadResource;
	alias DWTWINAPI.LoadStringA LoadStringA;
	alias DWTWINAPI.LoadStringW LoadStringW;
	alias DWTWINAPI.LocalFree LocalFree;
	alias DWTWINAPI.LockResource LockResource;
	alias DWTWINAPI.MapVirtualKeyA MapVirtualKeyA;
	alias DWTWINAPI.MapVirtualKeyW MapVirtualKeyW;
	alias DWTWINAPI.MapWindowPoints MapWindowPoints;
	alias DWTWINAPI.MessageBeep MessageBeep;
	alias DWTWINAPI.MessageBoxA MessageBoxA;
	alias DWTWINAPI.MessageBoxW MessageBoxW;
	alias DWTWINAPI.MonitorFromWindow MonitorFromWindow;
	alias DWTWINAPI.MoveToEx MoveToEx;
	alias DWTWINAPI.MsgWaitForMultipleObjectsEx MsgWaitForMultipleObjectsEx;
	alias DWTWINAPI.MultiByteToWideChar MultiByteToWideChar;
	alias DWTWINAPI.NotifyWinEvent NotifyWinEvent;
	alias DWTWINAPI.OffsetRect OffsetRect;
	alias DWTWINAPI.OffsetRgn OffsetRgn;
	alias DWTWINAPI.OpenClipboard OpenClipboard;
	alias DWTWINAPI.OutputDebugStringA OutputDebugStringA;
	alias DWTWINAPI.OutputDebugStringW OutputDebugStringW;
	alias DWTWINAPI.PatBlt PatBlt;
	alias DWTWINAPI.PeekMessageA PeekMessageA;
	alias DWTWINAPI.PeekMessageW PeekMessageW;
	alias DWTWINAPI.Pie Pie;
	alias DWTWINAPI.Polygon Polygon;
	alias DWTWINAPI.Polyline Polyline;
	alias DWTWINAPI.PostMessageA PostMessageA;
	alias DWTWINAPI.PostMessageW PostMessageW;
	alias DWTWINAPI.PostThreadMessageA PostThreadMessageA;
	alias DWTWINAPI.PostThreadMessageW PostThreadMessageW;
	alias DWTWINAPI.PrintDlgA PrintDlgA;
	alias DWTWINAPI.PrintDlgW PrintDlgW;
	alias DWTWINAPI.PtInRect PtInRect;
	alias DWTWINAPI.PtInRegion PtInRegion;
	alias DWTWINAPI.RealizePalette RealizePalette;
	alias DWTWINAPI.Rectangle Rectangle;
	alias DWTWINAPI.RectInRegion RectInRegion;
	alias DWTWINAPI.Rectangle _Rectangle;
	alias DWTWINAPI.RedrawWindow RedrawWindow;
	alias DWTWINAPI.RegCloseKey RegCloseKey;
	alias DWTWINAPI.RegEnumKeyExA RegEnumKeyExA;
	alias DWTWINAPI.RegEnumKeyExW RegEnumKeyExW;
	alias DWTWINAPI.RegOpenKeyExA RegOpenKeyExA;
	alias DWTWINAPI.RegOpenKeyExW RegOpenKeyExW;
	alias DWTWINAPI.RegQueryInfoKeyA RegQueryInfoKeyA;
	alias DWTWINAPI.RegQueryInfoKeyW RegQueryInfoKeyW;
	alias DWTWINAPI.RegQueryValueExA RegQueryValueExA;
	alias DWTWINAPI.RegQueryValueExW RegQueryValueExW;
	alias DWTWINAPI.RegisterClassA RegisterClassA;
	alias DWTWINAPI.RegisterClassW RegisterClassW;
	alias DWTWINAPI.RegisterClipboardFormatA RegisterClipboardFormatA;
	alias DWTWINAPI.RegisterClipboardFormatW RegisterClipboardFormatW;
	alias DWTWINAPI.RegisterWindowMessageA RegisterWindowMessageA;
	alias DWTWINAPI.RegisterWindowMessageW RegisterWindowMessageW;
	alias DWTWINAPI.ReleaseCapture ReleaseCapture;
	alias DWTWINAPI.ReleaseDC ReleaseDC;
	alias DWTWINAPI.RemoveMenu RemoveMenu;
	alias DWTWINAPI.RestoreDC RestoreDC;
	alias DWTWINAPI.RoundRect RoundRect;
	alias DWTWINAPI.RtlMoveMemory MoveMemory;
	alias DWTWINAPI.SHBrowseForFolderA SHBrowseForFolderA;
	alias DWTWINAPI.SHBrowseForFolderW SHBrowseForFolderW;
	version (WinCE)
	{
		alias DWTWINAPI.SHCreateMenuBar SHCreateMenuBar;
	}
	alias DWTWINAPI.SHGetMalloc SHGetMalloc;
	alias DWTWINAPI.SHGetPathFromIDListA SHGetPathFromIDListA;
	alias DWTWINAPI.SHGetPathFromIDListW SHGetPathFromIDListW;
	version (WinCE)
	{
		alias DWTWINAPI.SHHandleWMSettingChange SHHandleWMSettingChange;
		alias DWTWINAPI.SHRecognizeGesture SHRecognizeGesture;
		alias DWTWINAPI.SHSendBackToFocusWindow SHSendBackToFocusWindow;
		alias DWTWINAPI.SHSetAppKeyWndAssoc SHSetAppKeyWndAssoc;
		alias DWTWINAPI.SHSipPreference SHSipPreference;
	}
	alias DWTWINAPI.SaveDC SaveDC;
	alias DWTWINAPI.ScreenToClient ScreenToClient;
	alias DWTWINAPI.ScriptApplyDigitSubstitution ScriptApplyDigitSubstitution;
	alias DWTWINAPI.ScriptBreak ScriptBreak;
	alias DWTWINAPI.ScriptCPtoX ScriptCPtoX;
	alias DWTWINAPI.ScriptCacheGetHeight ScriptCacheGetHeight;
	alias DWTWINAPI.ScriptFreeCache ScriptFreeCache;
	alias DWTWINAPI.ScriptGetFontProperties ScriptGetFontProperties;
	alias DWTWINAPI.ScriptGetLogicalWidths ScriptGetLogicalWidths;
	alias DWTWINAPI.ScriptGetProperties ScriptGetProperties;
	alias DWTWINAPI.ScriptItemize ScriptItemize;
	alias DWTWINAPI.ScriptJustify ScriptJustify;
	alias DWTWINAPI.ScriptLayout ScriptLayout;
	alias DWTWINAPI.ScriptPlace ScriptPlace;
	alias DWTWINAPI.ScriptRecordDigitSubstitution ScriptRecordDigitSubstitution;
	alias DWTWINAPI.ScriptGetCMap ScriptGetCMap;
	alias DWTWINAPI.ScriptShape ScriptShape;
	alias DWTWINAPI.ScriptStringAnalyse ScriptStringAnalyse;
	alias DWTWINAPI.ScriptStringOut ScriptStringOut;
	alias DWTWINAPI.ScriptStringFree ScriptStringFree;
	alias DWTWINAPI.ScriptTextOut ScriptTextOut;
	alias DWTWINAPI.ScriptXtoCP ScriptXtoCP;
	alias DWTWINAPI.ScrollWindowEx ScrollWindowEx;
	alias DWTWINAPI.SelectClipRgn SelectClipRgn;
	alias DWTWINAPI.SelectObject SelectObject;
	alias DWTWINAPI.SelectPalette SelectPalette;
	alias DWTWINAPI.SendInput SendInput;
	alias DWTWINAPI.SendMessageA SendMessageA;
	alias DWTWINAPI.SendMessageW SendMessageW;
	alias DWTWINAPI.SetActiveWindow SetActiveWindow;
	alias DWTWINAPI.SetBkColor SetBkColor;
	alias DWTWINAPI.SetBkMode SetBkMode;
	alias DWTWINAPI.SetBrushOrgEx SetBrushOrgEx;
	alias DWTWINAPI.SetCapture SetCapture;
	alias DWTWINAPI.SetCaretPos SetCaretPos;
	alias DWTWINAPI.SetClipboardData SetClipboardData;
	alias DWTWINAPI.SetCursor SetCursor;
	alias DWTWINAPI.SetCursorPos SetCursorPos;
	alias DWTWINAPI.SetDIBColorTable SetDIBColorTable;
	alias DWTWINAPI.SetErrorMode SetErrorMode;
	alias DWTWINAPI.SetEvent SetEvent;
	alias DWTWINAPI.SetFocus SetFocus;
	alias DWTWINAPI.SetForegroundWindow SetForegroundWindow;
	alias DWTWINAPI.SetGraphicsMode SetGraphicsMode;
	alias DWTWINAPI.SetLastError SetLastError;
	alias DWTWINAPI.SetLayout SetLayout;
	alias DWTWINAPI.SetMenu SetMenu;
	alias DWTWINAPI.SetMenuDefaultItem SetMenuDefaultItem;
	alias DWTWINAPI.SetMenuInfo SetMenuInfo;
	alias DWTWINAPI.SetMenuItemInfoA SetMenuItemInfoA;
	alias DWTWINAPI.SetMenuItemInfoW SetMenuItemInfoW;
	alias DWTWINAPI.SetMetaRgn SetMetaRgn;
	alias DWTWINAPI.SetPaletteEntries SetPaletteEntries;
	alias DWTWINAPI.SetParent SetParent;
	alias DWTWINAPI.SetPixel SetPixel;
	alias DWTWINAPI.SetPolyFillMode SetPolyFillMode;
	alias DWTWINAPI.SetROP2 SetROP2;
	alias DWTWINAPI.SetRect SetRect;
	alias DWTWINAPI.SetRectRgn SetRectRgn;
	alias DWTWINAPI.SetScrollInfo SetScrollInfo;
	alias DWTWINAPI.SetStretchBltMode SetStretchBltMode;
	alias DWTWINAPI.SetTextAlign SetTextAlign;
	alias DWTWINAPI.SetTextColor SetTextColor;
	alias DWTWINAPI.SetTimer SetTimer;
	alias DWTWINAPI.SetWindowLongA SetWindowLongA;
	alias DWTWINAPI.SetWindowLongW SetWindowLongW;
	alias DWTWINAPI.SetWindowOrgEx SetWindowOrgEx;
	alias DWTWINAPI.SetWindowPlacement SetWindowPlacement;
	alias DWTWINAPI.SetWindowPos SetWindowPos;
	alias DWTWINAPI.SetWindowRgn SetWindowRgn;
	alias DWTWINAPI.SetWorldTransform SetWorldTransform;
	alias DWTWINAPI.SetWindowTextA SetWindowTextA;
	alias DWTWINAPI.SetWindowTextW SetWindowTextW;
	alias DWTWINAPI.SetWindowsHookExA SetWindowsHookExA;
	alias DWTWINAPI.SetWindowsHookExW SetWindowsHookExW;
	alias DWTWINAPI.ShellExecuteExA ShellExecuteExA;
	alias DWTWINAPI.ShellExecuteExW ShellExecuteExW;
	alias DWTWINAPI.Shell_NotifyIconA Shell_NotifyIconA;
	alias DWTWINAPI.Shell_NotifyIconW Shell_NotifyIconW;
	alias DWTWINAPI.SHGetFileInfo SHGetFileInfo;
	alias DWTWINAPI.ShowCaret ShowCaret;
	alias DWTWINAPI.ShowOwnedPopups ShowOwnedPopups;
	alias DWTWINAPI.ShowScrollBar ShowScrollBar;
	alias DWTWINAPI.ShowWindow ShowWindow;
	version (WinCE)
	{
		alias DWTWINAPI.SipGetInfo SipGetInfo;
	}
	alias DWTWINAPI.SizeofResource SizeofResource;
	alias DWTWINAPI.Sleep Sleep;
	alias DWTWINAPI.StartDocA StartDocA;
	alias DWTWINAPI.StartDocW StartDocW;
	alias DWTWINAPI.StartPage StartPage;
	alias DWTWINAPI.StretchBlt StretchBlt;
	alias DWTWINAPI.SystemParametersInfoA SystemParametersInfoA;
	alias DWTWINAPI.SystemParametersInfoW SystemParametersInfoW;
	alias DWTWINAPI.ToAscii ToAscii;
	alias DWTWINAPI.ToUnicode ToUnicode;
	alias DWTWINAPI.TrackMouseEvent TrackMouseEvent;
	alias DWTWINAPI.TrackPopupMenu TrackPopupMenu;
	alias DWTWINAPI.TranslateAcceleratorA TranslateAcceleratorA;
	alias DWTWINAPI.TranslateAcceleratorW TranslateAcceleratorW;
	alias DWTWINAPI.TranslateCharsetInfo TranslateCharsetInfo;
	alias DWTWINAPI.TranslateMDISysAccel TranslateMDISysAccel;
	alias DWTWINAPI.TranslateMessage TranslateMessage;
	alias DWTWINAPI.TransparentBlt TransparentBlt;
	version (WinCE)
	{
		alias DWTWINAPI.TransparentImage TransparentImage;
	}
	alias DWTWINAPI.UnhookWindowsHookEx UnhookWindowsHookEx;
	alias DWTWINAPI.UnregisterClassA UnregisterClassA;
	alias DWTWINAPI.UnregisterClassW UnregisterClassW;
	alias DWTWINAPI.UpdateWindow UpdateWindow;
	alias DWTWINAPI.ValidateRect ValidateRect;
	alias DWTWINAPI.VkKeyScanA VkKeyScanA;
	alias DWTWINAPI.VkKeyScanW VkKeyScanW;
	alias DWTWINAPI.WaitForMultipleObjects WaitForMultipleObjects;
	alias DWTWINAPI.WaitForSingleObject WaitForSingleObject;
	alias DWTWINAPI.WaitMessage WaitMessage;
	alias DWTWINAPI.WideCharToMultiByte WideCharToMultiByte;
	alias DWTWINAPI.WindowFromDC WindowFromDC;
	alias DWTWINAPI.WindowFromPoint WindowFromPoint;
	alias DWTWINAPI.wcslen wcslen;
	public static int VERSION(int major, int minor);

	static int GetProfileString(String lpAppName, String lpKeyName, String lpDefault, out String lpReturnedString, int nSize);
	static String GetWindowText(HWND hwnd);
	static int GetWindowText(HWND hWnd, TCHAR* lpString, int nMaxCount);
	static int CenterWindow(HWND m_hWnd, HWND hWndCenter = null);
	alias DWTWINAPI.OleInitialize OleInitialize;
	alias DWTWINAPI.OleUninitialize OleUninitialize;
	alias DWTWINAPI.CoCreateInstance CoCreateInstance;
	public static int VtblCall(int fnNumber, void* ppVtbl);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7);

	public static int LOWORD(int l);

	public static int HIWORD(int h);

	public static int MAKEWORD(int l, int h);

	public static int MAKELONG(int low, int high);

	public static int MAKEWPARAM(int l, int h);

	public static int MAKELPARAM(int l, int h);

	public static int MAKELRESULT(int l, int h);

	public static int GET_WHEEL_DELTA_WPARAM(int wParam);

	public static int GET_X_LPARAM(int lp);

	public static int GET_Y_LPARAM(int lp);

	static bool TreeView_GetItemRect(HWND hwnd, HTREEITEM hitem, RECT* prc, bool code);
	static int strlen(PCHAR ptr);
	static void POINTSTOPOINT(ref POINT pt, int pts);
	alias DWTWINAPI.GetScrollBarInfo GetScrollBarInfo;
}

alias StrToMBCS StrToMBCSs;
public CHAR[] StrToMBCS(in char[] sc, uint codepage = 0);

public TryConst!char* StrToMBCSz(in char[] sc);

public String16 StrToWCHARs(uint codepage, in char[] sc, bool terminated = false);

public String16 StrToWCHARs(in char[] sc, bool terminated = false);

public LPCWSTR StrToWCHARz(uint codepage, in char[] sc, uint* length = null);

public LPCWSTR StrToWCHARz(in char[] sc, uint* length = null);

public String MBCSsToStr(in CHAR[] string, uint codepage = 0);

public String MBCSzToStr(in PCHAR pString, int _length = -1, uint codepage = 0);

public String WCHARsToStr(in WCHAR[] string);

public String WCHARzToStr(in LPCWSTR pString, int _length = -1);

version (OLE_COM)
{
	static char[] BSTRToStr(ref wchar* bstr, bool freeTheString = false);
}
public static String16 _mbcszToWs(in PCHAR pMBCS, int len, uint codepage = 0);

public int _tcslen(in TCHAR* pString);

version (ANSI)
{
	alias StrToMBCS StrToTCHARs;
	alias StrToMBCSz StrToTCHARz;
	alias MBCSzToStr TCHARzToStr;
	alias MBCSsToStr TCHARsToStr;
}
else
{
	alias StrToWCHARs StrToTCHARs;
	alias StrToWCHARz StrToTCHARz;
	alias WCHARzToStr TCHARzToStr;
	alias WCHARsToStr TCHARsToStr;
	alias _tcslen TCHARzLen;
}
TCHAR[] NewTCHARs(uint codepage, uint len);
