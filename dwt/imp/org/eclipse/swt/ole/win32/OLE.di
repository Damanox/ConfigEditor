// D import file generated from 'org\eclipse\swt\ole\win32\OLE.d'
module org.eclipse.swt.ole.win32.OLE;
import java.io.File;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.win32.OS;
import java.lang.all;
public class OLE : SWT
{
	public static const int S_FALSE = 1;


	public static const int S_OK = 0;


	public static const int E_FAIL = -2147467259;


	public static const int E_INVALIDARG = -2147024809;


	public static const int E_NOINTERFACE = -2147467262;


	public static const int E_NOTIMPL = -2147467263;


	public static const String IID_IUNKNOWN = "{00000000-0000-0000-C000-000000000046}";


	public static const String IID_IDISPATCH = "{00020400-0000-0000-C000-000000000046}";


	public static const int OLEIVERB_DISCARDUNDOSTATE = -6;


	public static const int OLEIVERB_HIDE = -3;


	public static const int OLEIVERB_INPLACEACTIVATE = -5;


	public static const int OLEIVERB_OPEN = -2;


	public static const int OLEIVERB_PRIMARY = 0;


	public static const int OLEIVERB_PROPERTIES = -7;


	public static const int OLEIVERB_SHOW = -1;


	public static const int OLEIVERB_UIACTIVATE = -4;


	public static const int PROPERTY_CHANGING = 0;


	public static const int PROPERTY_CHANGED = 1;


	public static const int HRESULT_UNSPECIFIED = 0;


	public static const int ERROR_CANNOT_CREATE_FILE = 1000;


	public static const int ERROR_CANNOT_CREATE_OBJECT = 1001;


	public static const int ERROR_CANNOT_OPEN_FILE = 1002;


	public static const int ERROR_INTERFACE_NOT_FOUND = 1003;


	public static const int ERROR_INVALID_CLASSID = 1004;


	public static const int ERROR_CANNOT_ACCESS_CLASSFACTORY = 1005;


	public static const int ERROR_CANNOT_CREATE_LICENSED_OBJECT = 1006;


	public static const int ERROR_OUT_OF_MEMORY = 1007;


	public static const int ERROR_CANNOT_CHANGE_VARIANT_TYPE = 1010;


	public static const int ERROR_INVALID_INTERFACE_ADDRESS = 1011;


	public static const int ERROR_APPLICATION_NOT_FOUND = 1013;


	public static const int ERROR_ACTION_NOT_PERFORMED = 1014;


	public static const int OLECMDF_SUPPORTED = 1;


	public static const int OLECMDF_ENABLED = 2;


	public static const int OLECMDF_LATCHED = 4;


	public static const int OLECMDF_NINCHED = 8;


	public static const int OLECMDTEXTF_NONE = 0;


	public static const int OLECMDTEXTF_NAME = 1;


	public static const int OLECMDTEXTF_STATUS = 2;


	public static const int OLECMDEXECOPT_DODEFAULT = 0;


	public static const int OLECMDEXECOPT_PROMPTUSER = 1;


	public static const int OLECMDEXECOPT_DONTPROMPTUSER = 2;


	public static const int OLECMDEXECOPT_SHOWHELP = 3;


	public static const int OLECMDID_OPEN = 1;


	public static const int OLECMDID_NEW = 2;


	public static const int OLECMDID_SAVE = 3;


	public static const int OLECMDID_SAVEAS = 4;


	public static const int OLECMDID_SAVECOPYAS = 5;


	public static const int OLECMDID_PRINT = 6;


	public static const int OLECMDID_PRINTPREVIEW = 7;


	public static const int OLECMDID_PAGESETUP = 8;


	public static const int OLECMDID_SPELL = 9;


	public static const int OLECMDID_PROPERTIES = 10;


	public static const int OLECMDID_CUT = 11;


	public static const int OLECMDID_COPY = 12;


	public static const int OLECMDID_PASTE = 13;


	public static const int OLECMDID_PASTESPECIAL = 14;


	public static const int OLECMDID_UNDO = 15;


	public static const int OLECMDID_REDO = 16;


	public static const int OLECMDID_SELECTALL = 17;


	public static const int OLECMDID_CLEARSELECTION = 18;


	public static const int OLECMDID_ZOOM = 19;


	public static const int OLECMDID_GETZOOMRANGE = 20;


	public static const int OLECMDID_UPDATECOMMANDS = 21;


	public static const int OLECMDID_REFRESH = 22;


	public static const int OLECMDID_STOP = 23;


	public static const int OLECMDID_HIDETOOLBARS = 24;


	public static const int OLECMDID_SETPROGRESSMAX = 25;


	public static const int OLECMDID_SETPROGRESSPOS = 26;


	public static const int OLECMDID_SETPROGRESSTEXT = 27;


	public static const int OLECMDID_SETTITLE = 28;


	public static const int OLECMDID_SETDOWNLOADSTATE = 29;


	public static const int OLECMDID_STOPDOWNLOAD = 30;


	public static int VARFLAG_FREADONLY = 1;


	public static int VARFLAG_FSOURCE = 2;


	public static int VARFLAG_FBINDABLE = 4;


	public static int VARFLAG_FREQUESTEDIT = 8;


	public static int VARFLAG_FDISPLAYBIND = 16;


	public static int VARFLAG_FDEFAULTBIND = 32;


	public static int VARFLAG_FHIDDEN = 64;


	public static int VARFLAG_FRESTRICTED = 128;


	public static int VARFLAG_FDEFAULTCOLLELEM = 256;


	public static int VARFLAG_FUIDEFAULT = 512;


	public static int VARFLAG_FNONBROWSABLE = 1024;


	public static int VARFLAG_FREPLACEABLE = 2048;


	public static int VARFLAG_FIMMEDIATEBIND = 4096;


	public static int VAR_PERINSTANCE = 0;


	public static int VAR_STATIC = 1;


	public static int VAR_CONST = 2;


	public static int VAR_DISPATCH = 3;


	public static short IDLFLAG_NONE = 0;


	public static short IDLFLAG_FIN = 1;


	public static short IDLFLAG_FOUT = 2;


	public static short IDLFLAG_FLCID = 4;


	public static short IDLFLAG_FRETVAL = 8;


	public static const short VT_BOOL = 11;


	public static const short VT_BSTR = 8;


	public static const short VT_BYREF = 16384;


	public static const short VT_CY = 6;


	public static const short VT_DATE = 7;


	public static const short VT_DISPATCH = 9;


	public static const short VT_EMPTY = 0;


	public static const short VT_ERROR = 10;


	public static const short VT_I2 = 2;


	public static const short VT_I4 = 3;


	public static const short VT_NULL = 1;


	public static const short VT_R4 = 4;


	public static const short VT_R8 = 5;


	public static const short VT_UI1 = 17;


	public static const short VT_UI4 = 19;


	public static const short VT_UNKNOWN = 13;


	public static const short VT_VARIANT = 12;


	public static const short VT_PTR = 26;


	public static const short VT_USERDEFINED = 29;


	public static const short VT_HRESULT = 25;


	public static const short VT_DECIMAL = 14;


	public static const short VT_I1 = 16;


	public static const short VT_UI2 = 18;


	public static const short VT_I8 = 20;


	public static const short VT_UI8 = 21;


	public static const short VT_INT = 22;


	public static const short VT_UINT = 23;


	public static const short VT_VOID = 24;


	public static const short VT_SAFEARRAY = 27;


	public static const short VT_CARRAY = 28;


	public static const short VT_LPSTR = 30;


	public static const short VT_LPWSTR = 31;


	public static const short VT_RECORD = 36;


	public static const short VT_FILETIME = 64;


	public static const short VT_BLOB = 65;


	public static const short VT_STREAM = 66;


	public static const short VT_STORAGE = 67;


	public static const short VT_STREAMED_OBJECT = 68;


	public static const short VT_STORED_OBJECT = 69;


	public static const short VT_BLOB_OBJECT = 70;


	public static const short VT_CF = 71;


	public static const short VT_CLSID = 72;


	public static const short VT_VERSIONED_STREAM = 73;


	public static const short VT_BSTR_BLOB = 4095;


	public static const short VT_VECTOR = 4096;


	public static const short VT_ARRAY = 8192;


	public static const int INVOKE_FUNC = 1;


	public static const int INVOKE_PROPERTYGET = 2;


	public static const int INVOKE_PROPERTYPUT = 4;


	public static const int INVOKE_PROPERTYPUTREF = 8;


	public static const int FUNC_VIRTUAL = 0;


	public static const int FUNC_PUREVIRTUAL = 1;


	public static const int FUNC_NONVIRTUAL = 2;


	public static const int FUNC_STATIC = 3;


	public static const int FUNC_DISPATCH = 4;


	public static const short FUNCFLAG_FRESTRICTED = 1;


	public static const short FUNCFLAG_FSOURCE = 2;


	public static const short FUNCFLAG_FBINDABLE = 4;


	public static const short FUNCFLAG_FREQUESTEDIT = 8;


	public static const short FUNCFLAG_FDISPLAYBIND = 16;


	public static const short FUNCFLAG_FDEFAULTBIND = 32;


	public static const short FUNCFLAG_FHIDDEN = 64;


	public static const short FUNCFLAG_FUSESGETLASTERROR = 128;


	public static const short FUNCFLAG_FDEFAULTCOLLELEM = 256;


	public static const short FUNCFLAG_FUIDEFAULT = 512;


	public static const short FUNCFLAG_FNONBROWSABLE = 1024;


	public static const short FUNCFLAG_FREPLACEABLE = 2048;


	public static const short FUNCFLAG_FIMMEDIATEBIND = 4096;


	public static const int CC_FASTCALL = 0;


	public static const int CC_CDECL = 1;


	public static const int CC_MSCPASCAL = 2;


	public static const int CC_PASCAL = 2;


	public static const int CC_MACPASCAL = 3;


	public static const int CC_STDCALL = 4;


	public static const int CC_FPFASTCALL = 5;


	public static const int CC_SYSCALL = 6;


	public static const int CC_MPWCDECL = 7;


	public static const int CC_MPWPASCAL = 8;


	public static const int CC_MAX = 9;


	static const String ERROR_NOT_IMPLEMENTED_MSG = "Required functionality not currently supported.";

	static const String ERROR_CANNOT_CREATE_FILE_MSG = "Failed to create file.";

	static const String ERROR_CANNOT_CREATE_OBJECT_MSG = "Failed to create Ole Client.";

	static const String ERROR_CANNOT_OPEN_FILE_MSG = "File does not exist, is not accessible to user or does not have the correct format.";

	static const String ERROR_INTERFACE_NOT_FOUND_MSG = "Failed to find requested interface on OLE Object.";

	static const String ERROR_INVALID_CLASSID_MSG = "Class ID not found in registry";

	static const String ERROR_CANNOT_ACCESS_CLASSFACTORY_MSG = "Failed to get the class factory for the specified classID";

	static const String ERROR_CANNOT_CREATE_LICENSED_OBJECT_MSG = "Failed to create Licensed instance";

	static const String ERROR_OUT_OF_MEMORY_MSG = "Out of Memory";

	static const String ERROR_CANNOT_CHANGE_VARIANT_TYPE_MSG = "Failed to change Variant type";

	static const String ERROR_INVALID_INTERFACE_ADDRESS_MSG = "Invalid address received for Ole Interface.";

	static const String ERROR_APPLICATION_NOT_FOUND_MSG = "Unable to find Application.";

	static const String ERROR_ACTION_NOT_PERFORMED_MSG = "Action can not be performed.";

	public static void error(String file, long line, int code);

	public static void error(int code);

	public static void error(String file, long line, int code, int hresult);

	public static void error(int code, int hresult);

	public static String findProgramID(String extension);

	static String getKeyValue(StringT key);
	private static bool getKeyExists(StringT key);

	public static bool isOleFile(File file);

}

