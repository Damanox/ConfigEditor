// D import file generated from 'org\eclipse\swt\internal\ole\win32\COM.d'
module org.eclipse.swt.internal.ole.win32.COM;
public import org.eclipse.swt.internal.ole.win32.COMTYPES;

private import org.eclipse.swt.internal.ole.win32.OAIDL;

private import org.eclipse.swt.internal.ole.win32.OBJIDL;

private import org.eclipse.swt.internal.ole.win32.OLEIDL;

private import org.eclipse.swt.internal.ole.win32.DOCOBJ;

private import org.eclipse.swt.internal.ole.win32.EXDISP;

private import org.eclipse.swt.internal.ole.win32.MSHTMHST;

private import org.eclipse.swt.internal.ole.win32.extras;

private import org.eclipse.swt.internal.ole.win32.ifs;

private import org.eclipse.swt.internal.ole.win32.COMAPI;

import java.lang.all;
private alias org.eclipse.swt.internal.ole.win32.COMAPI COMAPI;

public import org.eclipse.swt.internal.win32.OS;

template IIDFromStringT(String g)
{
	static if (g.length == 38)
	{
		const GUID IIDFromStringT = IIDFromStringT!(g[1 .. $ - 1]);

	}
	else
	{
		static if (g.length == 36)
		{
			const GUID IIDFromStringT = GUID(mixin("0x" ~ g[0..8]), mixin("0x" ~ g[9..13]), mixin("0x" ~ g[14..18]), [mixin("0x" ~ g[19..21]), mixin("0x" ~ g[21..23]), mixin("0x" ~ g[24..26]), mixin("0x" ~ g[26..28]), mixin("0x" ~ g[28..30]), mixin("0x" ~ g[30..32]), mixin("0x" ~ g[32..34]), mixin("0x" ~ g[34..36])]);

		}
		else
		{
			static assert(false, "Incorrect format for GUID. " ~ g);
		}
	}
}
public class COM : OS
{
	public static const GUID IIDJavaBeansBridge = IIDFromStringT!"{8AD9C840-044E-11D1-B3E9-00805F499D93}";


	public static const GUID IIDShockwaveActiveXControl = IIDFromStringT!"{166B1BCA-3F9C-11CF-8075-444553540000}";


	public static const GUID IIDIEditorSiteTime = IIDFromStringT!"{6BD2AEFE-7876-45e6-A6E7-3BFCDF6540AA}";


	public static const GUID IIDIEditorSiteProperty = IIDFromStringT!"{D381A1F4-2326-4f3c-AFB9-B7537DB9E238}";


	public static const GUID IIDIEditorBaseProperty = IIDFromStringT!"{61E55B0B-2647-47c4-8C89-E736EF15D636}";


	public static const GUID IIDIEditorSite = IIDFromStringT!"{CDD88AB9-B01D-426E-B0F0-30973E9A074B}";


	public static const GUID IIDIEditorService = IIDFromStringT!"{BEE283FE-7B42-4FF3-8232-0F07D43ABCF1}";


	public static const GUID IIDIEditorManager = IIDFromStringT!"{EFDE08C4-BE87-4B1A-BF84-15FC30207180}";


	public static const GUID IIDIAccessible = IIDFromStringT!"{618736E0-3C3D-11CF-810C-00AA00389B71}";


	public static const GUID IIDIAdviseSink = IIDFromStringT!"{0000010F-0000-0000-C000-000000000046}";


	public static const GUID IIDIClassFactory = IIDFromStringT!"{00000001-0000-0000-C000-000000000046}";


	public static const GUID IIDIClassFactory2 = IIDFromStringT!"{B196B28F-BAB4-101A-B69C-00AA00341D07}";


	public static const GUID IIDIConnectionPoint = IIDFromStringT!"{B196B286-BAB4-101A-B69C-00AA00341D07}";


	public static const GUID IIDIConnectionPointContainer = IIDFromStringT!"{B196B284-BAB4-101A-B69C-00AA00341D07}";


	public static const GUID IIDIDataObject = IIDFromStringT!"{0000010E-0000-0000-C000-000000000046}";


	public static const GUID IIDIDispatch = IIDFromStringT!"{00020400-0000-0000-C000-000000000046}";


	public static const GUID IIDIDocHostUIHandler = IIDFromStringT!"{BD3F23C0-D43E-11CF-893B-00AA00BDCE1A}";


	public static const GUID IIDIDocHostShowUI = IIDFromStringT!"{C4D244B0-D43E-11CF-893B-00AA00BDCE1A}";


	public static const GUID IIDIDropSource = IIDFromStringT!"{00000121-0000-0000-C000-000000000046}";


	public static const GUID IIDIDropTarget = IIDFromStringT!"{00000122-0000-0000-C000-000000000046}";


	public static const GUID IIDIEnumFORMATETC = IIDFromStringT!"{00000103-0000-0000-C000-000000000046}";


	public static const GUID IIDIEnumVARIANT = IIDFromStringT!"{00020404-0000-0000-C000-000000000046}";


	public static const GUID IIDIFont = IIDFromStringT!"{BEF6E002-A874-101A-8BBA-00AA00300CAB}";


	public static const String IIDIHTMLDocumentEvents2 = "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}";


	public static const GUID IIDIInternetSecurityManager = IIDFromStringT!"{79eac9ee-baf9-11ce-8c82-00aa004ba90b}";


	public static const GUID IIDIOleClientSite = IIDFromStringT!"{00000118-0000-0000-C000-000000000046}";


	public static const GUID IIDIOleCommandTarget = IIDFromStringT!"{B722BCCB-4E68-101B-A2BC-00AA00404770}";


	public static const GUID IIDIOleContainer = IIDFromStringT!"{0000011B-0000-0000-C000-000000000046}";


	public static const GUID IIDIOleControl = IIDFromStringT!"{B196B288-BAB4-101A-B69C-00AA00341D07}";


	public static const GUID IIDIOleControlSite = IIDFromStringT!"{B196B289-BAB4-101A-B69C-00AA00341D07}";


	public static const GUID IIDIOleDocument = IIDFromStringT!"{B722BCC5-4E68-101B-A2BC-00AA00404770}";


	public static const GUID IIDIOleDocumentSite = IIDFromStringT!"{B722BCC7-4E68-101B-A2BC-00AA00404770}";


	public static const GUID IIDIOleInPlaceActiveObject = IIDFromStringT!"{00000117-0000-0000-C000-000000000046}";


	public static const GUID IIDIOleInPlaceFrame = IIDFromStringT!"{00000116-0000-0000-C000-000000000046}";


	public static const GUID IIDIOleInPlaceObject = IIDFromStringT!"{00000113-0000-0000-C000-000000000046}";


	public static const GUID IIDIOleInPlaceSite = IIDFromStringT!"{00000119-0000-0000-C000-000000000046}";


	public static const GUID IIDIOleInPlaceUIWindow = IIDFromStringT!"{00000115-0000-0000-C000-000000000046}";


	public static const GUID IIDIOleLink = IIDFromStringT!"{0000011D-0000-0000-C000-000000000046}";


	public static const GUID IIDIOleObject = IIDFromStringT!"{00000112-0000-0000-C000-000000000046}";


	public static const GUID IIDIOleWindow = IIDFromStringT!"{00000114-0000-0000-C000-000000000046}";


	public static const GUID IIDIPersist = IIDFromStringT!"{0000010C-0000-0000-C000-000000000046}";


	public static const GUID IIDIPersistFile = IIDFromStringT!"{0000010B-0000-0000-C000-000000000046}";


	public static const GUID IIDIPersistStorage = IIDFromStringT!"{0000010A-0000-0000-C000-000000000046}";


	public static const GUID IIDIPersistStream = IIDFromStringT!"{00000109-0000-0000-C000-000000000046}";


	public static const GUID IIDIPersistStreamInit = IIDFromStringT!"{7FD52380-4E07-101B-AE2D-08002B2EC713}";


	public static const GUID IIDIPropertyNotifySink = IIDFromStringT!"{9BFBBC02-EFF1-101A-84ED-00AA00341D07}";


	public static const GUID IIDIProvideClassInfo = IIDFromStringT!"{B196B283-BAB4-101A-B69C-00AA00341D07}";


	public static const GUID IIDIProvideClassInfo2 = IIDFromStringT!"{A6BC3AC0-DBAA-11CE-9DE3-00AA004BB851}";


	public static const GUID IIDIServiceProvider = IIDFromStringT!"{6d5140c1-7436-11ce-8034-00aa006009fa}";


	public static const GUID IIDISpecifyPropertyPages = IIDFromStringT!"{B196B28B-BAB4-101A-B69C-00AA00341D07}";


	public static const GUID IIDIStorage = IIDFromStringT!"{0000000B-0000-0000-C000-000000000046}";


	public static const GUID IIDIStream = IIDFromStringT!"{0000000C-0000-0000-C000-000000000046}";


	public static const GUID IIDIUnknown = IIDFromStringT!"{00000000-0000-0000-C000-000000000046}";


	public static const GUID IIDIViewObject2 = IIDFromStringT!"{00000127-0000-0000-C000-000000000046}";


	public static const GUID CGID_DocHostCommandHandler = IIDFromStringT!"{f38bc242-b950-11d1-8918-00c04fc2c836}";


	public static const GUID CGID_Explorer = IIDFromStringT!"{000214D0-0000-0000-C000-000000000046}";


	public static const int CF_TEXT = 1;


	public static const int CF_BITMAP = 2;


	public static const int CF_METAFILEPICT = 3;


	public static const int CF_SYLK = 4;


	public static const int CF_DIF = 5;


	public static const int CF_TIFF = 6;


	public static const int CF_OEMTEXT = 7;


	public static const int CF_DIB = 8;


	public static const int CF_PALETTE = 9;


	public static const int CF_PENDATA = 10;


	public static const int CF_RIFF = 11;


	public static const int CF_WAVE = 12;


	public static const int CF_UNICODETEXT = 13;


	public static const int CF_ENHMETAFILE = 14;


	public static const int CF_HDROP = 15;


	public static const int CF_LOCALE = 16;


	public static const int CF_MAX = 17;


	public static const int CLSCTX_INPROC_HANDLER = 2;


	public static const int CLSCTX_INPROC_SERVER = 1;


	public static const int CLSCTX_LOCAL_SERVER = 4;


	public static const int CLSCTX_REMOTE_SERVER = 16;


	public static const int CO_E_CLASSSTRING = -2147221005;


	public static const int DATADIR_GET = 1;


	public static const int DATADIR_SET = 2;


	public static const int DISP_E_EXCEPTION = 2147614729u;


	public static const int DISP_E_MEMBERNOTFOUND = -2147352573;


	public static const int DISP_E_UNKNOWNINTERFACE = 2147614721u;


	public static const int DISPID_AMBIENT_BACKCOLOR = -701;


	public static const int DISPID_AMBIENT_FONT = -703;


	public static const int DISPID_AMBIENT_FORECOLOR = -704;


	public static const int DISPID_AMBIENT_LOCALEID = -705;


	public static const int DISPID_AMBIENT_MESSAGEREFLECT = -706;


	public static const int DISPID_AMBIENT_OFFLINEIFNOTCONNECTED = -5501;


	public static const int DISPID_AMBIENT_SHOWGRABHANDLES = -711;


	public static const int DISPID_AMBIENT_SHOWHATCHING = -712;


	public static const int DISPID_AMBIENT_SILENT = -5502;


	public static const int DISPID_AMBIENT_SUPPORTSMNEMONICS = -714;


	public static const int DISPID_AMBIENT_UIDEAD = -710;


	public static const int DISPID_AMBIENT_USERMODE = -709;


	public static const int DISPID_BACKCOLOR = -501;


	public static const int DISPID_FONT = -512;


	public static const int DISPID_FONT_BOLD = 3;


	public static const int DISPID_FONT_CHARSET = 8;


	public static const int DISPID_FONT_ITALIC = 4;


	public static const int DISPID_FONT_NAME = 0;


	public static const int DISPID_FONT_SIZE = 2;


	public static const int DISPID_FONT_STRIKE = 6;


	public static const int DISPID_FONT_UNDER = 5;


	public static const int DISPID_FONT_WEIGHT = 7;


	public static const int DISPID_FORECOLOR = -513;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONDBLCLICK = 4294966695u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONDRAGEND = 2147549205u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONDRAGSTART = 2147549195u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONKEYDOWN = 4294966694u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONKEYPRESS = 4294966693u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONKEYUP = 4294966692u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOUT = 2147549193u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOVER = 2147549192u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONMOUSEMOVE = 4294966690u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONMOUSEDOWN = 4294966691u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONMOUSEUP = 4294966689u;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONSTOP = 1026;


	public static const int DISPID_HTMLDOCUMENTEVENTS_ONMOUSEWHEEL = 1033;


	public static const int DRAGDROP_S_DROP = 262400;


	public static const int DRAGDROP_S_CANCEL = 262401;


	public static const int DRAGDROP_S_USEDEFAULTCURSORS = 262402;


	public static const int DROPEFFECT_NONE = 0;


	public static const int DROPEFFECT_COPY = 1;


	public static const int DROPEFFECT_MOVE = 2;


	public static const int DROPEFFECT_LINK = 4;


	public static const int DROPEFFECT_SCROLL = 2147483648u;


	public static const int DSH_ALLOWDROPDESCRIPTIONTEXT = 1;


	public static const int DV_E_FORMATETC = -2147221404;


	public static const int DV_E_STGMEDIUM = -2147221402;


	public static const int DV_E_TYMED = -2147221399;


	public static const int DVASPECT_CONTENT = 1;


	public static const int E_FAIL = -2147467259;


	public static const int E_INVALIDARG = -2147024809;


	public static const int E_NOINTERFACE = -2147467262;


	public static const int E_NOTIMPL = -2147467263;


	public static const int E_NOTSUPPORTED = 2147746048u;


	public static const int E_OUTOFMEMORY = -2147024882;


	public static const int GMEM_FIXED = 0;


	public static const int GMEM_ZEROINIT = 64;


	public static const int GUIDKIND_DEFAULT_SOURCE_DISP_IID = 1;


	public static const int IMPLTYPEFLAG_FDEFAULT = 1;


	public static const int IMPLTYPEFLAG_FRESTRICTED = 4;


	public static const int IMPLTYPEFLAG_FSOURCE = 2;


	public static const int LOCALE_SYSTEM_DEFAULT = 1024;


	public static const int LOCALE_USER_DEFAULT = 2048;


	public static const int OLECLOSE_NOSAVE = 1;


	public static const int OLECLOSE_SAVEIFDIRTY = 0;


	public static const int OLEEMBEDDED = 1;


	public static const int OLEIVERB_DISCARDUNDOSTATE = -6;


	public static const int OLEIVERB_INPLACEACTIVATE = -5;


	public static const int OLEIVERB_PRIMARY = 0;


	public static const int OLELINKED = 0;


	public static const int OLERENDER_DRAW = 1;


	public static const int S_FALSE = 1;


	public static const int S_OK = 0;


	public static const int STG_E_FILENOTFOUND = 2147680258u;


	public static const int STG_S_CONVERTED = 197120;


	public static const int STGC_DEFAULT = 0;


	public static const int STGM_CONVERT = 131072;


	public static const int STGM_CREATE = 4096;


	public static const int STGM_DELETEONRELEASE = 67108864;


	public static const int STGM_DIRECT = 0;


	public static const int STGM_DIRECT_SWMR = 4194304;


	public static const int STGM_FAILIFTHERE = 0;


	public static const int STGM_NOSCRATCH = 1048576;


	public static const int STGM_NOSNAPSHOT = 2097152;


	public static const int STGM_PRIORITY = 262144;


	public static const int STGM_READ = 0;


	public static const int STGM_READWRITE = 2;


	public static const int STGM_SHARE_DENY_NONE = 64;


	public static const int STGM_SHARE_DENY_READ = 48;


	public static const int STGM_SHARE_DENY_WRITE = 32;


	public static const int STGM_SHARE_EXCLUSIVE = 16;


	public static const int STGM_SIMPLE = 134217728;


	public static const int STGM_TRANSACTED = 65536;


	public static const int STGM_WRITE = 1;


	public static const int STGTY_STORAGE = 1;


	public static const int STGTY_STREAM = 2;


	public static const int STGTY_LOCKBYTES = 3;


	public static const int STGTY_PROPERTY = 4;


	public static const int TYMED_HGLOBAL = 1;


	public static const short DISPATCH_METHOD = 1;


	public static const short DISPATCH_PROPERTYGET = 2;


	public static const short DISPATCH_PROPERTYPUT = 4;


	public static const short DISPATCH_PROPERTYPUTREF = 8;


	public static const short DISPID_PROPERTYPUT = -3;


	public static const short VT_BOOL = 11;


	public static const short VT_BSTR = 8;


	public static const short VT_BYREF = 16384;


	public static const short VT_CY = 6;


	public static const short VT_DATE = 7;


	public static const short VT_DISPATCH = 9;


	public static const short VT_EMPTY = 0;


	public static const short VT_ERROR = 10;


	public static const short VT_I1 = 16;


	public static const short VT_I2 = 2;


	public static const short VT_I4 = 3;


	public static const short VT_I8 = 20;


	public static const short VT_NULL = 1;


	public static const short VT_R4 = 4;


	public static const short VT_R8 = 5;


	public static const short VT_UI1 = 17;


	public static const short VT_UI2 = 18;


	public static const short VT_UI4 = 19;


	public static const short VT_UNKNOWN = 13;


	public static const short VT_VARIANT = 12;


	public static const short VARIANT_TRUE = -1;


	public static const short VARIANT_FALSE = 0;


	alias COMAPI.CLSIDFromProgID CLSIDFromProgID;
	alias COMAPI.CLSIDFromString CLSIDFromString;
	alias COMAPI.CoCreateInstance CoCreateInstance;
	alias COMAPI.CoFreeUnusedLibraries CoFreeUnusedLibraries;
	alias COMAPI.CoGetClassObject CoGetClassObject;
	alias COMAPI.CoLockObjectExternal CoLockObjectExternal;
	alias COMAPI.CoTaskMemAlloc CoTaskMemAlloc;
	alias COMAPI.CoTaskMemFree CoTaskMemFree;
	alias COMAPI.CreateStdAccessibleObject CreateStdAccessibleObject;
	alias COMAPI.CreateStreamOnHGlobal CreateStreamOnHGlobal;
	alias COMAPI.DoDragDrop DoDragDrop;
	alias COMAPI.GetClassFile GetClassFile;
	alias COMAPI.IIDFromString IIDFromString;
	alias COMAPI.IsEqualGUID IsEqualGUID;
	alias COMAPI.LresultFromObject LresultFromObject;
	alias COMAPI.OleCreate OleCreate;
	alias COMAPI.OleCreateFromFile OleCreateFromFile;
	alias COMAPI.OleCreatePropertyFrame OleCreatePropertyFrame;
	alias COMAPI.OleDraw OleDraw;
	alias COMAPI.OleFlushClipboard OleFlushClipboard;
	alias COMAPI.OleGetClipboard OleGetClipboard;
	alias COMAPI.OleIsCurrentClipboard OleIsCurrentClipboard;
	alias COMAPI.OleIsRunning OleIsRunning;
	alias COMAPI.OleLoad OleLoad;
	alias COMAPI.OleRun OleRun;
	alias COMAPI.OleSave OleSave;
	alias COMAPI.OleSetClipboard OleSetClipboard;
	alias COMAPI.OleSetContainedObject OleSetContainedObject;
	alias COMAPI.OleSetMenuDescriptor OleSetMenuDescriptor;
	alias COMAPI.OleTranslateColor OleTranslateColor;
	alias COMAPI.ProgIDFromCLSID ProgIDFromCLSID;
	alias COMAPI.RegisterDragDrop RegisterDragDrop;
	alias COMAPI.ReleaseStgMedium ReleaseStgMedium;
	alias COMAPI.RevokeDragDrop RevokeDragDrop;
	alias COMAPI.SHDoDragDrop SHDoDragDrop;
	alias COMAPI.StgCreateDocfile StgCreateDocfile;
	alias COMAPI.StgIsStorageFile StgIsStorageFile;
	alias COMAPI.StgOpenStorage StgOpenStorage;
	alias COMAPI.StringFromCLSID StringFromCLSID;
	alias COMAPI.SysAllocString SysAllocString;
	alias COMAPI.SysFreeString SysFreeString;
	alias COMAPI.SysStringByteLen SysStringByteLen;
	alias COMAPI.VariantChangeType VariantChangeType;
	alias COMAPI.VariantClear VariantClear;
	alias COMAPI.VariantCopy VariantCopy;
	alias COMAPI.VariantInit VariantInit;
	alias COMAPI.WriteClassStg WriteClassStg;
	public static int VtblCall(int fnNumber, void* ppVtbl);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6);

	public static int VtblCall(int fnNumber, void* ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7);

	public static const int CHILDID_SELF = 0;


	public static const int CO_E_OBJNOTCONNECTED = 2147746301u;


	public static const int ROLE_SYSTEM_MENUBAR = 2;


	public static const int ROLE_SYSTEM_SCROLLBAR = 3;


	public static const int ROLE_SYSTEM_WINDOW = 9;


	public static const int ROLE_SYSTEM_CLIENT = 10;


	public static const int ROLE_SYSTEM_MENUPOPUP = 11;


	public static const int ROLE_SYSTEM_MENUITEM = 12;


	public static const int ROLE_SYSTEM_TOOLTIP = 13;


	public static const int ROLE_SYSTEM_DIALOG = 18;


	public static const int ROLE_SYSTEM_SEPARATOR = 21;


	public static const int ROLE_SYSTEM_TOOLBAR = 22;


	public static const int ROLE_SYSTEM_TABLE = 24;


	public static const int ROLE_SYSTEM_COLUMNHEADER = 25;


	public static const int ROLE_SYSTEM_ROWHEADER = 26;


	public static const int ROLE_SYSTEM_CELL = 29;


	public static const int ROLE_SYSTEM_LINK = 30;


	public static const int ROLE_SYSTEM_LIST = 33;


	public static const int ROLE_SYSTEM_LISTITEM = 34;


	public static const int ROLE_SYSTEM_OUTLINE = 35;


	public static const int ROLE_SYSTEM_OUTLINEITEM = 36;


	public static const int ROLE_SYSTEM_PAGETAB = 37;


	public static const int ROLE_SYSTEM_STATICTEXT = 41;


	public static const int ROLE_SYSTEM_TEXT = 42;


	public static const int ROLE_SYSTEM_PUSHBUTTON = 43;


	public static const int ROLE_SYSTEM_CHECKBUTTON = 44;


	public static const int ROLE_SYSTEM_RADIOBUTTON = 45;


	public static const int ROLE_SYSTEM_COMBOBOX = 46;


	public static const int ROLE_SYSTEM_PROGRESSBAR = 48;


	public static const int ROLE_SYSTEM_SLIDER = 51;


	public static const int ROLE_SYSTEM_PAGETABLIST = 60;


	public static const int STATE_SYSTEM_NORMAL = 0;


	public static const int STATE_SYSTEM_SELECTED = 2;


	public static const int STATE_SYSTEM_FOCUSED = 4;


	public static const int STATE_SYSTEM_PRESSED = 8;


	public static const int STATE_SYSTEM_CHECKED = 16;


	public static const int STATE_SYSTEM_MIXED = 32;


	public static const int STATE_SYSTEM_READONLY = 64;


	public static const int STATE_SYSTEM_HOTTRACKED = 128;


	public static const int STATE_SYSTEM_EXPANDED = 512;


	public static const int STATE_SYSTEM_COLLAPSED = 1024;


	public static const int STATE_SYSTEM_BUSY = 2048;


	public static const int STATE_SYSTEM_INVISIBLE = 32768;


	public static const int STATE_SYSTEM_OFFSCREEN = 65536;


	public static const int STATE_SYSTEM_SIZEABLE = 131072;


	public static const int STATE_SYSTEM_FOCUSABLE = 1048576;


	public static const int STATE_SYSTEM_SELECTABLE = 2097152;


	public static const int STATE_SYSTEM_LINKED = 4194304;


	public static const int STATE_SYSTEM_MULTISELECTABLE = 16777216;


}

String BSTRToStr(ref wchar* bstr, bool freeTheString = false);
