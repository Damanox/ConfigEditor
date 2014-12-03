// D import file generated from 'org\eclipse\swt\dnd\Clipboard.d'
module org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.OleEnumFORMATETC;
import org.eclipse.swt.dnd.DND;
import java.lang.all;
import java.lang.Thread;
public class Clipboard
{
	private Display display;

	private _IDataObjectImpl iDataObject;

	private int refCount;

	private Transfer[] transferAgents;

	private Object[] data;

	private int CFSTR_PREFERREDDROPEFFECT;

	public this(Display display);

	protected void checkSubclass();

	protected void checkWidget();

	public void clearContents();

	public void clearContents(int clipboards);

	public void dispose();

	public Object getContents(Transfer transfer);

	public Object getContents(Transfer transfer, int clipboards);

	public bool isDisposed();

	public void setContents(Object[] data, Transfer[] dataTypes);

	public void setContents(Object[] data, Transfer[] dataTypes, int clipboards);

	private int AddRef();

	private void createCOMInterfaces();

	private void disposeCOMInterfaces();

	LRESULT EnumFormatEtc(int dwDirection, IEnumFORMATETC* ppenumFormatetc);
	private IDataObject getAddress();

	LRESULT GetData(FORMATETC* pFormatetc, STGMEDIUM* pmedium);
	LRESULT QueryGetData(FORMATETC* pFormatetc);
	HRESULT QueryInterface(REFCIID riid, void** ppvObject);
	private ULONG Release();

	public TransferData[] getAvailableTypes();

	public TransferData[] getAvailableTypes(int clipboards);

	public String[] getAvailableTypeNames();

	private FORMATETC*[] _getAvailableTypes();

}

private class _IDataObjectImpl : IDataObject
{
	Clipboard parent;
	this(Clipboard p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		LRESULT GetData(FORMATETC* pFormatetc, STGMEDIUM* pmedium);
		LRESULT GetDataHere(FORMATETC* pFormatetc, STGMEDIUM* pmedium);
		LRESULT QueryGetData(FORMATETC* pFormatetc);
		LRESULT GetCanonicalFormatEtc(FORMATETC* pFormatetcIn, FORMATETC* pFormatetcOut);
		LRESULT SetData(FORMATETC* pFormatetc, STGMEDIUM* pmedium, BOOL fRelease);
		LRESULT EnumFormatEtc(DWORD dwDirection, IEnumFORMATETC* ppenumFormatetc);
		LRESULT DAdvise(FORMATETC* pFormatetc, DWORD advf, IAdviseSink pAdvSink, DWORD* pdwConnection);
		LRESULT DUnadvise(DWORD dwConnection);
		LRESULT EnumDAdvise(IEnumSTATDATA* ppenumAdvise);
	}
}

