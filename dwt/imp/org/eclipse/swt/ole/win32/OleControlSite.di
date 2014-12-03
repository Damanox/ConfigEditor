// D import file generated from 'org\eclipse\swt\ole\win32\OleControlSite.d'
module org.eclipse.swt.ole.win32.OleControlSite;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMTYPES;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.ole.win32.ifs;
import org.eclipse.swt.internal.ole.win32.OAIDL;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.ole.win32.OleClientSite;
import org.eclipse.swt.ole.win32.OleEventSink;
import org.eclipse.swt.ole.win32.OlePropertyChangeSink;
import org.eclipse.swt.ole.win32.OleListener;
import org.eclipse.swt.ole.win32.OleAutomation;
import org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.ole.win32.OLE;
import java.lang.all;
public class OleControlSite : OleClientSite
{
	private _IOleControlSiteImpl iOleControlSite;

	private _IDispatchImpl iDispatch;

	private OlePropertyChangeSink olePropertyChangeSink;

	private OleEventSink[] oleEventSink;

	private GUID*[] oleEventSinkGUID;

	private IUnknown[] oleEventSinkIUnknown;

	private CONTROLINFO* currentControlInfo;

	private int[] sitePropertyIds;

	private Variant[] sitePropertyValues;

	static int SWT_RESTORECARET;

	public this(Composite parent, int style, String progId);

	public void addEventListener(int eventID, OleListener listener);

	static GUID* getDefaultEventSinkGUID(IUnknown unknown);
	public void addEventListener(OleAutomation automation, int eventID, OleListener listener);

	public void addEventListener(OleAutomation automation, String eventSinkId, int eventID, OleListener listener);

	void addEventListener(IUnknown iunknown, GUID* guid, int eventID, OleListener listener);
	protected override void addObjectReferences();

	public void addPropertyListener(int propertyID, OleListener listener);

	private void connectPropertyChangeSink();

	protected override void createCOMInterfaces();

	private void disconnectEventSinks();

	private void disconnectPropertyChangeSink();

	protected override void disposeCOMInterfaces();

	public override Color getBackground();

	public override Font getFont();

	public override Color getForeground();

	protected BSTR getLicenseInfo(GUID* clsid);

	public Variant getSiteProperty(int dispId);

	protected override HRESULT GetWindow(HWND* phwnd);

	private HRESULT Invoke(DISPID dispIdMember, REFIID riid, LCID lcid, WORD dwFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, UINT* pArgErr);

	private int OnControlInfoChanged();

	override void onFocusIn(Event e);
	override void onFocusOut(Event e);
	private int OnFocus(int fGotFocus);

	protected int OnUIDeactivate(int fUndoable);

	protected override HRESULT QueryInterface(REFCIID riid, void** ppvObject);

	protected override int Release();

	protected override void releaseObjectInterfaces();

	public void removeEventListener(int eventID, OleListener listener);

	public void removeEventListener(OleAutomation automation, GUID* guid, int eventID, OleListener listener);

	public void removeEventListener(OleAutomation automation, int eventID, OleListener listener);

	void removeEventListener(IUnknown iunknown, GUID* guid, int eventID, OleListener listener);
	public void removePropertyListener(int propertyID, OleListener listener);

	public override void setBackground(Color color);

	public override void setFont(Font font);

	public override void setForeground(Color color);

	public void setSiteProperty(int dispId, Variant value);

}

class _IDispatchImpl : IDispatch
{
	OleControlSite parent;
	this(OleControlSite p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT GetTypeInfoCount(UINT* pctinfo);
		HRESULT GetTypeInfo(UINT iTInfo, LCID lcid, ITypeInfo* ppTInfo);
		HRESULT GetIDsOfNames(REFCIID riid, LPCOLESTR* rgszNames, UINT cNames, LCID lcid, DISPID* rgDispId);
		HRESULT Invoke(DISPID dispIdMember, REFIID riid, LCID lcid, WORD wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, UINT* puArgErr);
	}
}
class _IOleControlSiteImpl : IOleControlSite
{
	OleControlSite parent;
	this(OleControlSite p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT OnControlInfoChanged();
		HRESULT LockInPlaceActive(BOOL fLock);
		HRESULT GetExtendedControl(LPDISPATCH* ppDisp);
		HRESULT TransformCoords(POINTL* pPtlHimetric, POINTF* pPtfContainer, DWORD dwFlags);
		HRESULT TranslateAccelerator(LPMSG pMsg, DWORD grfModifiers);
		HRESULT OnFocus(BOOL fGotFocus);
		HRESULT ShowPropertyFrame();
	}
}
