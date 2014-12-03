// D import file generated from 'org\eclipse\swt\internal\ole\win32\EXDISP.d'
module org.eclipse.swt.internal.ole.win32.EXDISP;
private import org.eclipse.swt.internal.ole.win32.OAIDL;

private import org.eclipse.swt.internal.ole.win32.OLEIDL;

private import org.eclipse.swt.internal.ole.win32.DOCOBJ;

private import org.eclipse.swt.internal.ole.win32.extras;

import org.eclipse.swt.internal.win32.WINTYPES;
extern (Windows) 
{
	enum BrowserNavConstants 
	{
		navOpenInNewWindow = 1,
		navNoHistory = 2,
		navNoReadFromCache = 4,
		navNoWriteToCache = 8,
		navAllowAutosearch = 16,
		navBrowserBar = 32,
	}
	enum RefreshConstants 
	{
		REFRESH_NORMAL = 0,
		REFRESH_IFEXPIRED = 1,
		REFRESH_COMPLETELY = 3,
	}
	interface IWebBrowser : IDispatch
	{
		HRESULT GoBack();
		HRESULT GoForward();
		HRESULT GoHome();
		HRESULT GoSearch();
		HRESULT Navigate(BSTR URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers);
		HRESULT Refresh();
		HRESULT Refresh2(VARIANT* Level);
		HRESULT Stop();
		HRESULT Application(IDispatch* ppDisp);
		HRESULT Parent(IDispatch* ppDisp);
		HRESULT Container(IDispatch* ppDisp);
		HRESULT Document(IDispatch* ppDisp);
		HRESULT TopLevelContainer(VARIANT_BOOL* pBool);
		HRESULT Type(BSTR* Type);
		HRESULT Left(LONG* pl);
		HRESULT Put_Left(LONG Left);
		HRESULT Top(LONG* pl);
		HRESULT Put_Top(LONG Top);
		HRESULT Width(LONG* pl);
		HRESULT Put_Width(LONG Width);
		HRESULT Height(LONG* pl);
		HRESULT Put_Height(LONG Height);
		HRESULT LocationName(BSTR* LocationName);
		HRESULT LocationURL(BSTR* LocationURL);
		HRESULT Busy(VARIANT_BOOL* pBool);
	}
	enum CommandStateChangeConstants : uint
	{
		CSC_UPDATECOMMANDS = 4294967295u,
		CSC_NAVIGATEFORWARD = 1,
		CSC_NAVIGATEBACK = 2,
	}
	interface IWebBrowserApp : IWebBrowser
	{
		HRESULT Quit();
		HRESULT ClientToWindow(int* pcx, int* pcy);
		HRESULT PutProperty(BSTR Property, VARIANT vtValue);
		HRESULT GetProperty(BSTR Property, VARIANT* pvtValue);
		HRESULT Name(BSTR* Name);
		HRESULT HWND(LONG* pHWND);
		HRESULT FullName(BSTR* FullName);
		HRESULT Path(BSTR* Path);
		HRESULT Visible(VARIANT_BOOL* pBool);
		HRESULT Visible(VARIANT_BOOL Value);
		HRESULT StatusBar(VARIANT_BOOL* pBool);
		HRESULT StatusBar(VARIANT_BOOL Value);
		HRESULT StatusText(BSTR* StatusText);
		HRESULT StatusText(BSTR StatusText);
		HRESULT ToolBar(int* Value);
		HRESULT ToolBar(int Value);
		HRESULT MenuBar(VARIANT_BOOL* Value);
		HRESULT MenuBar(VARIANT_BOOL Value);
		HRESULT FullScreen(VARIANT_BOOL* pbFullScreen);
		HRESULT FullScreen(VARIANT_BOOL bFullScreen);
	}
	interface IWebBrowser2 : IWebBrowserApp
	{
		HRESULT Navigate2(VARIANT* URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers);
		HRESULT QueryStatusWB(OLECMDID cmdID, OLECMDF* pcmdf);
		HRESULT ExecWB(OLECMDID cmdID, OLECMDEXECOPT cmdexecopt, VARIANT* pvaIn, VARIANT* pvaOut);
		HRESULT ShowBrowserBar(VARIANT* pvaClsid, VARIANT* pvarShow, VARIANT* pvarSize);
		HRESULT ReadyState(READYSTATE* plReadyState);
		HRESULT Offline(VARIANT_BOOL* pbOffline);
		HRESULT Offline(VARIANT_BOOL bOffline);
		HRESULT Silent(VARIANT_BOOL* pbSilent);
		HRESULT Silent(VARIANT_BOOL bSilent);
		HRESULT RegisterAsBrowser(VARIANT_BOOL* pbRegister);
		HRESULT RegisterAsBrowser(VARIANT_BOOL bRegister);
		HRESULT RegisterAsDropTarget(VARIANT_BOOL* pbRegister);
		HRESULT RegisterAsDropTarget(VARIANT_BOOL bRegister);
		HRESULT TheaterMode(VARIANT_BOOL* pbRegister);
		HRESULT TheaterMode(VARIANT_BOOL bRegister);
		HRESULT AddressBar(VARIANT_BOOL* Value);
		HRESULT AddressBar(VARIANT_BOOL Value);
		HRESULT Resizable(VARIANT_BOOL* Value);
		HRESULT Resizable(VARIANT_BOOL Value);
	}
	interface IFolderViewOC : IDispatch
	{
		HRESULT SetFolderView(IDispatch pdisp);
	}
	interface DShellFolderViewEvents
	{
		void SelectionChanged();
	}
	enum ShellWindowTypeConstants 
	{
		SWC_EXPLORER = 0,
		SWC_BROWSER = 1,
		SWC_3RDPARTY = 2,
		SWC_CALLBACK = 4,
	}
	enum ShellWindowFindWindowOptions 
	{
		SWFO_NEEDDISPATCH = 1,
		SWFO_INCLUDEPENDING = 2,
		SWFO_COOKIEPASSED = 4,
	}
	interface DShellWindowsEvents
	{
		void WindowRegistered(LONG lCookie);
		void WindowRevoked(LONG lCookie);
	}
	interface IShellWindows : IDispatch
	{
		HRESULT Count(LONG* Count);
		HRESULT Item(VARIANT index, IDispatch* Folder);
		HRESULT _NewEnum(IUnknown* ppunk);
		HRESULT Register(IDispatch pid, LONG hwnd, int swClass, LONG* plCookie);
		HRESULT RegisterPending(LONG lThreadId, VARIANT* pvarloc, VARIANT* pvarlocRoot, int swClass, LONG* plCookie);
		HRESULT Revoke(LONG lCookie);
		HRESULT OnNavigate(LONG lCookie, VARIANT* pvarLoc);
		HRESULT OnActivated(LONG lCookie, VARIANT_BOOL fActive);
		HRESULT FindWindow(VARIANT* pvarLoc, VARIANT* pvarLocRoot, int swClass, LONG* phwnd, int swfwOptions, IDispatch* ppdispOut);
		HRESULT OnCreated(LONG lCookie, IUnknown punk);
		HRESULT ProcessAttachDetach(VARIANT_BOOL fAttach);
	}
}
