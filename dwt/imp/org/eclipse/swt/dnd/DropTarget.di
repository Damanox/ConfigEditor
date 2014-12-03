// D import file generated from 'org\eclipse\swt\dnd\DropTarget.d'
module org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.ole.win32.OLEIDL;
import org.eclipse.swt.internal.ole.win32.ifs;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.DNDListener;
import org.eclipse.swt.dnd.DNDEvent;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.TableDropTargetEffect;
import org.eclipse.swt.dnd.TreeDropTargetEffect;
import java.lang.all;
public class DropTarget : Widget
{
	Control control;
	Listener controlListener;
	Transfer[] transferAgents;
	DropTargetEffect dropEffect;
	TransferData selectedDataType;
	int selectedOperation;
	int keyOperation = -1;
	IDataObject iDataObject;
	_IDropTargetImpl iDropTarget;
	int refCount;
	static const String DEFAULT_DROP_TARGET_EFFECT = "DEFAULT_DROP_TARGET_EFFECT";

	public this(Control control, int style);

	static int checkStyle(int style);
	public void addDropListener(DropTargetListener listener);

	ULONG AddRef();
	protected override void checkSubclass();

	void createCOMInterfaces();
	void disposeCOMInterfaces();
	int DragEnter_64(IDataObject pDataObject, DWORD grfKeyState, long pt, DWORD* pdwEffect);
	HRESULT DragEnter(IDataObject pDataObject, DWORD grfKeyState, POINTL pt, DWORD* pdwEffect);
	HRESULT DragLeave();
	int DragOver_64(int grfKeyState, long pt, DWORD* pdwEffect);
	HRESULT DragOver(int grfKeyState, POINTL pt, DWORD* pdwEffect);
	int Drop_64(IDataObject pDataObject, int grfKeyState, long pt, DWORD* pdwEffect);
	HRESULT Drop(IDataObject pDataObject, int grfKeyState, POINTL pt, DWORD* pdwEffect);
	public Control getControl();

	public DropTargetListener[] getDropListeners();

	public DropTargetEffect getDropTargetEffect();

	int getOperationFromKeyState(int grfKeyState);
	public Transfer[] getTransfer();

	void onDispose();
	int opToOs(int operation);
	int osToOp(int osOperation);
	HRESULT QueryInterface(REFCIID riid, void** ppvObject);
	ULONG Release();
	void refresh();
	public void removeDropListener(DropTargetListener listener);

	public void setDropTargetEffect(DropTargetEffect effect);

	bool setEventData(DNDEvent event, IDataObject pDataObject, int grfKeyState, POINTL pt, DWORD* pdwEffect);
	public void setTransfer(Transfer[] transferAgents);

}

class _IDropTargetImpl : IDropTarget
{
	DropTarget parent;
	this(DropTarget p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT DragEnter(IDataObject pDataObj, DWORD grfKeyState, POINTL pt, DWORD* pdwEffect);
		HRESULT DragOver(DWORD grfKeyState, POINTL pt, DWORD* pdwEffect);
		HRESULT DragLeave();
		HRESULT Drop(IDataObject pDataObj, DWORD grfKeyState, POINTL pt, DWORD* pdwEffect);
	}
}
