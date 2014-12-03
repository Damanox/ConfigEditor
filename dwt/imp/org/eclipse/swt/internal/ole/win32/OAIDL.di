// D import file generated from 'org\eclipse\swt\internal\ole\win32\OAIDL.d'
module org.eclipse.swt.internal.ole.win32.OAIDL;
private import org.eclipse.swt.internal.ole.win32.OBJIDL;

private import org.eclipse.swt.internal.ole.win32.COMTYPES;

private import org.eclipse.swt.internal.ole.win32.extras;

private import org.eclipse.swt.internal.win32.WINTYPES;

private import org.eclipse.swt.ole.win32.Variant;

extern (Windows) 
{
	struct DECIMAL
	{
		USHORT wReserved;
		BYTE scale;
		BYTE sign;
		ULONG Hi32;
		ulong Lo64;
	}
	alias wchar* BSTR;
	struct FLAGGED_WORD_BLOB
	{
		ULONG fFlags;
		ULONG clSize;
		ushort[1] asData;
	}
	alias FLAGGED_WORD_BLOB* wireBSTR;
	struct BYTE_SIZEDARR
	{
		ULONG clSize;
		byte* pData;
	}
	struct WORD_SIZEDARR
	{
		ULONG clSize;
		ushort* pData;
	}
	struct DWORD_SIZEDARR
	{
		ULONG clSize;
		ULONG* pData;
	}
	struct HYPER_SIZEDARR
	{
		ULONG clSize;
		long* pData;
	}
	enum 
	{
		VT_EMPTY = 0,
		VT_NULL = 1,
		VT_I2 = 2,
		VT_I4 = 3,
		VT_R4 = 4,
		VT_R8 = 5,
		VT_CY = 6,
		VT_DATE = 7,
		VT_BSTR = 8,
		VT_DISPATCH = 9,
		VT_ERROR = 10,
		VT_BOOL = 11,
		VT_VARIANT = 12,
		VT_UNKNOWN = 13,
		VT_DECIMAL = 14,
		VT_I1 = 16,
		VT_UI1 = 17,
		VT_UI2 = 18,
		VT_UI4 = 19,
		VT_I8 = 20,
		VT_UI8 = 21,
		VT_INT = 22,
		VT_UINT = 23,
		VT_VOID = 24,
		VT_HRESULT = 25,
		VT_PTR = 26,
		VT_SAFEARRAY = 27,
		VT_CARRAY = 28,
		VT_USERDEFINED = 29,
		VT_LPSTR = 30,
		VT_LPWSTR = 31,
		VT_RECORD = 36,
		VT_FILETIME = 64,
		VT_BLOB = 65,
		VT_STREAM = 66,
		VT_STORAGE = 67,
		VT_STREAMED_OBJECT = 68,
		VT_STORED_OBJECT = 69,
		VT_BLOB_OBJECT = 70,
		VT_CF = 71,
		VT_CLSID = 72,
		VT_BSTR_BLOB = 4095,
		VT_VECTOR = 4096,
		VT_ARRAY = 8192,
		VT_BYREF = 16384,
		VT_RESERVED = 32768,
		VT_ILLEGAL = 65535,
		VT_ILLEGALMASKED = 4095,
		VT_TYPEMASK = 4095,
	}
	struct SAFEARRAYBOUND
	{
		ULONG cElements;
		LONG lLbound;
	}
	alias SAFEARRAYBOUND* LPSAFEARRAYBOUND;
	struct _wireVARIANT
	{
	}
	struct _wireBRECORD
	{
	}
	alias _wireVARIANT* wireVARIANT;
	alias _wireBRECORD* wireBRECORD;
	struct SAFEARR_BSTR
	{
		ULONG Size;
		wireBSTR* aBstr;
	}
	struct SAFEARR_UNKNOWN
	{
		ULONG Size;
		IUnknown* apUnknown;
	}
	struct SAFEARR_DISPATCH
	{
		ULONG Size;
		IDispatch* apDispatch;
	}
	struct SAFEARR_VARIANT
	{
		ULONG Size;
		wireVARIANT* aVariant;
	}
	struct SAFEARR_BRECORD
	{
		ULONG Size;
		wireBRECORD* aRecord;
	}
	struct SAFEARR_HAVEIID
	{
		ULONG Size;
		IUnknown* apUnknown;
		IID iid;
	}
	enum SF_TYPE 
	{
		SF_ERROR = VT_ERROR,
		SF_I1 = VT_I1,
		SF_I2 = VT_I2,
		SF_I4 = VT_I4,
		SF_I8 = VT_I8,
		SF_BSTR = VT_BSTR,
		SF_UNKNOWN = VT_UNKNOWN,
		SF_DISPATCH = VT_DISPATCH,
		SF_VARIANT = VT_VARIANT,
		SF_RECORD = VT_RECORD,
		SF_HAVEIID = VT_UNKNOWN | VT_RESERVED,
	}
	union uSAFEARRAY_UNION
	{
		SAFEARR_BSTR BstrStr;
		SAFEARR_UNKNOWN UnknownStr;
		SAFEARR_DISPATCH DispatchStr;
		SAFEARR_VARIANT VariantStr;
		SAFEARR_BRECORD RecordStr;
		SAFEARR_HAVEIID HaveIidStr;
		BYTE_SIZEDARR ByteStr;
		WORD_SIZEDARR WordStr;
		DWORD_SIZEDARR LongStr;
		HYPER_SIZEDARR HyperStr;
	}
	struct SAFEARRAY_UNION
	{
		ULONG sfType;
		uSAFEARRAY_UNION u;
	}
	alias SAFEARRAY_UNION SAFEARRAYUNION;
	struct wireSAFEARRAY
	{
		USHORT cDims;
		USHORT fFeatures;
		ULONG cbElements;
		ULONG cLocks;
		SAFEARRAYUNION uArrayStructs;
		SAFEARRAYBOUND[1] rgsabound;
	}
	alias wireSAFEARRAY SAFEARRAY;
	alias wireSAFEARRAY* wirePSAFEARRAY;
	struct tagSAFEARRAY
	{
		USHORT cDims;
		USHORT fFeatures;
		ULONG cbElements;
		ULONG cLocks;
		PVOID pvData;
		SAFEARRAYBOUND[1] rgsabound;
	}
	alias SAFEARRAY* LPSAFEARRAY;
	const USHORT FADF_AUTO = 1;

	const USHORT FADF_STATIC = 2;

	const USHORT FADF_EMBEDDED = 4;

	const USHORT FADF_FIXEDSIZE = 16;

	const USHORT FADF_RECORD = 32;

	const USHORT FADF_HAVEIID = 64;

	const USHORT FADF_HAVEVARTYPE = 128;

	const USHORT FADF_BSTR = 256;

	const USHORT FADF_UNKNOWN = 512;

	const USHORT FADF_DISPATCH = 1024;

	const USHORT FADF_VARIANT = 2048;

	const USHORT FADF_RESERVED = 61448;

	struct brecVal_t
	{
		PVOID pvRecord;
		IUnknown* pRecInfo;
	}
	alias double DOUBLE;
	alias double DATE;
	alias VARIANT_BOOL _VARIANT_BOOL;
	alias long CY;
	union n3_t
	{
		LONG lVal;
		BYTE bVal;
		SHORT iVal;
		FLOAT fltVal;
		DOUBLE dblVal;
		VARIANT_BOOL boolVal;
		_VARIANT_BOOL BOOLval;
		SCODE scode;
		CY cyVal;
		DATE date;
		BSTR bstrVal;
		IUnknown punkVal;
		IDispatch pdispVal;
		SAFEARRAY* parray;
		BYTE* pbVal;
		SHORT* piVal;
		LONG* plVal;
		FLOAT* pfltVal;
		DOUBLE* pdblVal;
		VARIANT_BOOL* pboolVal;
		_VARIANT_BOOL* pbool;
		SCODE* pscode;
		CY* pcyVal;
		DATE* pdate;
		BSTR* pbstrVal;
		IUnknown* ppunkVal;
		IDispatch* ppdispVal;
		SAFEARRAY** pparray;
		VARIANT* pvarVal;
		PVOID byref;
		CHAR cVal;
		USHORT uiVal;
		ULONG ulVal;
		INT intVal;
		UINT uintVal;
		DECIMAL* pdecVal;
		CHAR* pcVal;
		USHORT* puiVal;
		ULONG* pulVal;
		INT* pintVal;
		UINT* puintVal;
		brecVal_t brecVal;
	}
	struct n2_t
	{
		VARTYPE vt;
		WORD wReserved1;
		WORD wReserved2;
		WORD wReserved3;
		n3_t n3;
	}
	union n1_t
	{
		n2_t n2;
		DECIMAL decVal;
	}
	alias VARIANT* LPVARIANT;
	alias VARIANT VARIANTARG;
	alias VARIANT* LPVARIANTARG;
	alias LONG DISPID;
	alias DISPID MEMBERID;
	alias DWORD HREFTYPE;
	enum TYPEKIND 
	{
		TKIND_ENUM = 0,
		TKIND_RECORD,
		TKIND_MODULE,
		TKIND_INTERFACE,
		TKIND_DISPATCH,
		TKIND_COCLASS,
		TKIND_ALIAS,
		TKIND_UNION,
		TKIND_MAX,
	}
	union TD_00
	{
		TYPEDESC* lptdesc;
		ARRAYDESC* lpadesc;
		HREFTYPE hreftype;
	}
	struct TYPEDESC
	{
		TD_00 u;
		VARTYPE vt;
	}
	struct ARRAYDESC
	{
		TYPEDESC tdescElem;
		USHORT cDims;
		SAFEARRAYBOUND[1] rgbounds;
	}
	struct PARAMDESCEX
	{
		ULONG cBytes;
		VARIANTARG varDefaultValue;
	}
	alias PARAMDESCEX* LPPARAMDESCEX;
	struct PARAMDESC
	{
		LPPARAMDESCEX pparamdescex;
		USHORT wParamFlags;
	}
	alias PARAMDESC* LPPARAMDESC;
	const USHORT PARAMFLAG_NONE = 0;

	const USHORT PARAMFLAG_FIN = 1;

	const USHORT PARAMFLAG_FOUT = 2;

	const USHORT PARAMFLAG_FLCID = 4;

	const USHORT PARAMFLAG_FRETVAL = 8;

	const USHORT PARAMFLAG_FOPT = 16;

	const USHORT PARAMFLAG_FHASDEFAULT = 32;

	const USHORT PARAMFLAG_FHASCUSTDATA = 64;

	struct IDLDESC
	{
		ULONG dwReserved;
		USHORT wIDLFlags;
	}
	alias IDLDESC* LPIDLDESC;
	const USHORT IDLFLAG_NONE = PARAMFLAG_NONE;

	const USHORT IDLFLAG_FIN = PARAMFLAG_FIN;

	const USHORT IDLFLAG_FOUT = PARAMFLAG_FOUT;

	const USHORT IDLFLAG_FLCID = PARAMFLAG_FLCID;

	const USHORT IDLFLAG_FRETVAL = PARAMFLAG_FRETVAL;

	struct ELEMDESC
	{
		TYPEDESC tdesc;
		PARAMDESC paramdesc;
	}
	struct TYPEATTR
	{
		GUID guid;
		LCID lcid;
		DWORD dwReserved;
		MEMBERID memidConstructor;
		MEMBERID memidDestructor;
		LPOLESTR lpstrSchema;
		ULONG cbSizeInstance;
		TYPEKIND typekind;
		WORD cFuncs;
		WORD cVars;
		WORD cImplTypes;
		WORD cbSizeVft;
		WORD cbAlignment;
		WORD wTypeFlags;
		WORD wMajorVerNum;
		WORD wMinorVerNum;
		TYPEDESC tdescAlias;
		IDLDESC idldescType;
	}
	alias TYPEATTR* LPTYPEATTR;
	struct DISPPARAMS
	{
		VARIANTARG* rgvarg;
		DISPID* rgdispidNamedArgs;
		UINT cArgs;
		UINT cNamedArgs;
	}
	struct EXCEPINFO
	{
		WORD wCode;
		WORD wReserved;
		BSTR bstrSource;
		BSTR bstrDescription;
		BSTR bstrHelpFile;
		DWORD dwHelpContext;
		ULONG pvReserved;
		ULONG pfnDeferredFillIn;
		SCODE scode;
	}
	enum CALLCONV 
	{
		CC_FASTCALL = 0,
		CC_CDECL = 1,
		CC_MSCPASCAL,
		CC_PASCAL = CC_MSCPASCAL,
		CC_MACPASCAL,
		CC_STDCALL,
		CC_FPFASTCALL,
		CC_SYSCALL,
		CC_MPWCDECL,
		CC_MPWPASCAL,
		CC_MAX,
	}
	enum FUNCKIND 
	{
		FUNC_VIRTUAL,
		FUNC_PUREVIRTUAL,
		FUNC_NONVIRTUAL,
		FUNC_STATIC,
		FUNC_DISPATCH,
	}
	enum INVOKEKIND 
	{
		INVOKE_FUNC = 1,
		INVOKE_PROPERTYGET = 2,
		INVOKE_PROPERTYPUT = 4,
		INVOKE_PROPERTYPUTREF = 8,
	}
	struct FUNCDESC
	{
		MEMBERID memid;
		SCODE* lprgscode;
		ELEMDESC* lprgelemdescParam;
		FUNCKIND funckind;
		INVOKEKIND invkind;
		CALLCONV callconv;
		SHORT cParams;
		SHORT cParamsOpt;
		SHORT oVft;
		SHORT cScodes;
		ELEMDESC elemdescFunc;
		WORD wFuncFlags;
	}
	alias FUNCDESC* LPFUNCDESC;
	enum VARKIND 
	{
		VAR_PERINSTANCE,
		VAR_STATIC,
		VAR_CONST,
		VAR_DISPATCH,
	}
	const USHORT IMPLTYPEFLAG_FDEFAULT = 1;

	const USHORT IMPLTYPEFLAG_FSOURCE = 2;

	const USHORT IMPLTYPEFLAG_FRESTRICTED = 4;

	const USHORT IMPLTYPEFLAG_FDEFAULTVTABLE = 8;

	union VD_u
	{
		ULONG oInst;
		VARIANT* lpvarValue;
	}
	struct VARDESC
	{
		MEMBERID memid;
		LPOLESTR lpstrSchema;
		VD_u u;
		ELEMDESC elemdescVar;
		WORD wVarFlags;
		VARKIND varkind;
	}
	alias VARDESC* LPVARDESC;
	enum TYPEFLAGS 
	{
		TYPEFLAG_FAPPOBJECT = 1,
		TYPEFLAG_FCANCREATE = 2,
		TYPEFLAG_FLICENSED = 4,
		TYPEFLAG_FPREDECLID = 8,
		TYPEFLAG_FHIDDEN = 16,
		TYPEFLAG_FCONTROL = 32,
		TYPEFLAG_FDUAL = 64,
		TYPEFLAG_FNONEXTENSIBLE = 128,
		TYPEFLAG_FOLEAUTOMATION = 256,
		TYPEFLAG_FRESTRICTED = 512,
		TYPEFLAG_FAGGREGATABLE = 1024,
		TYPEFLAG_FREPLACEABLE = 2048,
		TYPEFLAG_FDISPATCHABLE = 4096,
		TYPEFLAG_FREVERSEBIND = 8192,
	}
	enum FUNCFLAGS 
	{
		FUNCFLAG_FRESTRICTED = 1,
		FUNCFLAG_FSOURCE = 2,
		FUNCFLAG_FBINDABLE = 4,
		FUNCFLAG_FREQUESTEDIT = 8,
		FUNCFLAG_FDISPLAYBIND = 16,
		FUNCFLAG_FDEFAULTBIND = 32,
		FUNCFLAG_FHIDDEN = 64,
		FUNCFLAG_FUSESGETLASTERROR = 128,
		FUNCFLAG_FDEFAULTCOLLELEM = 256,
		FUNCFLAG_FUIDEFAULT = 512,
		FUNCFLAG_FNONBROWSABLE = 1024,
		FUNCFLAG_FREPLACEABLE = 2048,
		FUNCFLAG_FIMMEDIATEBIND = 4096,
	}
	enum VARFLAGS 
	{
		VARFLAG_FREADONLY = 1,
		VARFLAG_FSOURCE = 2,
		VARFLAG_FBINDABLE = 4,
		VARFLAG_FREQUESTEDIT = 8,
		VARFLAG_FDISPLAYBIND = 16,
		VARFLAG_FDEFAULTBIND = 32,
		VARFLAG_FHIDDEN = 64,
		VARFLAG_FRESTRICTED = 128,
		VARFLAG_FDEFAULTCOLLELEM = 256,
		VARFLAG_FUIDEFAULT = 512,
		VARFLAG_FNONBROWSABLE = 1024,
		VARFLAG_FREPLACEABLE = 2048,
		VARFLAG_FIMMEDIATEBIND = 4096,
	}
	struct CLEANLOCALSTORAGE
	{
		IUnknown pInterface;
		PVOID pStorage;
		DWORD flags;
	}
	struct CUSTDATAITEM
	{
		GUID guid;
		VARIANTARG varValue;
	}
	alias CUSTDATAITEM* LPCUSTDATAITEM;
	struct CUSTDATA
	{
		DWORD cCustData;
		LPCUSTDATAITEM prgCustData;
	}
	alias CUSTDATA* LPCUSTDATA;
	interface ICreateTypeInfo : IUnknown
	{
		HRESULT SetGuid(REFGUID guid);
		HRESULT SetTypeFlags(UINT uTypeFlags);
		HRESULT SetDocString(LPOLESTR pStrDoc);
		HRESULT SetHelpContext(DWORD dwHelpContext);
		HRESULT SetVersion(WORD wMajorVerNum, WORD wMinorVerNum);
		HRESULT AddRefTypeInfo(ITypeInfo pTInfo, HREFTYPE* phRefType);
		HRESULT AddFuncDesc(UINT index, FUNCDESC* pFuncDesc);
		HRESULT AddImplType(UINT index, HREFTYPE hRefType);
		HRESULT SetImplTypeFlags(UINT index, INT implTypeFlags);
		HRESULT SetAlignment(WORD cbAlignment);
		HRESULT SetSchema(LPOLESTR pStrSchema);
		HRESULT AddVarDesc(UINT index, VARDESC* pVarDesc);
		HRESULT SetFuncAndParamNames(UINT index, LPOLESTR* rgszNames, UINT cNames);
		HRESULT SetVarName(UINT index, LPOLESTR szName);
		HRESULT SetTypeDescAlias(TYPEDESC* pTDescAlias);
		HRESULT DefineFuncAsDllEntry(UINT index, LPOLESTR szDllName, LPOLESTR szProcName);
		HRESULT SetFuncDocString(UINT index, LPOLESTR szDocString);
		HRESULT SetVarDocString(UINT index, LPOLESTR szDocString);
		HRESULT SetFuncHelpContext(UINT index, DWORD dwHelpContext);
		HRESULT SetVarHelpContext(UINT index, DWORD dwHelpContext);
		HRESULT SetMops(UINT index, BSTR bstrMops);
		HRESULT SetTypeIdldesc(IDLDESC* pIdlDesc);
		HRESULT LayOut();
	}
	alias ICreateTypeInfo LPCREATETYPEINFO;
	interface ICreateTypeInfo2 : ICreateTypeInfo
	{
		HRESULT DeleteFuncDesc(UINT index);
		HRESULT DeleteFuncDescByMemId(MEMBERID memid, INVOKEKIND invKind);
		HRESULT DeleteVarDesc(UINT index);
		HRESULT DeleteVarDescByMemId(MEMBERID memid);
		HRESULT DeleteImplType(UINT index);
		HRESULT SetCustData(REFGUID guid, VARIANT* pVarVal);
		HRESULT SetFuncCustData(UINT index, REFGUID guid, VARIANT* pVarVal);
		HRESULT SetParamCustData(UINT indexFunc, UINT indexParam, REFGUID guid, VARIANT* pVarVal);
		HRESULT SetVarCustData(UINT index, REFGUID guid, VARIANT* pVarVal);
		HRESULT SetImplTypeCustData(UINT index, REFGUID guid, VARIANT* pVarVal);
		HRESULT SetHelpStringContext(ULONG dwHelpStringContext);
		HRESULT SetFuncHelpStringContext(UINT index, ULONG dwHelpStringContext);
		HRESULT SetVarHelpStringContext(UINT index, ULONG dwHelpStringContext);
		HRESULT Invalidate();
		HRESULT SetName(LPOLESTR szName);
	}
	alias ICreateTypeInfo2 LPCREATETYPEINFO2;
	interface ICreateTypeLib : IUnknown
	{
		HRESULT CreateTypeInfo(LPOLESTR szName, TYPEKIND tkind, ICreateTypeInfo* ppCTInfo);
		HRESULT SetName(LPOLESTR szName);
		HRESULT SetVersion(WORD wMajorVerNum, WORD wMinorVerNum);
		HRESULT SetGuid(REFGUID guid);
		HRESULT SetDocString(LPOLESTR szDoc);
		HRESULT SetHelpFileName(LPOLESTR szHelpFileName);
		HRESULT SetHelpContext(DWORD dwHelpContext);
		HRESULT SetLcid(LCID lcid);
		HRESULT SetLibFlags(UINT uLibFlags);
		HRESULT SaveAllChanges();
	}
	alias ICreateTypeLib LPCREATETYPELIB;
	interface ICreateTypeLib2 : ICreateTypeLib
	{
		HRESULT DeleteTypeInfo(LPOLESTR szName);
		HRESULT SetCustData(REFGUID guid, VARIANT* pVarVal);
		HRESULT SetHelpStringContext(ULONG dwHelpStringContext);
		HRESULT SetHelpStringDll(LPOLESTR szFileName);
	}
	interface IDispatch : IUnknown
	{
		HRESULT GetTypeInfoCount(UINT* pctinfo);
		HRESULT GetTypeInfo(UINT iTInfo, LCID lcid, ITypeInfo* ppTInfo);
		HRESULT GetIDsOfNames(REFCIID riid, LPCOLESTR* rgszNames, UINT cNames, LCID lcid, DISPID* rgDispId);
		HRESULT Invoke(DISPID dispIdMember, REFIID riid, LCID lcid, WORD wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, UINT* puArgErr);
	}
	alias IDispatch LPDISPATCH;
	const DISPID DISPID_UNKNOWN = cast(DISPID)-1;

	const DISPID DISPID_VALUE = cast(DISPID)0;

	const DISPID DISPID_PROPERTYPUT = cast(DISPID)-3;

	const DISPID DISPID_NEWENUM = cast(DISPID)-4;

	const DISPID DISPID_EVALUATE = cast(DISPID)-5;

	const DISPID DISPID_CONSTRUCTOR = cast(DISPID)-6;

	const DISPID DISPID_DESTRUCTOR = cast(DISPID)-7;

	const DISPID DISPID_COLLECT = cast(DISPID)-8;

	enum DESCKIND 
	{
		DESCKIND_NONE = 0,
		DESCKIND_FUNCDESC,
		DESCKIND_VARDESC,
		DESCKIND_TYPECOMP,
		DESCKIND_IMPLICITAPPOBJ,
		DESCKIND_MAX,
	}
	union BINDPTR
	{
		FUNCDESC* lpfuncdesc;
		VARDESC* lpvardesc;
		ITypeComp lptcomp;
	}
	alias BINDPTR* LPBINDPTR;
	interface ITypeComp : IUnknown
	{
		HRESULT Bind(LPOLESTR szName, ULONG lHashVal, WORD wFlags, ITypeInfo* ppTInfo, DESCKIND* pDescKind, BINDPTR* pBindPtr);
		HRESULT BindType(LPOLESTR szName, ULONG lHashVal, ITypeInfo* ppTInfo, ITypeComp* ppTComp);
	}
	interface ITypeInfo : IUnknown
	{
		HRESULT GetTypeAttr(TYPEATTR** ppTypeAttr);
		HRESULT GetTypeComp(ITypeComp* ppTComp);
		HRESULT GetFuncDesc(UINT index, FUNCDESC** ppFuncDesc);
		HRESULT GetVarDesc(UINT index, VARDESC** ppVarDesc);
		HRESULT GetNames(MEMBERID memid, BSTR* rgBstrNames, UINT cMaxNames, UINT* pcNames);
		HRESULT GetRefTypeOfImplType(UINT index, HREFTYPE* pRefType);
		HRESULT GetImplTypeFlags(UINT index, INT* pImplTypeFlags);
		HRESULT GetIDsOfNames(LPOLESTR* rgszNames, UINT cNames, MEMBERID* pMemId);
		HRESULT Invoke(PVOID pvInstance, MEMBERID memid, WORD wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, UINT* puArgErr);
		HRESULT GetDocumentation(MEMBERID memid, BSTR* pBstrName, BSTR* pBstrDocString, DWORD* pdwHelpContext, BSTR* pBstrHelpFile);
		HRESULT GetDllEntry(MEMBERID memid, INVOKEKIND invKind, BSTR* pBstrDllName, BSTR* pBstrName, WORD* pwOrdinal);
		HRESULT GetRefTypeInfo(HREFTYPE hRefType, ITypeInfo* ppTInfo);
		HRESULT AddressOfMember(MEMBERID memid, INVOKEKIND invKind, PVOID* ppv);
		HRESULT CreateInstance(IUnknown pUnkOuter, REFIID riid, PVOID* ppvObj);
		HRESULT GetMops(MEMBERID memid, BSTR* pBstrMops);
		HRESULT GetContainingTypeLib(ITypeLib** ppTLib, UINT* pIndex);
		void ReleaseTypeAttr(TYPEATTR* pTypeAttr);
		void ReleaseFuncDesc(FUNCDESC* pFuncDesc);
		void ReleaseVarDesc(VARDESC* pVarDesc);
	}
	alias ITypeInfo LPTYPEINFO;
	interface ITypeInfo2 : ITypeInfo
	{
		HRESULT GetTypeKind(TYPEKIND* pTypeKind);
		HRESULT GetTypeFlags(ULONG* pTypeFlags);
		HRESULT GetFuncIndexOfMemId(MEMBERID memid, INVOKEKIND invKind, UINT* pFuncIndex);
		HRESULT GetVarIndexOfMemId(MEMBERID memid, UINT* pVarIndex);
		HRESULT GetCustData(REFGUID guid, VARIANT* pVarVal);
		HRESULT GetFuncCustData(UINT index, REFGUID guid, VARIANT* pVarVal);
		HRESULT GetParamCustData(UINT indexFunc, UINT indexParam, REFGUID guid, VARIANT* pVarVal);
		HRESULT GetVarCustData(UINT index, REFGUID guid, VARIANT* pVarVal);
		HRESULT GetImplTypeCustData(UINT index, REFGUID guid, VARIANT* pVarVal);
		HRESULT GetDocumentation2(MEMBERID memid, LCID lcid, BSTR* pbstrHelpString, DWORD* pdwHelpStringContext, BSTR* pbstrHelpStringDll);
		HRESULT GetAllCustData(CUSTDATA* pCustData);
		HRESULT GetAllFuncCustData(UINT index, CUSTDATA* pCustData);
		HRESULT GetAllParamCustData(UINT indexFunc, UINT indexParam, CUSTDATA* pCustData);
		HRESULT GetAllVarCustData(UINT index, CUSTDATA* pCustData);
		HRESULT GetAllImplTypeCustData(UINT index, CUSTDATA* pCustData);
	}
	alias ITypeInfo2 LPTYPEINFO2;
	enum SYSKIND 
	{
		SYS_WIN16 = 0,
		SYS_WIN32,
		SYS_MAC,
	}
	enum LIBFLAGS 
	{
		LIBFLAG_FRESTRICTED = 1,
		LIBFLAG_FCONTROL = 2,
		LIBFLAG_FHIDDEN = 4,
		LIBFLAG_FHASDISKIMAGE = 8,
	}
	struct TLIBATTR
	{
		GUID guid;
		LCID lcid;
		SYSKIND syskind;
		WORD wMajorVerNum;
		WORD wMinorVerNum;
		WORD wLibFlags;
	}
	alias TLIBATTR* LPTLIBATTR;
	interface ITypeLib : IUnknown
	{
		UINT GetTypeInfoCount();
		HRESULT GetTypeInfo(UINT index, ITypeInfo* ppTInfo);
		HRESULT GetTypeInfoType(UINT index, TYPEKIND* pTKind);
		HRESULT GetTypeInfoOfGuid(REFGUID guid, ITypeInfo* ppTinfo);
		HRESULT GetLibAttr(TLIBATTR** ppTLibAttr);
		HRESULT GetTypeComp(ITypeComp* ppTComp);
		HRESULT GetDocumentation(INT index, BSTR* pBstrName, BSTR* pBstrDocString, DWORD* pdwHelpContext, BSTR* pBstrHelpFile);
		HRESULT IsName(LPOLESTR szNameBuf, ULONG lHashVal, BOOL* pfName);
		HRESULT FindName(LPOLESTR szNameBuf, ULONG lHashVal, ITypeInfo* ppTInfo, MEMBERID* rgMemId, USHORT* pcFound);
		void ReleaseTLibAttr(TLIBATTR* pTLibAttr);
	}
	alias ITypeLib LPTYPELIB;
	interface ITypeLib2 : ITypeLib
	{
		HRESULT GetCustData(REFGUID guid, VARIANT* pVarVal);
		HRESULT GetLibStatistics(ULONG* pcUniqueNames, ULONG* pcchUniqueNames);
		HRESULT GetDocumentation2(INT index, LCID lcid, BSTR* pbstrHelpString, DWORD* pdwHelpStringContext, BSTR* pbstrHelpStringDll);
		HRESULT GetAllCustData(CUSTDATA* pCustData);
	}
	alias ITypeLib2 LPTYPELIB2;
	enum CHANGEKIND 
	{
		CHANGEKIND_ADDMEMBER,
		CHANGEKIND_DELETEMEMBER,
		CHANGEKIND_SETNAMES,
		CHANGEKIND_SETDOCUMENTATION,
		CHANGEKIND_GENERAL,
		CHANGEKIND_INVALIDATE,
		CHANGEKIND_CHANGEFAILED,
		CHANGEKIND_MAX,
		ADDMEMBER = CHANGEKIND_ADDMEMBER,
		DELETEMEMBER = CHANGEKIND_DELETEMEMBER,
		SETNAMES = CHANGEKIND_SETNAMES,
		SETDOCUMENTATION = CHANGEKIND_SETDOCUMENTATION,
		GENERAL = CHANGEKIND_GENERAL,
		INVALIDATE = CHANGEKIND_INVALIDATE,
		CHANGEFAILED = CHANGEKIND_CHANGEFAILED,
		MAX = CHANGEKIND_MAX,
	}
	interface ITypeChangeEvents : IUnknown
	{
		HRESULT RequestTypeChange(CHANGEKIND changeKind, ITypeInfo pTInfoBefore, LPOLESTR pStrName, INT* pfCancel);
		HRESULT AfterTypeChange(CHANGEKIND changeKind, ITypeInfo pTInfoAfter, LPOLESTR pStrName);
	}
	alias ITypeChangeEvents LPTYPECHANGEEVENTS;
	interface IErrorInfo : IUnknown
	{
		HRESULT GetGUID(GUID* pGUID);
		HRESULT GetSource(BSTR* pBstrSource);
		HRESULT GetDescription(BSTR* pBstrDescription);
		HRESULT GetHelpFile(BSTR* pBstrHelpFile);
		HRESULT GetHelpContext(DWORD* pdwHelpContext);
	}
	alias IErrorInfo LPERRORINFO;
	interface ICreateErrorInfo : IUnknown
	{
		HRESULT SetGUID(REFGUID rguid);
		HRESULT SetSource(LPOLESTR szSource);
		HRESULT SetDescription(LPOLESTR szDescription);
		HRESULT SetHelpFile(LPOLESTR szHelpFile);
		HRESULT SetHelpContext(DWORD dwHelpContext);
	}
	alias ICreateErrorInfo LPCREATEERRORINFO;
	interface ISupportErrorInfo : IUnknown
	{
		HRESULT InterfaceSupportsErrorInfo(REFIID riid);
	}
	alias ISupportErrorInfo LPSUPPORTERRORINFO;
	interface ITypeFactory : IUnknown
	{
		HRESULT CreateFromTypeInfo(ITypeInfo pTypeInfo, REFIID riid, IUnknown* ppv);
	}
	interface ITypeMarshal : IUnknown
	{
		HRESULT Size(PVOID pvType, DWORD dwDestContext, PVOID pvDestContext, ULONG* pSize);
		HRESULT Marshal(PVOID pvType, DWORD dwDestContext, PVOID pvDestContext, ULONG cbBufferLength, BYTE* pBuffer, ULONG* pcbWritten);
		HRESULT Unmarshal(PVOID pvType, DWORD dwFlags, ULONG cbBufferLength, BYTE* pBuffer, ULONG* pcbRead);
		HRESULT Free(PVOID pvType);
	}
	interface IRecordInfo : IUnknown
	{
		HRESULT RecordInit(PVOID pvNew);
		HRESULT RecordClear(PVOID pvExisting);
		HRESULT RecordCopy(PVOID pvExisting, PVOID pvNew);
		HRESULT GetGuid(GUID* pguid);
		HRESULT GetName(BSTR* pbstrName);
		HRESULT GetSize(ULONG* pcbSize);
		HRESULT GetTypeInfo(ITypeInfo* ppTypeInfo);
		HRESULT GetField(PVOID pvData, LPCOLESTR szFieldName, VARIANT* pvarField);
		HRESULT GetFieldNoCopy(PVOID pvData, LPCOLESTR szFieldName, VARIANT* pvarField, PVOID* ppvDataCArray);
		HRESULT PutField(ULONG wFlags, PVOID pvData, LPCOLESTR szFieldName, VARIANT* pvarField);
		HRESULT PutFieldNoCopy(ULONG wFlags, PVOID pvData, LPCOLESTR szFieldName, VARIANT* pvarField);
		HRESULT GetFieldNames(ULONG* pcNames, BSTR* rgBstrNames);
		BOOL IsMatchingType(IRecordInfo pRecordInfo);
		PVOID RecordCreate();
		HRESULT RecordCreateCopy(PVOID pvSource, PVOID* ppvDest);
		HRESULT RecordDestroy(PVOID pvRecord);
	}
	alias IRecordInfo LPRECORDINFO;
}
