// D import file generated from 'org\eclipse\swt\internal\ole\win32\MSHTMHST.d'
module org.eclipse.swt.internal.ole.win32.MSHTMHST;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.ole.win32.COMTYPES;
private import org.eclipse.swt.internal.ole.win32.extras;

private import org.eclipse.swt.internal.ole.win32.OAIDL;

private import org.eclipse.swt.internal.ole.win32.OBJIDL;

private import org.eclipse.swt.internal.ole.win32.OLEIDL;

private import org.eclipse.swt.internal.ole.win32.DOCOBJ;

extern (Windows) 
{
	enum DOCHOSTUITYPE 
	{
		DOCHOSTUITYPE_BROWSE = 0,
		DOCHOSTUITYPE_AUTHOR = 1,
		BROWSE = 0,
		AUTHOR = 1,
	}
	enum DOCHOSTUIDBLCLK 
	{
		DOCHOSTUIDBLCLK_DEFAULT = 0,
		DOCHOSTUIDBLCLK_SHOWPROPERTIES = 1,
		DOCHOSTUIDBLCLK_SHOWCODE = 2,
		DEFAULT = 0,
		SHOWPROPERTIES = 1,
		SHOWCODE = 2,
	}
	enum DOCHOSTUIFLAG 
	{
		DOCHOSTUIFLAG_DIALOG = 1,
		DOCHOSTUIFLAG_DISABLE_HELP_MENU = 2,
		DOCHOSTUIFLAG_NO3DBORDER = 4,
		DOCHOSTUIFLAG_SCROLL_NO = 8,
		DOCHOSTUIFLAG_DISABLE_SCRIPT_INACTIVE = 16,
		DOCHOSTUIFLAG_OPENNEWWIN = 32,
		DOCHOSTUIFLAG_DISABLE_OFFSCREEN = 64,
		DOCHOSTUIFLAG_FLAT_SCROLLBAR = 128,
		DOCHOSTUIFLAG_DIV_BLOCKDEFAULT = 256,
		DOCHOSTUIFLAG_ACTIVATE_CLIENTHIT_ONLY = 512,
		DOCHOSTUIFLAG_DISABLE_COOKIE = 1024,
		DIALOG = 1,
		DISABLE_HELP_MENU = 2,
		NO3DBORDER = 4,
		SCROLL_NO = 8,
		DISABLE_SCRIPT_INACTIVE = 16,
		OPENNEWWIN = 32,
		DISABLE_OFFSCREEN = 64,
		FLAT_SCROLLBAR = 128,
		DIV_BLOCKDEFAULT = 256,
		ACTIVATE_CLIENTHIT_ONLY = 512,
		DISABLE_COOKIE = 1024,
	}
	enum 
	{
		DOCHOSTUITYPE_BROWSE = 0,
		DOCHOSTUITYPE_AUTHOR = 1,
		DOCHOSTUIDBLCLK_DEFAULT = 0,
		DOCHOSTUIDBLCLK_SHOWPROPERTIES = 1,
		DOCHOSTUIDBLCLK_SHOWCODE = 2,
		DOCHOSTUIFLAG_DIALOG = 1,
		DOCHOSTUIFLAG_DISABLE_HELP_MENU = 2,
		DOCHOSTUIFLAG_NO3DBORDER = 4,
		DOCHOSTUIFLAG_SCROLL_NO = 8,
		DOCHOSTUIFLAG_DISABLE_SCRIPT_INACTIVE = 16,
		DOCHOSTUIFLAG_OPENNEWWIN = 32,
		DOCHOSTUIFLAG_DISABLE_OFFSCREEN = 64,
		DOCHOSTUIFLAG_FLAT_SCROLLBAR = 128,
		DOCHOSTUIFLAG_DIV_BLOCKDEFAULT = 256,
		DOCHOSTUIFLAG_ACTIVATE_CLIENTHIT_ONLY = 512,
		DOCHOSTUIFLAG_DISABLE_COOKIE = 1024,
	}
	struct DOCHOSTUIINFO
	{
		ULONG cbSize;
		DWORD dwFlags;
		DWORD dwDoubleClick;
	}
	interface IDocHostUIHandler : IUnknown
	{
		HRESULT ShowContextMenu(DWORD dwID, POINT* ppt, IUnknown pcmdtReserved, IDispatch pdispReserved);
		HRESULT GetHostInfo(DOCHOSTUIINFO* pInfo);
		HRESULT ShowUI(DWORD dwID, IOleInPlaceActiveObject pActiveObject, IOleCommandTarget pCommandTarget, IOleInPlaceFrame pFrame, IOleInPlaceUIWindow pDoc);
		HRESULT HideUI();
		HRESULT UpdateUI();
		HRESULT EnableModeless(BOOL fEnable);
		HRESULT OnDocWindowActivate(BOOL fActivate);
		HRESULT OnFrameWindowActivate(BOOL fActivate);
		HRESULT ResizeBorder(LPRECT prcBorder, IOleInPlaceUIWindow pUIWindow, BOOL fRameWindow);
		HRESULT TranslateAccelerator(LPMSG lpMsg, GUID* pguidCmdGroup, DWORD nCmdID);
		HRESULT GetOptionKeyPath(LPOLESTR* pchKey, DWORD dw);
		HRESULT GetDropTarget(IDropTarget pDropTarget, IDropTarget* ppDropTarget);
		HRESULT GetExternal(IDispatch* ppDispatch);
		HRESULT TranslateUrl(DWORD dwTranslate, OLECHAR* pchURLIn, OLECHAR** ppchURLOut);
		HRESULT FilterDataObject(IDataObject pDO, IDataObject* ppDORet);
	}
	interface ICustomDoc : IUnknown
	{
		HRESULT SetUIHandler(IDocHostUIHandler pUIHandler);
	}
	interface IDocHostShowUI : IUnknown
	{
		HRESULT ShowMessage(HWND hwnd, LPOLESTR lpstrText, LPOLESTR lpstrCaption, DWORD dwType, LPOLESTR lpstrHelpFile, DWORD dwHelpContext, LRESULT* plResult);
		HRESULT ShowHelp(HWND hwnd, LPOLESTR pszHelpFile, UINT uCommand, DWORD dwData, POINT ptMouse, IDispatch pDispatchObjectHit);
	}
}
