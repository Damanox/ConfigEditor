// D import file generated from 'org\eclipse\swt\ole\win32\OleFrame.d'
module org.eclipse.swt.ole.win32.OleFrame;
import java.util.Vector;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OLEIDL;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.ole.win32.OleClientSite;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.internal.LONG;
import java.lang.all;
import java.lang.Runnable;
final public class OleFrame : Composite
{
	private _IOleInPlaceFrameImpl iOleInPlaceFrame;

	private IOleInPlaceActiveObject objIOleInPlaceActiveObject;

	private OleClientSite currentdoc;

	private int refCount = 0;

	private MenuItem[] fileMenuItems;

	private MenuItem[] containerMenuItems;

	private MenuItem[] windowMenuItems;

	private Listener listener;

	private static String CHECK_FOCUS = "OLE_CHECK_FOCUS";


	private static String HHOOK = "OLE_HHOOK";


	private static String HHOOKMSG = "OLE_HHOOK_MSG";


	private static bool ignoreNextKey;


	private static const short[] ACCENTS = [cast(short)'~', '`', '\'', '^', '"'];


	private static const String CONSUME_KEY = "org.eclipse.swt.OleFrame.ConsumeKey";


	public this(Composite parent, int style);

	private static void initCheckFocus(Display display_);

	private static void initMsgHook(Display display);

	extern (Windows) static int getMsgProc(int code, uint wParam, int lParam);

	int AddRef();
	private int ContextSensitiveHelp(int fEnterMode);

	private void createCOMInterfaces();

	private void disposeCOMInterfaces();

	private HRESULT GetBorder(LPRECT lprectBorder);

	public MenuItem[] getContainerMenus();

	public MenuItem[] getFileMenus();

	IOleInPlaceFrame getIOleInPlaceFrame();
	private int getMenuItemID(HMENU hMenu, int index);

	private int GetWindow(HWND* phwnd);

	public MenuItem[] getWindowMenus();

	private HRESULT InsertMenus(HMENU hmenuShared, LPOLEMENUGROUPWIDTHS lpMenuWidths);

	void onActivate(Event e);
	void onDeactivate(Event e);
	private void onDispose(Event e);

	private void onResize(Event e);

	private HRESULT QueryInterface(REFCIID riid, void** ppvObject);

	int Release();
	private void releaseObjectInterfaces();

	private int RemoveMenus(HMENU hmenuShared);

	private int RequestBorderSpace(LPCBORDERWIDTHS pborderwidths);

	HRESULT SetActiveObject(LPOLEINPLACEACTIVEOBJECT pActiveObject, LPCOLESTR pszObjName);
	private HRESULT SetBorderSpace(LPCBORDERWIDTHS pborderwidths);

	public void setContainerMenus(MenuItem[] containerMenus);

	OleClientSite getCurrentDocument();
	void setCurrentDocument(OleClientSite doc);
	public void setFileMenus(MenuItem[] fileMenus);

	HRESULT SetMenu(HMENU hmenuShared, HOLEMENU holemenu, HWND hwndActiveObject);
	public void setWindowMenus(MenuItem[] windowMenus);

	private bool translateOleAccelerator(MSG* msg);

	HRESULT TranslateAccelerator(LPMSG lpmsg, WORD wID);
}


class _IOleInPlaceFrameImpl : IOleInPlaceFrame
{
	OleFrame parent;
	this(OleFrame p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT GetWindow(HWND* phwnd);
		HRESULT ContextSensitiveHelp(BOOL fEnterMode);
		HRESULT GetBorder(LPRECT lprectBorder);
		HRESULT RequestBorderSpace(LPCBORDERWIDTHS pborderwidths);
		HRESULT SetBorderSpace(LPCBORDERWIDTHS pborderwidths);
		HRESULT SetActiveObject(LPOLEINPLACEACTIVEOBJECT pActiveObject, LPCOLESTR pszObjName);
		HRESULT InsertMenus(HMENU hmenuShared, LPOLEMENUGROUPWIDTHS lpMenuWidths);
		HRESULT SetMenu(HMENU hmenuShared, HOLEMENU holemenu, HWND hwndActiveObject);
		HRESULT RemoveMenus(HMENU hmenuShared);
		HRESULT SetStatusText(LPCOLESTR pszStatusText);
		HRESULT EnableModeless(BOOL fEnable);
		HRESULT TranslateAccelerator(LPMSG lpmsg, WORD wID);
	}
}
