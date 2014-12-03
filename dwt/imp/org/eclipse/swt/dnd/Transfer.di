// D import file generated from 'org\eclipse\swt\dnd\Transfer.d'
module org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.dnd.TransferData;
import java.lang.all;
import java.lang.Thread;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
public abstract class Transfer
{
	private static const int RETRY_LIMIT = 10;


	int getData(IDataObject dataObject, FORMATETC* pFormatetc, STGMEDIUM* pmedium);
	public abstract TransferData[] getSupportedTypes();

	public abstract bool isSupportedType(TransferData transferData);

	protected abstract int[] getTypeIds();

	protected abstract String[] getTypeNames();

	public abstract void javaToNative(Object object, TransferData transferData);

	public abstract Object nativeToJava(TransferData transferData);

	public static int registerType(String formatName);

	public bool validate(Object object);

}


