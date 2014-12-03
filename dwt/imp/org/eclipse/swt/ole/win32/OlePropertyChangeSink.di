// D import file generated from 'org\eclipse\swt\ole\win32\OlePropertyChangeSink.d'
module org.eclipse.swt.ole.win32.OlePropertyChangeSink;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.ole.win32.ifs;
import org.eclipse.swt.ole.win32.OleControlSite;
import org.eclipse.swt.ole.win32.OleEventTable;
import org.eclipse.swt.ole.win32.OleListener;
import org.eclipse.swt.ole.win32.OleEvent;
import org.eclipse.swt.ole.win32.OleEventTable;
import org.eclipse.swt.ole.win32.OLE;
final class OlePropertyChangeSink
{
	private OleControlSite controlSite;

	private _IPropertyNotifySinkImpl iPropertyNotifySink;

	private int refCount;

	private int propertyCookie;

	private OleEventTable eventTable;

	this(OleControlSite controlSite);
	void addListener(int propertyID, OleListener listener);
	int AddRef();
	void connect(IUnknown objIUnknown);
	protected void createCOMInterfaces();

	void disconnect(IUnknown objIUnknown);
	private void disposeCOMInterfaces();

	private void notifyListener(int eventType, OleEvent event);

	package int OnChanged(int dispID);

	package int OnRequestEdit(int dispID);

	protected HRESULT QueryInterface(REFCIID riid, void** ppvObject);

	int Release();
	void removeListener(int propertyID, OleListener listener);
}

private class _IPropertyNotifySinkImpl : IPropertyNotifySink
{
	OlePropertyChangeSink parent;
	this(OlePropertyChangeSink p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		int OnChanged(int dispID);
		int OnRequestEdit(int dispID);
	}
}

