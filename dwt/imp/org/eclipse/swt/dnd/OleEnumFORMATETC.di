// D import file generated from 'org\eclipse\swt\dnd\OleEnumFORMATETC.d'
module org.eclipse.swt.dnd.OleEnumFORMATETC;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.win32.OS;
final class OleEnumFORMATETC
{
	private _IEnumFORMATETCImpl iEnumFORMATETC;

	private int refCount;

	private int index;

	private FORMATETC*[] formats;

	this();
	int AddRef();
	private void createCOMInterfaces();

	private void disposeCOMInterfaces();

	IEnumFORMATETC getAddress();
	private FORMATETC*[] getNextItems(int numItems);

	package HRESULT Next(ULONG celt, FORMATETC* rgelt, ULONG* pceltFetched);

	private HRESULT QueryInterface(REFCIID riid, void** ppvObject);

	int Release();
	private int Reset();

	void setFormats(FORMATETC*[] newFormats);
	private int Skip(int celt);

}

class _IEnumFORMATETCImpl : IEnumFORMATETC
{
	OleEnumFORMATETC parent;
	this(OleEnumFORMATETC p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT Next(ULONG celt, FORMATETC* rgelt, ULONG* pceltFetched);
		HRESULT Skip(ULONG celt);
		HRESULT Reset();
		HRESULT Clone(IEnumFORMATETC* ppenum);
	}
}
