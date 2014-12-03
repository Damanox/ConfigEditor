// D import file generated from 'org\eclipse\swt\ole\win32\OleClientSite.d'
module org.eclipse.swt.ole.win32.OleClientSite;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.ole.win32.OAIDL;
import org.eclipse.swt.internal.ole.win32.OLEIDL;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.ole.win32.DOCOBJ;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.ifs;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.ole.win32.OleFrame;
import org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.ole.win32.OLE;
public class OleClientSite : Composite
{
	private _IUnknownImpl iUnknown;

	private _IOleClientSiteImpl iOleClientSite;

	private _IAdviseSinkImpl iAdviseSink;

	private _IOleInPlaceSiteImpl iOleInPlaceSite;

	private _IOleDocumentSiteImpl iOleDocumentSite;

	protected GUID* appClsid;

	private GUID* objClsid;

	private int refCount;

	package OleFrame frame;

	protected IUnknown objIUnknown;

	protected IOleObject objIOleObject;

	protected IViewObject2 objIViewObject2;

	protected IOleInPlaceObject objIOleInPlaceObject;

	protected IOleCommandTarget objIOleCommandTarget;

	protected IOleDocumentView objDocumentView;

	protected IStorage tempStorage;

	private int aspect;

	private int type;

	private bool isStatic;

	private RECT borderWidths;

	private RECT indent;

	private bool inUpdate = false;

	private bool inInit = true;

	private bool inDispose = false;

	private static const String WORDPROGID = "Word.Document";


	private Listener listener;

	enum 
	{
		STATE_NONE = 0,
		STATE_RUNNING = 1,
		STATE_INPLACEACTIVE = 2,
		STATE_UIACTIVE = 3,
		STATE_ACTIVE = 4,
	}
	int state = STATE_NONE;
	protected this(Composite parent, int style);

	public this(Composite parent, int style, File file);

	public this(Composite parent, int style, String progId);

	public this(Composite parent, int style, String progId, File file);

	protected void addObjectReferences();

	protected int AddRef();

	private int CanInPlaceActivate();

	private int ContextSensitiveHelp(int fEnterMode);

	protected void createCOMInterfaces();

	protected IStorage createTempStorage();

	public void deactivateInPlaceClient();

	private void deleteTempStorage();

	protected void disposeCOMInterfaces();

	public int doVerb(int verb);

	public int exec(int cmdID, int options, Variant pvaIn, Variant pvaOut);

	IDispatch getAutomationObject();
	protected GUID* getClassID(String clientName);

	private HRESULT GetContainer(IOleContainer* ppContainer);

	private SIZE* getExtent();

	public Rectangle getIndent();

	public String getProgramID();

	int ActivateMe(IOleDocumentView pViewToActivate);
	protected int GetWindow(HWND* phwnd);

	RECT* getRect();
	private int GetWindowContext(IOleInPlaceFrame* ppFrame, IOleInPlaceUIWindow* ppDoc, LPRECT lprcPosRect, LPRECT lprcClipRect, LPOLEINPLACEFRAMEINFO lpFrameInfo);

	public bool isDirty();

	public override bool isFocusControl();

	private int OnClose();

	private int OnDataChange(int pFormatetc, int pStgmed);

	private void onDispose(Event e);

	void onFocusIn(Event e);
	void onFocusOut(Event e);
	private int OnInPlaceActivate();

	private int OnInPlaceDeactivate();

	private int OnPosRectChange(LPRECT lprcPosRect);

	private void onPaint(Event e);

	private void onResize(Event e);

	private void OnSave();

	private int OnShowWindow(int fShow);

	private int OnUIActivate();

	private int OnUIDeactivate(int fUndoable);

	private void onTraverse(Event event);

	private int OnViewChange(int dwAspect, int lindex);

	protected int QueryInterface(REFCIID riid, void** ppvObject);

	public int queryStatus(int cmd);

	protected int Release();

	protected void releaseObjectInterfaces();

	public bool save(File file, bool includeOleInfo);

	private bool saveFromContents(IStream address, File file);

	private bool saveFromOle10Native(IStream address, File file);

	private int SaveObject();

	private bool saveToStorageFile(File file);

	private bool saveToTraditionalFile(File file);

	private int Scroll(int scrollExtant);

	void setBorderSpace(RECT* newBorderwidth);
	private void setExtent(int width, int height);

	public void setIndent(Rectangle newIndent);

	private void setObjectRects();

	private int ShowObject();

	public void showProperties(String title);

	private bool updateStorage();

	private SIZE* xFormHimetricToPixels(SIZE* aSize);

	private SIZE* xFormPixelsToHimetric(SIZE* aSize);

}

class _IAdviseSinkImpl : IAdviseSink
{
	OleClientSite parent;
	this(OleClientSite p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		void OnDataChange(FORMATETC* pFormatetc, STGMEDIUM* pStgmed);
		void OnViewChange(DWORD dwAspect, LONG lindex);
		void OnRename(IMoniker pmk);
		void OnSave();
		void OnClose();
	}
}
class _IOleClientSiteImpl : IOleClientSite
{
	OleClientSite parent;
	this(OleClientSite p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT SaveObject();
		HRESULT GetMoniker(DWORD dwAssign, DWORD dwWhichMoniker, IMoniker* ppmk);
		HRESULT GetContainer(IOleContainer* ppContainer);
		HRESULT ShowObject();
		HRESULT OnShowWindow(BOOL fShow);
		HRESULT RequestNewObjectLayout();
	}
}
class _IOleDocumentSiteImpl : IOleDocumentSite
{
	OleClientSite parent;
	this(OleClientSite p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT ActivateMe(IOleDocumentView pViewToActivate);
	}
}
class _IOleInPlaceSiteImpl : IOleInPlaceSite
{
	OleClientSite parent;
	this(OleClientSite p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT GetWindow(HWND* phwnd);
		HRESULT ContextSensitiveHelp(BOOL fEnterMode);
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
}
class _IUnknownImpl : IUnknown
{
	OleClientSite parent;
	this(OleClientSite p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
	}
}
