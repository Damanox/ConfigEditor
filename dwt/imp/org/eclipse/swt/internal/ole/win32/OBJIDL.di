// D import file generated from 'org\eclipse\swt\internal\ole\win32\OBJIDL.d'
module org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.win32.WINTYPES;
import org.eclipse.swt.internal.ole.win32.COMTYPES;
extern (Windows) 
{
	enum SRVINFO 
	{
		SRVINFO_F_COSERVERINFO = 0,
		SRVINFO_F_COSERVERINFO2 = 1,
	}
	struct COSERVERINFO
	{
		DWORD dwReserved1;
		LPWSTR pwszName;
		COAUTHINFO* pAuthInfo;
		DWORD dwReserved2;
	}
	struct COSERVERINFO2
	{
		DWORD dwFlags;
		LPWSTR pwszName;
		COAUTHINFO* pAuthInfo;
		IUnknown* ppCall;
		LPWSTR pwszCodeURL;
		DWORD dwFileVersionMS;
		DWORD dwFileVersionLS;
		LPWSTR pwszContentType;
	}
	interface IMarshal : IUnknown
	{
		HRESULT GetUnmarshalClass(REFIID riid, void* pv, DWORD dwDestContext, void* pvDestContext, DWORD mshlflags, CLSID* pCid);
		HRESULT GetMarshalSizeMax(REFIID riid, void* pv, DWORD dwDestContext, void* pvDestContext, DWORD mshlflags, DWORD* pSize);
		HRESULT MarshalInterface(IStream pStm, REFIID riid, void* pv, DWORD dwDestContext, void* pvDestContext, DWORD mshlflags);
		HRESULT UnmarshalInterface(IStream pStm, REFIID riid, void** ppv);
		HRESULT ReleaseMarshalData(IStream pStm);
		HRESULT DisconnectObject(DWORD dwReserved);
	}
	alias IMarshal LPMARSHAL;
	interface IMalloc : IUnknown
	{
		void* Alloc(ULONG cb);
		void* Realloc(void* pv, ULONG cb);
		void Free(void* pv);
		ULONG GetSize(void* pv);
		int DidAlloc(void* pv);
		void HeapMinimize();
	}
	alias IMalloc LPMALLOC;
	interface IMallocSpy : IUnknown
	{
		ULONG PreAlloc(ULONG cbRequest);
		void* PostAlloc(void* pActual);
		void* PreFree(void* pRequest, BOOL fSpyed);
		void PostFree(BOOL fSpyed);
		ULONG PreRealloc(void* pRequest, ULONG cbRequest, void** ppNewRequest, BOOL fSpyed);
		void* PostRealloc(void* pActual, BOOL fSpyed);
		void* PreGetSize(void* pRequest, BOOL fSpyed);
		ULONG PostGetSize(ULONG cbActual, BOOL fSpyed);
		void* PreDidAlloc(void* pRequest, BOOL fSpyed);
		int PostDidAlloc(void* pRequest, BOOL fSpyed, int fActual);
		void PreHeapMinimize();
		void PostHeapMinimize();
	}
	alias IMallocSpy LPMALLOCSPY;
	interface IStdMarshalInfo : IUnknown
	{
		HRESULT GetClassForHandler(DWORD dwDestContext, void* pvDestContext, CLSID* pClsid);
	}
	alias IStdMarshalInfo LPSTDMARSHALINFO;
	enum EXTCONN 
	{
		EXTCONN_STRONG = 1,
		EXTCONN_WEAK = 2,
		EXTCONN_CALLABLE = 4,
	}
	interface IExternalConnection : IUnknown
	{
		DWORD AddConnection(DWORD extconn, DWORD reserved);
		DWORD ReleaseConnection(DWORD extconn, DWORD reserved, BOOL fLastReleaseCloses);
	}
	alias IExternalConnection LPEXTERNALCONNECTION;
	struct MULTI_QI
	{
		const IID* pIID;

		IUnknown pItf;
		HRESULT hr;
	}
	interface IMultiQI : IUnknown
	{
		HRESULT QueryMultipleInterfaces(ULONG cMQIs, MULTI_QI* pMQIs);
	}
	alias IMultiQI LPMULTIQI;
	interface IEnumUnknown : IUnknown
	{
		HRESULT Next(ULONG celt, IUnknown* rgelt, ULONG* pceltFetched);
		HRESULT Skip(ULONG celt);
		HRESULT Reset();
		HRESULT Clone(IEnumUnknown* ppenum);
	}
	alias IEnumUnknown LPENUMUNKNOWN;
	struct BIND_OPTS
	{
		DWORD cbStruct;
		DWORD grfFlags;
		DWORD grfMode;
		DWORD dwTickCountDeadline;
	}
	alias BIND_OPTS* LPBIND_OPTS;
	struct BIND_OPTS2
	{
		DWORD cbStruct;
		DWORD grfFlags;
		DWORD grfMode;
		DWORD dwTickCountDeadline;
		DWORD dwTrackFlags;
		DWORD dwClassContext;
		LCID locale;
		COSERVERINFO* pServerInfo;
	}
	alias BIND_OPTS2* LPBIND_OPTS2;
	enum BIND_FLAGS 
	{
		BIND_MAYBOTHERUSER = 1,
		BIND_JUSTTESTEXISTENCE = 2,
	}
	interface IBindCtx : IUnknown
	{
		HRESULT RegisterObjectBound(IUnknown punk);
		HRESULT RevokeObjectBound(IUnknown punk);
		HRESULT ReleaseBoundObjects();
		HRESULT SetBindOptions(BIND_OPTS* pbindopts);
		HRESULT GetBindOptions(BIND_OPTS* pbindopts);
		HRESULT GetRunningObjectTable(IRunningObjectTable* pprot);
		HRESULT RegisterObjectParam(LPOLESTR pszKey, IUnknown punk);
		HRESULT GetObjectParam(LPOLESTR pszKey, IUnknown* ppunk);
		HRESULT EnumObjectParam(IEnumString* ppenum);
		HRESULT RevokeObjectParam(LPOLESTR pszKey);
	}
	alias IBindCtx LPBC;
	alias IBindCtx LPBINDCTX;
	interface IEnumMoniker : IUnknown
	{
		HRESULT Next(ULONG celt, IMoniker* rgelt, ULONG* pceltFetched);
		HRESULT Skip(ULONG celt);
		HRESULT Reset();
		HRESULT Clone(IEnumMoniker* ppenum);
	}
	alias IEnumMoniker LPENUMMONIKER;
	interface IRunnableObject : IUnknown
	{
		HRESULT GetRunningClass(LPCLSID lpClsid);
		HRESULT Run(LPBINDCTX pbc);
		BOOL IsRunning();
		HRESULT LockRunning(BOOL fLock, BOOL fLastUnlockCloses);
		HRESULT SetContainedObject(BOOL fContained);
	}
	alias IRunnableObject LPRUNNABLEOBJECT;
	interface IRunningObjectTable : IUnknown
	{
		HRESULT Register(DWORD grfFlags, IUnknown punkObject, IMoniker pmkObjectName, DWORD* pdwRegister);
		HRESULT Revoke(DWORD dwRegister);
		HRESULT IsRunning(IMoniker pmkObjectName);
		HRESULT GetObject(IMoniker pmkObjectName, IUnknown* ppunkObject);
		HRESULT NoteChangeTime(DWORD dwRegister, FILETIME* pfiletime);
		HRESULT GetTimeOfLastChange(IMoniker pmkObjectName, FILETIME* pfiletime);
		HRESULT EnumRunning(IEnumMoniker* ppenumMoniker);
	}
	alias IRunningObjectTable LPRUNNINGOBJECTTABLE;
	interface IPersist : IUnknown
	{
		HRESULT GetClassID(CLSID* pClassID);
	}
	alias IPersist LPPERSIST;
	interface IPersistStream : IPersist
	{
		HRESULT IsDirty();
		HRESULT Load(IStream pStm);
		HRESULT Save(IStream pStm, BOOL fClearDirty);
		HRESULT GetSizeMax(ULARGE_INTEGER* pcbSize);
	}
	alias IPersistStream LPPERSISTSTREAM;
	enum MKSYS 
	{
		MKSYS_NONE = 0,
		MKSYS_GENERICCOMPOSITE = 1,
		MKSYS_FILEMONIKER = 2,
		MKSYS_ANTIMONIKER = 3,
		MKSYS_ITEMMONIKER = 4,
		MKSYS_POINTERMONIKER = 5,
		MKSYS_CLASSMONIKER = 7,
	}
	enum MKREDUCE 
	{
		MKRREDUCE_ONE = 3 << 16,
		MKRREDUCE_TOUSER = 2 << 16,
		MKRREDUCE_THROUGHUSER = 1 << 16,
		MKRREDUCE_ALL = 0,
	}
	interface IMoniker : IPersistStream
	{
		HRESULT BindToObject(IBindCtx pbc, IMoniker pmkToLeft, REFIID riidResult, void** ppvResult);
		HRESULT BindToStorage(IBindCtx pbc, IMoniker pmkToLeft, REFIID riid, void* ppvObj);
		HRESULT Reduce(IBindCtx pbc, DWORD dwReduceHowFar, IMoniker* ppmkToLeft, IMoniker* ppmkReduced);
		HRESULT ComposeWith(IMoniker pmkRight, BOOL fOnlyIfNotGeneric, IMoniker* ppmkComposite);
		HRESULT Enum(BOOL fForward, IEnumMoniker* ppenumMoniker);
		HRESULT IsEqual(IMoniker pmkOtherMoniker);
		HRESULT Hash(DWORD* pdwHash);
		HRESULT IsRunning(IBindCtx pbc, IMoniker pmkToLeft, IMoniker pmkNewlyRunning);
		HRESULT GetTimeOfLastChange(IBindCtx pbc, IMoniker pmkToLeft, FILETIME* pFileTime);
		HRESULT Inverse(IMoniker* ppmk);
		HRESULT CommonPrefixWith(IMoniker pmkOther, IMoniker* ppmkPrefix);
		HRESULT RelativePathTo(IMoniker pmkOther, IMoniker* ppmkRelPath);
		HRESULT GetDisplayName(IBindCtx pbc, IMoniker pmkToLeft, LPOLESTR* ppszDisplayName);
		HRESULT ParseDisplayName(IBindCtx pbc, IMoniker pmkToLeft, LPOLESTR pszDisplayName, ULONG* pchEaten, IMoniker* ppmkOut);
		HRESULT IsSystemMoniker(DWORD* pdwMksys);
	}
	alias IMoniker LPMONIKER;
	interface IROTData : IUnknown
	{
		HRESULT GetComparisonData(byte* pbData, ULONG cbMax, ULONG* pcbData);
	}
	interface IEnumString : IUnknown
	{
		HRESULT Next(ULONG celt, LPOLESTR* rgelt, ULONG* pceltFetched);
		HRESULT Skip(ULONG celt);
		HRESULT Reset();
		HRESULT Clone(IEnumString* ppenum);
	}
	alias IEnumString LPENUMSTRING;
	interface ISequentialStream : IUnknown
	{
		HRESULT Read(void* pv, ULONG cb, ULONG* pcbRead);
		HRESULT Write(void* pv, ULONG cb, ULONG* pcbWritten);
	}
	struct STATSTG
	{
		LPOLESTR pwcsName;
		DWORD type;
		ULARGE_INTEGER cbSize;
		FILETIME mtime;
		FILETIME ctime;
		FILETIME atime;
		DWORD grfMode;
		DWORD grfLocksSupported;
		CLSID clsid;
		DWORD grfStateBits;
		DWORD reserved;
	}
	enum STGTY 
	{
		STGTY_STORAGE = 1,
		STGTY_STREAM = 2,
		STGTY_LOCKBYTES = 3,
		STGTY_PROPERTY = 4,
	}
	enum STREAM_SEEK 
	{
		STREAM_SEEK_SET = 0,
		STREAM_SEEK_CUR = 1,
		STREAM_SEEK_END = 2,
	}
	enum LOCKTYPE 
	{
		LOCK_WRITE = 1,
		LOCK_EXCLUSIVE = 2,
		LOCK_ONLYONCE = 4,
	}
	interface IStream : ISequentialStream
	{
		HRESULT Seek(LARGE_INTEGER dlibMove, DWORD dwOrigin, ULARGE_INTEGER* plibNewPosition);
		HRESULT SetSize(ULARGE_INTEGER libNewSize);
		HRESULT CopyTo(IStream pstm, ULARGE_INTEGER cb, ULARGE_INTEGER* pcbRead, ULARGE_INTEGER* pcbWritten);
		HRESULT Commit(DWORD grfCommitFlags);
		HRESULT Revert();
		HRESULT LockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, DWORD dwLockType);
		HRESULT UnlockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, DWORD dwLockType);
		HRESULT Stat(STATSTG* pstatstg, DWORD grfStatFlag);
		HRESULT Clone(IStream* ppstm);
	}
	alias IStream LPSTREAM;
	interface IEnumSTATSTG : IUnknown
	{
		HRESULT Next(ULONG celt, STATSTG* rgelt, ULONG* pceltFetched);
		HRESULT Skip(ULONG celt);
		HRESULT Reset();
		HRESULT Clone(IEnumSTATSTG* ppenum);
	}
	alias IEnumSTATSTG LPENUMSTATSTG;
	struct RemSNB
	{
		ULONG ulCntStr;
		ULONG ulCntChar;
		OLECHAR[] rgString;
	}
	alias RemSNB* wireSNB;
	alias OLECHAR** SNB;
	interface IStorage : IUnknown
	{
		HRESULT CreateStream(LPCOLESTR pwcsName, DWORD grfMode, DWORD reserved1, DWORD reserved2, IStream* ppstm);
		HRESULT OpenStream(LPCOLESTR pwcsName, void* reserved1, DWORD grfMode, DWORD reserved2, IStream* ppstm);
		HRESULT CreateStorage(LPCOLESTR pwcsName, DWORD grfMode, DWORD reserved1, DWORD reserved2, IStorage* ppstg);
		HRESULT OpenStorage(LPCOLESTR pwcsName, IStorage pstgPriority, DWORD grfMode, SNB snbExclude, DWORD reserved, IStorage* ppstg);
		HRESULT CopyTo(DWORD ciidExclude, IID* rgiidExclude, SNB snbExclude, IStorage pstgDest);
		HRESULT MoveElementTo(LPCOLESTR pwcsName, IStorage pstgDest, LPCOLESTR pwcsNewName, DWORD grfFlags);
		HRESULT Commit(DWORD grfCommitFlags);
		HRESULT Revert();
		HRESULT EnumElements(DWORD reserved1, void* reserved2, DWORD reserved3, IEnumSTATSTG* ppenum);
		HRESULT DestroyElement(LPCOLESTR pwcsName);
		HRESULT RenameElement(LPCOLESTR pwcsOldName, LPCOLESTR pwcsNewName);
		HRESULT SetElementTimes(LPCOLESTR pwcsName, FILETIME* pctime, FILETIME* patime, FILETIME* pmtime);
		HRESULT SetClass(REFCLSID clsid);
		HRESULT SetStateBits(DWORD grfStateBits, DWORD grfMask);
		HRESULT Stat(STATSTG* pstatstg, DWORD grfStatFlag);
	}
	alias IStorage LPSTORAGE;
	interface IPersistFile : IPersist
	{
		HRESULT IsDirty();
		HRESULT Load(LPCOLESTR pszFileName, DWORD dwMode);
		HRESULT Save(LPCOLESTR pszFileName, BOOL fRemember);
		HRESULT SaveCompleted(LPCOLESTR pszFileName);
		HRESULT GetCurFile(LPOLESTR* ppszFileName);
	}
	alias IPersistFile LPPERSISTFILE;
	interface IPersistStorage : IPersist
	{
		HRESULT IsDirty();
		HRESULT InitNew(IStorage pStg);
		HRESULT Load(IStorage pStg);
		HRESULT Save(IStorage pStgSave, BOOL fSameAsLoad);
		HRESULT SaveCompleted(IStorage pStgNew);
		HRESULT HandsOffStorage();
	}
	alias IPersistStorage LPPERSISTSTORAGE;
	interface ILockBytes : IUnknown
	{
		HRESULT ReadAt(ULARGE_INTEGER ulOffset, void* pv, ULONG cb, ULONG* pcbRead);
		HRESULT WriteAt(ULARGE_INTEGER ulOffset, void* pv, ULONG cb, ULONG* pcbWritten);
		HRESULT Flush();
		HRESULT SetSize(ULARGE_INTEGER cb);
		HRESULT LockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, DWORD dwLockType);
		HRESULT UnlockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, DWORD dwLockType);
		HRESULT Stat(STATSTG* pstatstg, DWORD grfStatFlag);
	}
	alias ILockBytes LPLOCKBYTES;
	struct DVTARGETDEVICE
	{
		DWORD tdSize;
		WORD tdDriverNameOffset;
		WORD tdDeviceNameOffset;
		WORD tdPortNameOffset;
		WORD tdExtDevmodeOffset;
		BYTE[1] tdData;
	}
	alias CLIPFORMAT LPCLIPFORMAT;
	struct FORMATETC
	{
		CLIPFORMAT cfFormat;
		DVTARGETDEVICE* ptd;
		DWORD dwAspect;
		LONG lindex;
		DWORD tymed;
	}
	alias FORMATETC* LPFORMATETC;
	interface IEnumFORMATETC : IUnknown
	{
		HRESULT Next(ULONG celt, FORMATETC* rgelt, ULONG* pceltFetched);
		HRESULT Skip(ULONG celt);
		HRESULT Reset();
		HRESULT Clone(IEnumFORMATETC* ppenum);
	}
	alias IEnumFORMATETC LPENUMFORMATETC;
	enum ADVF 
	{
		ADVF_NODATA = 1,
		ADVF_PRIMEFIRST = 2,
		ADVF_ONLYONCE = 4,
		ADVF_DATAONSTOP = 64,
		ADVFCACHE_NOHANDLER = 8,
		ADVFCACHE_FORCEBUILTIN = 16,
		ADVFCACHE_ONSAVE = 32,
	}
	struct STATDATA
	{
		FORMATETC formatetc;
		DWORD advf;
		IAdviseSink pAdvSink;
		DWORD dwConnection;
	}
	alias STATDATA* LPSTATDATA;
	interface IEnumSTATDATA : IUnknown
	{
		HRESULT Next(ULONG celt, STATDATA* rgelt, ULONG* pceltFetched);
		HRESULT Skip(ULONG celt);
		HRESULT Reset();
		HRESULT Clone(IEnumSTATDATA* ppenum);
	}
	alias IEnumSTATDATA LPENUMSTATDATA;
	interface IRootStorage : IUnknown
	{
		HRESULT SwitchToFile(LPOLESTR pszFile);
	}
	alias IRootStorage LPROOTSTORAGE;
	enum TYMED 
	{
		TYMED_HGLOBAL = 1,
		TYMED_FILE = 2,
		TYMED_ISTREAM = 4,
		TYMED_ISTORAGE = 8,
		TYMED_GDI = 16,
		TYMED_MFPICT = 32,
		TYMED_ENHMF = 64,
		TYMED_NULL = 0,
	}
	struct RemSTGMEDIUM
	{
		DWORD tymed;
		DWORD dwHandleType;
		ULONG pData;
		ULONG pUnkForRelease;
		ULONG cbData;
		byte[1] data;
	}
	union UNION_u
	{
		HBITMAP hBitmap;
		HMETAFILEPICT hMetaFilePict;
		HENHMETAFILE hEnhMetaFile;
		HGLOBAL hGlobal;
		LPOLESTR lpszFileName;
		IStream pstm;
		IStorage pstg;
	}
	struct uSTGMEDIUM
	{
		DWORD tymed;
		void* unionField;
		IUnknown pUnkForRelease;
	}
	enum 
	{
		OBJ_PEN = 1,
		OBJ_BRUSH = 2,
		OBJ_DC = 3,
		OBJ_METADC = 4,
		OBJ_PAL = 5,
		OBJ_FONT = 6,
		OBJ_BITMAP = 7,
		OBJ_REGION = 8,
		OBJ_METAFILE = 9,
		OBJ_MEMDC = 10,
		OBJ_EXTPEN = 11,
		OBJ_ENHMETADC = 12,
		OBJ_ENHMETAFILE = 13,
	}
	union __MIDL_IAdviseSink_0002
	{
		wireHBITMAP hBitmap;
		wireHPALETTE hPalette;
		wireHGLOBAL hGeneric;
	}
	struct GDI_OBJECT
	{
		DWORD ObjectType;
		__MIDL_IAdviseSink_0002 u;
	}
	union __MIDL_IAdviseSink_0003
	{
		wireHMETAFILEPICT hMetaFilePict;
		wireHENHMETAFILE hHEnhMetaFile;
		GDI_OBJECT* hGdiHandle;
		wireHGLOBAL hGlobal;
		LPOLESTR lpszFileName;
		BYTE_BLOB* pstm;
		BYTE_BLOB* pstg;
	}
	struct userSTGMEDIUM
	{
		DWORD tymed;
		__MIDL_IAdviseSink_0003 u;
		IUnknown pUnkForRelease;
	}
	alias userSTGMEDIUM* wireSTGMEDIUM;
	alias uSTGMEDIUM STGMEDIUM;
	alias userSTGMEDIUM* wireASYNC_STGMEDIUM;
	alias STGMEDIUM ASYNC_STGMEDIUM;
	alias STGMEDIUM* LPSTGMEDIUM;
	struct userFLAG_STGMEDIUM
	{
		LONG ContextFlags;
		LONG fPassOwnership;
		userSTGMEDIUM Stgmed;
	}
	alias userFLAG_STGMEDIUM* wireFLAG_STGMEDIUM;
	struct FLAG_STGMEDIUM
	{
		LONG ContextFlags;
		LONG fPassOwnership;
		STGMEDIUM Stgmed;
	}
	interface IAdviseSink : IUnknown
	{
		void OnDataChange(FORMATETC* pFormatetc, STGMEDIUM* pStgmed);
		void OnViewChange(DWORD dwAspect, LONG lindex);
		void OnRename(IMoniker pmk);
		void OnSave();
		void OnClose();
	}
	alias IAdviseSink LPADVISESINK;
	interface IAdviseSink2 : IAdviseSink
	{
		void OnLinkSrcChange(IMoniker pmk);
	}
	alias IAdviseSink2 LPADVISESINK2;
	enum DATADIR 
	{
		DATADIR_GET = 1,
		DATADIR_SET = 2,
	}
	interface IDataObject : IUnknown
	{
		HRESULT GetData(FORMATETC* pformatetcIn, STGMEDIUM* pmedium);
		HRESULT GetDataHere(FORMATETC* pformatetc, STGMEDIUM* pmedium);
		HRESULT QueryGetData(FORMATETC* pformatetc);
		HRESULT GetCanonicalFormatEtc(FORMATETC* pformatectIn, FORMATETC* pformatetcOut);
		HRESULT SetData(FORMATETC* pformatetc, STGMEDIUM* pmedium, BOOL fRelease);
		HRESULT EnumFormatEtc(DWORD dwDirection, IEnumFORMATETC* ppenumFormatEtc);
		HRESULT DAdvise(FORMATETC* pformatetc, DWORD advf, IAdviseSink pAdvSink, DWORD* pdwConnection);
		HRESULT DUnadvise(DWORD dwConnection);
		HRESULT EnumDAdvise(IEnumSTATDATA* ppenumAdvise);
	}
	alias IDataObject LPDATAOBJECT;
	interface IDataAdviseHolder : IUnknown
	{
		HRESULT Advise(IDataObject pDataObject, FORMATETC* pFetc, DWORD advf, IAdviseSink pAdvise, DWORD* pdwConnection);
		HRESULT Unadvise(DWORD dwConnection);
		HRESULT EnumAdvise(IEnumSTATDATA* ppenumAdvise);
		HRESULT SendOnDataChange(IDataObject pDataObject, DWORD dwReserved, DWORD advf);
	}
	alias IDataAdviseHolder LPDATAADVISEHOLDER;
	enum CALLTYPE 
	{
		CALLTYPE_TOPLEVEL = 1,
		CALLTYPE_NESTED = 2,
		CALLTYPE_ASYNC = 3,
		CALLTYPE_TOPLEVEL_CALLPENDING = 4,
		CALLTYPE_ASYNC_CALLPENDING = 5,
	}
	enum SERVERCALL 
	{
		SERVERCALL_ISHANDLED = 0,
		SERVERCALL_REJECTED = 1,
		SERVERCALL_RETRYLATER = 2,
	}
	enum PENDINGTYPE 
	{
		PENDINGTYPE_TOPLEVEL = 1,
		PENDINGTYPE_NESTED = 2,
	}
	enum PENDINGMSG 
	{
		PENDINGMSG_CANCELCALL = 0,
		PENDINGMSG_WAITNOPROCESS = 1,
		PENDINGMSG_WAITDEFPROCESS = 2,
	}
	struct INTERFACEINFO
	{
		IUnknown pUnk;
		IID iid;
		WORD wMethod;
	}
	alias INTERFACEINFO* LPINTERFACEINFO;
	interface IMessageFilter : IUnknown
	{
		DWORD HandleInComingCall(DWORD dwCallType, HTASK htaskCaller, DWORD dwTickCount, LPINTERFACEINFO lpInterfaceInfo);
		DWORD RetryRejectedCall(HTASK htaskCallee, DWORD dwTickCount, DWORD dwRejectType);
		DWORD MessagePending(HTASK htaskCallee, DWORD dwTickCount, DWORD dwPendingType);
	}
	alias IMessageFilter LPMESSAGEFILTER;
}
