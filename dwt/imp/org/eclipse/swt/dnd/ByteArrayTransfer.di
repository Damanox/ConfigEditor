// D import file generated from 'org\eclipse\swt\dnd\ByteArrayTransfer.d'
module org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.TransferData;
import java.lang.all;
public abstract class ByteArrayTransfer : Transfer
{
	public override TransferData[] getSupportedTypes();

	public override bool isSupportedType(TransferData transferData);

	protected override void javaToNative(Object object, TransferData transferData);

	protected override Object nativeToJava(TransferData transferData);

	bool checkByteArray(Object object);
}


