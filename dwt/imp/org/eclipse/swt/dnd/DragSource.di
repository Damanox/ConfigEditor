// D import file generated from 'org\eclipse\swt\dnd\DragSource.d'
module org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OLEIDL;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.ole.win32.ifs;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.dnd.DragSourceEffect;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.DNDListener;
import org.eclipse.swt.dnd.DNDEvent;
import org.eclipse.swt.dnd.TreeDragSourceEffect;
import org.eclipse.swt.dnd.TableDragSourceEffect;
import org.eclipse.swt.dnd.OleEnumFORMATETC;
import java.lang.all;
public class DragSource : Widget
{
	Control control;
	Listener controlListener;
	Transfer[] transferAgents;
	DragSourceEffect dragEffect;
	Composite topControl;
	HWND hwndDrag;
	_IDropSourceImpl iDropSource;
	_IDataObjectImpl iDataObject;
	int refCount;
	int dataEffect = DND.DROP_NONE;
	static const String DEFAULT_DRAG_SOURCE_EFFECT = "DEFAULT_DRAG_SOURCE_EFFECT";

	mixin(gshared!"static const int CFSTR_PERFORMEDDROPEFFECT;");
	static const TCHAR[] WindowClass = "#32770\x00";

	mixin(sharedStaticThis!"{\x0a        CFSTR_PERFORMEDDROPEFFECT  = Transfer.registerType(\"Performed DropEffect\");     //$NON-NLS-1$\x0a    }");
	public this(Control control, int style);

	static int checkStyle(int style);
	public void addDragListener(DragSourceListener listener);

	private int AddRef();

	private void createCOMInterfaces();

	protected override void checkSubclass();

	private void disposeCOMInterfaces();

	private void drag(Event dragEvent);

	private int EnumFormatEtc(int dwDirection, IEnumFORMATETC* ppenumFormatetc);

	public Control getControl();

	.LRESULT GetData(FORMATETC* pFormatetc, STGMEDIUM* pmedium);
	public DragSourceListener[] getDragListeners();

	public DragSourceEffect getDragSourceEffect();

	public Transfer[] getTransfer();

	package .LRESULT GiveFeedback(DWORD dwEffect);

	package .LRESULT QueryContinueDrag(int fEscapePressed, DWORD grfKeyState);

	private void onDispose();

	private int opToOs(int operation);

	private int osToOp(int osOperation);

	private .LRESULT QueryGetData(FORMATETC* pFormatetc);

	private HRESULT QueryInterface(REFCIID riid, void** ppvObject);

	private ULONG Release();

	public void removeDragListener(DragSourceListener listener);

	.LRESULT SetData(FORMATETC* pFormatetc, STGMEDIUM* pmedium, int fRelease);
	public void setDragSourceEffect(DragSourceEffect effect);

	public void setTransfer(Transfer[] transferAgents);

}

private class _IDropSourceImpl : IDropSource
{
	DragSource parent;
	this(DragSource p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT QueryContinueDrag(BOOL fEscapePressed, DWORD grfKeyState);
		HRESULT GiveFeedback(DWORD dwEffect);
	}
}

private class _IDataObjectImpl : IDataObject
{
	DragSource parent;
	this(DragSource p);
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

