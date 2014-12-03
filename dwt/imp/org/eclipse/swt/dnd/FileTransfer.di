// D import file generated from 'org\eclipse\swt\dnd\FileTransfer.d'
module org.eclipse.swt.dnd.FileTransfer;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DND;
import java.lang.all;
public class FileTransfer : ByteArrayTransfer
{
	private static FileTransfer _instance;


	private static const String CF_HDROP = "CF_HDROP ";


	private static const int CF_HDROPID = COM.CF_HDROP;


	private static const String CF_HDROP_SEPARATOR = "\x00";


	private this();

	public static FileTransfer getInstance();

	public override void javaToNative(Object object, TransferData transferData);

	public override Object nativeToJava(TransferData transferData);

	protected override int[] getTypeIds();

	protected override String[] getTypeNames();

	bool checkFile(Object object);
	protected override bool validate(Object object);

}

