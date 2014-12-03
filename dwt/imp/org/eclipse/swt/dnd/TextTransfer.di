// D import file generated from 'org\eclipse\swt\dnd\TextTransfer.d'
module org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DND;
import java.lang.all;
public class TextTransfer : ByteArrayTransfer
{
	private static TextTransfer _instance;


	private static const String CF_UNICODETEXT = "CF_UNICODETEXT";


	private static const String CF_TEXT = "CF_TEXT";


	private static const int CF_UNICODETEXTID = COM.CF_UNICODETEXT;


	private static const int CF_TEXTID = COM.CF_TEXT;


	private this();

	public static TextTransfer getInstance();

	public override void javaToNative(Object object, TransferData transferData);

	public override Object nativeToJava(TransferData transferData);

	protected override int[] getTypeIds();

	protected override String[] getTypeNames();

	bool checkText(Object object);
	protected override bool validate(Object object);

}

