// D import file generated from 'org\eclipse\swt\ole\win32\OleEventSink.d'
module org.eclipse.swt.ole.win32.OleEventSink;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.ole.win32.OAIDL;
import org.eclipse.swt.internal.ole.win32.ifs;
import org.eclipse.swt.ole.win32.OleControlSite;
import org.eclipse.swt.ole.win32.OleEventTable;
import org.eclipse.swt.ole.win32.OleListener;
import org.eclipse.swt.ole.win32.OleEvent;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.ole.win32.Variant;
final class OleEventSink
{
	private OleControlSite widget;

	private _DispatchImpl iDispatch;

	private int refCount;

	private IUnknown objIUnknown;

	private int eventCookie;

	private GUID* eventGuid;

	private OleEventTable eventTable;

	this(OleControlSite widget, IUnknown iUnknown, GUID* riid);
	void connect();
	void addListener(int eventID, OleListener listener);
	int AddRef();
	private void createCOMInterfaces();

	void disconnect();
	private void disposeCOMInterfaces();

	private HRESULT Invoke(DISPID dispIdMember, REFIID riid, LCID lcid, WORD wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, UINT* puArgErr);

	private void notifyListener(int eventType, OleEvent event);

	private HRESULT QueryInterface(REFCIID riid, void** ppvObject);

	int Release();
	void removeListener(int eventID, OleListener listener);
	bool hasListeners();
}

private class _DispatchImpl : IDispatch
{
	OleEventSink parent;
	this(OleEventSink sink);
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

