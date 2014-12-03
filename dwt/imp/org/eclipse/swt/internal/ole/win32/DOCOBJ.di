// D import file generated from 'org\eclipse\swt\internal\ole\win32\DOCOBJ.d'
module org.eclipse.swt.internal.ole.win32.DOCOBJ;
private import org.eclipse.swt.internal.win32.OS;

private import org.eclipse.swt.internal.win32.WINTYPES;

private import org.eclipse.swt.internal.ole.win32.extras;

private import org.eclipse.swt.internal.ole.win32.OLEIDL;

private import org.eclipse.swt.internal.ole.win32.OBJIDL;

extern (Windows) 
{
	alias wchar wchar_t;
	enum DOCMISC 
	{
		DOCMISC_CANCREATEMULTIPLEVIEWS = 1,
		DOCMISC_SUPPORTCOMPLEXRECTANGLES = 2,
		DOCMISC_CANTOPENEDIT = 4,
		DOCMISC_NOFILESUPPORT = 8,
	}
	interface IOleDocument : IUnknown
	{
		HRESULT CreateView(IOleInPlaceSite pIPSite, IStream pstm, DWORD dwReserved, IOleDocumentView* ppView);
		HRESULT GetDocMiscStatus(DWORD* pdwStatus);
		HRESULT EnumViews(IEnumOleDocumentViews* ppEnum, IOleDocumentView* ppView);
	}
	alias IOleDocument LPOLEDOCUMENT;
	interface IOleDocumentSite : IUnknown
	{
		HRESULT ActivateMe(IOleDocumentView pViewToActivate);
	}
	alias IOleDocumentSite LPOLEDOCUMENTSITE;
	interface IOleDocumentView : IUnknown
	{
		HRESULT SetInPlaceSite(IOleInPlaceSite pIPSite);
		HRESULT GetInPlaceSite(IOleInPlaceSite* ppIPSite);
		HRESULT GetDocument(IUnknown* ppunk);
		HRESULT SetRect(LPRECT prcView);
		HRESULT GetRect(LPRECT prcView);
		HRESULT SetRectComplex(LPRECT prcView, LPRECT prcHScroll, LPRECT prcVScroll, LPRECT prcSizeBox);
		HRESULT Show(BOOL fShow);
		HRESULT UIActivate(BOOL fUIActivate);
		HRESULT Open();
		HRESULT CloseView(DWORD dwReserved);
		HRESULT SaveViewState(LPSTREAM pstm);
		HRESULT ApplyViewState(LPSTREAM pstm);
		HRESULT Clone(IOleInPlaceSite pIPSiteNew, IOleDocumentView* ppViewNew);
	}
	alias IOleDocumentView LPOLEDOCUMENTVIEW;
	interface IEnumOleDocumentViews : IUnknown
	{
		HRESULT Next(ULONG cViews, IOleDocumentView* rgpView, ULONG* pcFetched);
		HRESULT Skip(ULONG cViews);
		HRESULT Reset();
		HRESULT Clone(IEnumOleDocumentViews* ppEnum);
	}
	alias IEnumOleDocumentViews LPENUMOLEDOCUMENTVIEWS;
	interface IContinueCallback : IUnknown
	{
		HRESULT FContinue();
		HRESULT FContinuePrinting(LONG nCntPrinted, LONG nCurPage, wchar_t* pwszPrintStatus);
	}
	alias IContinueCallback LPCONTINUECALLBACK;
	enum PRINTFLAG 
	{
		PRINTFLAG_MAYBOTHERUSER = 1,
		PRINTFLAG_PROMPTUSER = 2,
		PRINTFLAG_USERMAYCHANGEPRINTER = 4,
		PRINTFLAG_RECOMPOSETODEVICE = 8,
		PRINTFLAG_DONTACTUALLYPRINT = 16,
		PRINTFLAG_FORCEPROPERTIES = 32,
		PRINTFLAG_PRINTTOFILE = 64,
	}
	struct PAGERANGE
	{
		LONG nFromPage;
		LONG nToPage;
	}
	struct PAGESET
	{
		ULONG cbStruct;
		BOOL fOddPages;
		BOOL fEvenPages;
		ULONG cPageRange;
		PAGERANGE[1] rgPages;
	}
	interface IPrint : IUnknown
	{
		HRESULT SetInitialPageNum(LONG nFirstPage);
		HRESULT GetPageInfo(LONG* pnFirstPage, LONG* pcPages);
		HRESULT Print(DWORD grfFlags, DVTARGETDEVICE** pptd, PAGESET** ppPageSet, STGMEDIUM* pstgmOptions, IContinueCallback pcallback, LONG nFirstPage, LONG* pcPagesPrinted, LONG* pnLastPage);
	}
	alias IPrint LPPRINT;
	enum OLECMDF 
	{
		OLECMDF_SUPPORTED = 1,
		OLECMDF_ENABLED = 2,
		OLECMDF_LATCHED = 4,
		OLECMDF_NINCHED = 8,
	}
	struct OLECMD
	{
		ULONG cmdID;
		DWORD cmdf;
	}
	struct OLECMDTEXT
	{
		DWORD cmdtextf;
		ULONG cwActual;
		ULONG cwBuf;
		wchar_t[1] rgwz;
	}
	enum OLECMDTEXTF 
	{
		OLECMDTEXTF_NONE = 0,
		OLECMDTEXTF_NAME = 1,
		OLECMDTEXTF_STATUS = 2,
	}
	enum OLECMDEXECOPT 
	{
		OLECMDEXECOPT_DODEFAULT = 0,
		OLECMDEXECOPT_PROMPTUSER = 1,
		OLECMDEXECOPT_DONTPROMPTUSER = 2,
		OLECMDEXECOPT_SHOWHELP = 3,
	}
	enum OLECMDID 
	{
		OLECMDID_OPEN = 1,
		OLECMDID_NEW = 2,
		OLECMDID_SAVE = 3,
		OLECMDID_SAVEAS = 4,
		OLECMDID_SAVECOPYAS = 5,
		OLECMDID_PRINT = 6,
		OLECMDID_PRINTPREVIEW = 7,
		OLECMDID_PAGESETUP = 8,
		OLECMDID_SPELL = 9,
		OLECMDID_PROPERTIES = 10,
		OLECMDID_CUT = 11,
		OLECMDID_COPY = 12,
		OLECMDID_PASTE = 13,
		OLECMDID_PASTESPECIAL = 14,
		OLECMDID_UNDO = 15,
		OLECMDID_REDO = 16,
		OLECMDID_SELECTALL = 17,
		OLECMDID_CLEARSELECTION = 18,
		OLECMDID_ZOOM = 19,
		OLECMDID_GETZOOMRANGE = 20,
		OLECMDID_UPDATECOMMANDS = 21,
		OLECMDID_REFRESH = 22,
		OLECMDID_STOP = 23,
		OLECMDID_HIDETOOLBARS = 24,
		OLECMDID_SETPROGRESSMAX = 25,
		OLECMDID_SETPROGRESSPOS = 26,
		OLECMDID_SETPROGRESSTEXT = 27,
		OLECMDID_SETTITLE = 28,
		OLECMDID_SETDOWNLOADSTATE = 29,
		OLECMDID_STOPDOWNLOAD = 30,
		OLECMDID_ONTOOLBARACTIVATED = 31,
		OLECMDID_FIND = 32,
		OLECMDID_DELETE = 33,
		OLECMDID_HTTPEQUIV = 34,
		OLECMDID_HTTPEQUIV_DONE = 35,
		OLECMDID_ENABLE_INTERACTION = 36,
		OLECMDID_ONUNLOAD = 37,
		OLECMDID_PROPERTYBAG2 = 38,
		OLECMDID_PREREFRESH = 39,
	}
	interface IOleCommandTarget : IUnknown
	{
		HRESULT QueryStatus(GUID* pguidCmdGroup, ULONG cCmds, OLECMD* prgCmds, OLECMDTEXT* pCmdText);
		HRESULT Exec(GUID* pguidCmdGroup, DWORD nCmdID, DWORD nCmdexecopt, VARIANT* pvaIn, VARIANT* pvaOut);
	}
	alias IOleCommandTarget LPOLECOMMANDTARGET;
}
