// D import file generated from 'org\eclipse\swt\dnd\TransferData.d'
module org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
public class TransferData
{
	public int type;

	public FORMATETC* formatetc;

	public STGMEDIUM* stgmedium;

	public int result = COM.E_FAIL;

	public IDataObject pIDataObject;

	static bool sameType(TransferData data1, TransferData data2);
}

