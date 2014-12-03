// D import file generated from 'org\eclipse\swt\internal\ole\win32\OLEIDL.d'
module org.eclipse.swt.internal.ole.win32.OLEIDL;
import org.eclipse.swt.internal.win32.WINTYPES;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.ole.win32.COMTYPES;
extern (Windows) 
{
	interface IOleAdviseHolder : IUnknown
	{
		HRESULT Advise(IAdviseSink pAdvise, DWORD* pdwConnection);
		HRESULT Unadvise(DWORD dwConnection);
		HRESULT EnumAdvise(IEnumSTATDATA ppenumAdvise);
		HRESULT SendOnRename(IMoniker pmk);
		HRESULT SendOnSave();
		HRESULT SendOnClose();
	}
	alias IOleAdviseHolder LPOLEADVISEHOLDER;
	interface IOleCache : IUnknown
	{
		HRESULT Cache(FORMATETC* pformatetc, DWORD advf, DWORD* pdwConnection);
		HRESULT Uncache(DWORD dwConnection);
		HRESULT EnumCache(IEnumSTATDATA* ppenumSTATDATA);
		HRESULT InitCache(IDataObject pDataObject);
		HRESULT SetData(FORMATETC* pformatetc, STGMEDIUM* pmedium, BOOL fRelease);
	}
	alias IOleCache LPOLECACHE;
	interface IOleCache2 : IOleCache
	{
		HRESULT UpdateCache(LPDATAOBJECT pDataObject, DWORD grfUpdf, LPVOID pReserved);
		HRESULT DiscardCache(DWORD dwDiscardOptions);
	}
	alias IOleCache2 LPOLECACHE2;
	interface IOleCacheControl : IUnknown
	{
		HRESULT OnRun(LPDATAOBJECT pDataObject);
		HRESULT OnStop();
	}
	alias IOleCacheControl LPOLECACHECONTROL;
	interface IParseDisplayName : IUnknown
	{
		HRESULT ParseDisplayName(IBindCtx pbc, LPOLESTR pszDisplayName, ULONG* pchEaten, IMoniker* ppmkOut);
	}
	alias IParseDisplayName LPPARSEDISPLAYNAME;
	interface IOleContainer : IParseDisplayName
	{
		HRESULT EnumObjects(DWORD grfFlags, IEnumUnknown* ppenum);
		HRESULT LockContainer(BOOL fLock);
	}
	alias IOleContainer LPOLECONTAINER;
	interface IOleClientSite : IUnknown
	{
		HRESULT SaveObject();
		HRESULT GetMoniker(DWORD dwAssign, DWORD dwWhichMoniker, IMoniker* ppmk);
		HRESULT GetContainer(IOleContainer* ppContainer);
		HRESULT ShowObject();
		HRESULT OnShowWindow(BOOL fShow);
		HRESULT RequestNewObjectLayout();
	}
	alias IOleClientSite LPOLECLIENTSITE;
	enum OLEGETMONIKER 
	{
		OLEGETMONIKER_ONLYIFTHERE = 1,
		OLEGETMONIKER_FORCEASSIGN = 2,
		OLEGETMONIKER_UNASSIGN = 3,
		OLEGETMONIKER_TEMPFORUSER = 4,
	}
	enum OLEWHICHMK 
	{
		OLEWHICHMK_CONTAINER = 1,
		OLEWHICHMK_OBJREL = 2,
		OLEWHICHMK_OBJFULL = 3,
	}
	enum USERCLASSTYPE 
	{
		USERCLASSTYPE_FULL = 1,
		USERCLASSTYPE_SHORT = 2,
		USERCLASSTYPE_APPNAME = 3,
	}
	enum OLEMISC 
	{
		OLEMISC_RECOMPOSEONRESIZE = 1,
		OLEMISC_ONLYICONIC = 2,
		OLEMISC_INSERTNOTREPLACE = 4,
		OLEMISC_STATIC = 8,
		OLEMISC_CANTLINKINSIDE = 16,
		OLEMISC_CANLINKBYOLE1 = 32,
		OLEMISC_ISLINKOBJECT = 64,
		OLEMISC_INSIDEOUT = 128,
		OLEMISC_ACTIVATEWHENVISIBLE = 256,
		OLEMISC_RENDERINGISDEVICEINDEPENDENT = 512,
		OLEMISC_INVISIBLEATRUNTIME = 1024,
		OLEMISC_ALWAYSRUN = 2048,
		OLEMISC_ACTSLIKEBUTTON = 4096,
		OLEMISC_ACTSLIKELABEL = 8192,
		OLEMISC_NOUIACTIVATE = 16384,
		OLEMISC_ALIGNABLE = 32768,
		OLEMISC_SIMPLEFRAME = 65536,
		OLEMISC_SETCLIENTSITEFIRST = 131072,
		OLEMISC_IMEMODE = 262144,
		OLEMISC_IGNOREACTIVATEWHENVISIBLE = 524288,
		OLEMISC_WANTSTOMENUMERGE = 1048576,
		OLEMISC_SUPPORTSMULTILEVELUNDO = 2097152,
	}
	enum OLECLOSE 
	{
		OLECLOSE_SAVEIFDIRTY = 0,
		OLECLOSE_NOSAVE = 1,
		OLECLOSE_PROMPTSAVE = 2,
		SAVEIFDIRTY = 0,
		NOSAVE = 1,
		PROMPTSAVE = 2,
	}
	interface IOleObject : IUnknown
	{
		HRESULT SetClientSite(IOleClientSite pClientSite);
		HRESULT GetClientSite(IOleClientSite* ppClientSite);
		HRESULT SetHostNames(LPCOLESTR szContainerApp, LPCOLESTR szContainerObj);
		HRESULT Close(DWORD dwSaveOption);
		HRESULT SetMoniker(DWORD dwWhichMoniker, IMoniker pmk);
		HRESULT GetMoniker(DWORD dwAssign, DWORD dwWhichMoniker, IMoniker* ppmk);
		HRESULT InitFromData(IDataObject pDataObject, BOOL fCreation, DWORD dwReserved);
		HRESULT GetClipboardData(DWORD dwReserved, IDataObject* ppDataObject);
		HRESULT DoVerb(LONG iVerb, LPMSG lpmsg, IOleClientSite pActiveSite, LONG lindex, HWND hwndParent, LPCRECT lprcPosRect);
		HRESULT EnumVerbs(IEnumOLEVERB* ppEnumOleVerb);
		HRESULT Update();
		HRESULT IsUpToDate();
		HRESULT GetUserClassID(CLSID* pClsid);
		HRESULT GetUserType(DWORD dwFormOfType, LPOLESTR* pszUserType);
		HRESULT SetExtent(DWORD dwDrawAspect, SIZEL* psizel);
		HRESULT GetExtent(DWORD dwDrawAspect, SIZEL* psizel);
		HRESULT Advise(IAdviseSink pAdvSink, DWORD* pdwConnection);
		HRESULT Unadvise(DWORD dwConnection);
		HRESULT EnumAdvise(IEnumSTATDATA* ppenumAdvise);
		HRESULT GetMiscStatus(DWORD dwAspect, DWORD* pdwStatus);
		HRESULT SetColorScheme(LOGPALETTE* pLogpal);
	}
	alias IOleObject LPOLEOBJECT;
	enum OLERENDER 
	{
		OLERENDER_NONE = 0,
		OLERENDER_DRAW = 1,
		OLERENDER_FORMAT = 2,
		OLERENDER_ASIS = 3,
		NONE = 0,
		DRAW = 1,
		FORMAT = 2,
		ASIS = 3,
	}
	alias OLERENDER* LPOLERENDER;
	interface IOLETypes
	{
	}
	struct OBJECTDESCRIPTOR
	{
		ULONG cbSize;
		CLSID clsid;
		DWORD dwDrawAspect;
		SIZEL sizel;
		POINTL pointl;
		DWORD dwStatus;
		DWORD dwFullUserTypeName;
		DWORD dwSrcOfCopy;
	}
	alias OBJECTDESCRIPTOR LINKSRCDESCRIPTOR;
	alias OBJECTDESCRIPTOR* POBJECTDESCRIPTOR;
	alias OBJECTDESCRIPTOR* LPOBJECTDESCRIPTOR;
	alias OBJECTDESCRIPTOR* PLINKSRCDESCRIPTOR;
	alias OBJECTDESCRIPTOR* LPLINKSRCDESCRIPTOR;
	interface IOleWindow : IUnknown
	{
		HRESULT GetWindow(HWND* phwnd);
		HRESULT ContextSensitiveHelp(BOOL fEnterMode);
	}
	alias IOleWindow LPOLEWINDOW;
	enum OLEUPDATE 
	{
		OLEUPDATE_ALWAYS = 1,
		OLEUPDATE_ONCALL = 3,
	}
	alias OLEUPDATE* LPOLEUPDATE;
	alias OLEUPDATE* POLEUPDATE;
	enum OLELINKBIND 
	{
		OLELINKBIND_EVENIFCLASSDIFF = 1,
	}
	interface IOleLink : IUnknown
	{
		HRESULT SetUpdateOptions(DWORD dwUpdateOpt);
		HRESULT GetUpdateOptions(DWORD* pdwUpdateOpt);
		HRESULT SetSourceMoniker(IMoniker pmk, REFCLSID rclsid);
		HRESULT GetSourceMoniker(IMoniker* ppmk);
		HRESULT SetSourceDisplayName(LPCOLESTR pszStatusText);
		HRESULT GetSourceDisplayName(LPOLESTR* ppszDisplayName);
		HRESULT BindToSource(DWORD bindflags, IBindCtx pbc);
		HRESULT BindIfRunning();
		HRESULT GetBoundSource(IUnknown* ppunk);
		HRESULT UnbindSource();
		HRESULT Update(IBindCtx pbc);
	}
	alias IOleLink LPOLELINK;
	enum BINDSPEED 
	{
		BINDSPEED_INDEFINITE = 1,
		BINDSPEED_MODERATE = 2,
		BINDSPEED_IMMEDIATE = 3,
	}
	enum OLECONTF 
	{
		OLECONTF_EMBEDDINGS = 1,
		OLECONTF_LINKS = 2,
		OLECONTF_OTHERS = 4,
		OLECONTF_ONLYUSER = 8,
		OLECONTF_ONLYIFRUNNING = 16,
	}
	interface IOleItemContainer : IOleContainer
	{
		HRESULT GetObject(LPOLESTR pszItem, DWORD dwSpeedNeeded, IBindCtx pbc, REFIID riid, void** ppvObject);
		HRESULT GetObjectStorage(LPOLESTR pszItem, IBindCtx pbc, REFIID riid, void** ppvStorage);
		HRESULT IsRunning(LPOLESTR pszItem);
	}
	alias IOleItemContainer LPOLEITEMCONTAINER;
	alias RECT BORDERWIDTHS;
	alias LPRECT LPBORDERWIDTHS;
	alias LPCRECT LPCBORDERWIDTHS;
	interface IOleInPlaceUIWindow : IOleWindow
	{
		HRESULT GetBorder(LPRECT lprectBorder);
		HRESULT RequestBorderSpace(LPCBORDERWIDTHS pborderwidths);
		HRESULT SetBorderSpace(LPCBORDERWIDTHS pborderwidths);
		HRESULT SetActiveObject(LPOLEINPLACEACTIVEOBJECT pActiveObject, LPCOLESTR pszObjName);
	}
	alias IOleInPlaceUIWindow LPOLEINPLACEUIWINDOW;
	interface IOleInPlaceActiveObject : IOleWindow
	{
		HRESULT TranslateAccelerator(LPMSG lpmsg);
		HRESULT OnFrameWindowActivate(BOOL fActivate);
		HRESULT OnDocWindowActivate(BOOL fActivate);
		HRESULT ResizeBorder(LPCRECT prcBorder, IOleInPlaceUIWindow pUIWindow, BOOL fFrameWindow);
		HRESULT EnableModeless(BOOL fEnable);
	}
	alias IOleInPlaceActiveObject LPOLEINPLACEACTIVEOBJECT;
	struct OLEINPLACEFRAMEINFO
	{
		UINT cb;
		BOOL fMDIApp;
		HWND hwndFrame;
		HACCEL haccel;
		UINT cAccelEntries;
	}
	alias OLEINPLACEFRAMEINFO* LPOLEINPLACEFRAMEINFO;
	struct OLEMENUGROUPWIDTHS
	{
		LONG[6] width;
	}
	alias OLEMENUGROUPWIDTHS* LPOLEMENUGROUPWIDTHS;
	alias HGLOBAL HOLEMENU;
	interface IOleInPlaceFrame : IOleInPlaceUIWindow
	{
		HRESULT InsertMenus(HMENU hmenuShared, LPOLEMENUGROUPWIDTHS lpMenuWidths);
		HRESULT SetMenu(HMENU hmenuShared, HOLEMENU holemenu, HWND hwndActiveObject);
		HRESULT RemoveMenus(HMENU hmenuShared);
		HRESULT SetStatusText(LPCOLESTR pszStatusText);
		HRESULT EnableModeless(BOOL fEnable);
		HRESULT TranslateAccelerator(LPMSG lpmsg, WORD wID);
	}
	alias IOleInPlaceFrame LPOLEINPLACEFRAME;
	interface IOleInPlaceObject : IOleWindow
	{
		HRESULT InPlaceDeactivate();
		HRESULT UIDeactivate();
		HRESULT SetObjectRects(LPCRECT lprcPosRect, LPCRECT lprcClipRect);
		HRESULT ReactivateAndUndo();
	}
	alias IOleInPlaceObject LPOLEINPLACEOBJECT;
	interface IOleInPlaceSite : IOleWindow
	{
		HRESULT CanInPlaceActivate();
		HRESULT OnInPlaceActivate();
		HRESULT OnUIActivate();
		HRESULT GetWindowContext(IOleInPlaceFrame* ppFrame, IOleInPlaceUIWindow* ppDoc, LPRECT lprcPosRect, LPRECT lprcClipRect, LPOLEINPLACEFRAMEINFO lpFrameInfo);
		HRESULT Scroll(SIZE scrollExtant);
		HRESULT OnUIDeactivate(BOOL fUndoable);
		HRESULT OnInPlaceDeactivate();
		HRESULT DiscardUndoState();
		HRESULT DeactivateAndUndo();
		HRESULT OnPosRectChange(LPCRECT lprcPosRect);
	}
	alias IOleInPlaceSite LPOLEINPLACESITE;
	interface IContinue : IUnknown
	{
		HRESULT FContinue();
	}
	interface IViewObject : IUnknown
	{
		HRESULT Draw(DWORD dwDrawAspect, LONG lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcTargetDev, HDC hdcDraw, LPCRECTL lprcBounds, LPCRECTL lprcWBounds, BOOL function(DWORD dwContinue) pfnContinue, DWORD dwContinue);
		HRESULT GetColorSet(DWORD dwDrawAspect, LONG lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hicTargetDev, LOGPALETTE** ppColorSet);
		HRESULT Freeze(DWORD dwDrawAspect, LONG lindex, void* pvAspect, DWORD* pdwFreeze);
		HRESULT Unfreeze(DWORD dwFreeze);
		HRESULT SetAdvise(DWORD aspects, DWORD advf, IAdviseSink pAdvSink);
		HRESULT GetAdvise(DWORD* pAspects, DWORD* pAdvf, IAdviseSink* ppAdvSink);
	}
	alias IViewObject LPVIEWOBJECT;
	interface IViewObject2 : IViewObject
	{
		HRESULT GetExtent(DWORD dwDrawAspect, LONG lindex, DVTARGETDEVICE* ptd, LPSIZEL lpsizel);
	}
	alias IViewObject2 LPVIEWOBJECT2;
	interface IDropSource : IUnknown
	{
		HRESULT QueryContinueDrag(BOOL fEscapePressed, DWORD grfKeyState);
		HRESULT GiveFeedback(DWORD dwEffect);
	}
	alias IDropSource LPDROPSOURCE;
	const DWORD MK_ALT = 32;

	const DWORD DROPEFFECT_NONE = 0;

	const DWORD DROPEFFECT_COPY = 1;

	const DWORD DROPEFFECT_MOVE = 2;

	const DWORD DROPEFFECT_LINK = 4;

	const DWORD DROPEFFECT_SCROLL = 2147483648u;

	const DWORD DD_DEFSCROLLINSET = 11;

	const DWORD DD_DEFSCROLLDELAY = 50;

	const DWORD DD_DEFSCROLLINTERVAL = 50;

	const DWORD DD_DEFDRAGDELAY = 200;

	const DWORD DD_DEFDRAGMINDIST = 2;

	interface IDropTarget : IUnknown
	{
		HRESULT DragEnter(IDataObject pDataObj, DWORD grfKeyState, POINTL pt, DWORD* pdwEffect);
		HRESULT DragOver(DWORD grfKeyState, POINTL pt, DWORD* pdwEffect);
		HRESULT DragLeave();
		HRESULT Drop(IDataObject pDataObj, DWORD grfKeyState, POINTL pt, DWORD* pdwEffect);
	}
	alias IDropTarget LPDROPTARGET;
	struct OLEVERB
	{
		LONG lVerb;
		LPOLESTR lpszVerbName;
		DWORD fuFlags;
		DWORD grfAttribs;
	}
	alias OLEVERB* LPOLEVERB;
	enum OLEVERBATTRIB 
	{
		OLEVERBATTRIB_NEVERDIRTIES = 1,
		OLEVERBATTRIB_ONCONTAINERMENU = 2,
		NEVERDIRTIES = 1,
		ONCONTAINERMENU = 2,
	}
	interface IEnumOLEVERB : IUnknown
	{
		HRESULT Next(ULONG celt, LPOLEVERB rgelt, ULONG* pceltFetched);
		HRESULT Skip(ULONG celt);
		HRESULT Reset();
		HRESULT Clone(IEnumOLEVERB* ppenum);
	}
	alias IEnumOLEVERB LPENUMOLEVERB;
}
