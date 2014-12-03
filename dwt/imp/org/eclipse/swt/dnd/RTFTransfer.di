// D import file generated from 'org\eclipse\swt\dnd\RTFTransfer.d'
module org.eclipse.swt.dnd.RTFTransfer;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DND;
import java.lang.all;
public class RTFTransfer : ByteArrayTransfer
{
	private static RTFTransfer _instance;


	private static const String CF_RTF = "Rich Text Format";


	mixin(gshared!"private static const int CF_RTFID;");
	mixin(sharedStaticThis!"{\x0a    CF_RTFID = registerType(CF_RTF);\x0a}");
	private this();

	public static RTFTransfer getInstance();

	public override void javaToNative(Object object, TransferData transferData);

	public override Object nativeToJava(TransferData transferData);

	protected override int[] getTypeIds();

	protected override String[] getTypeNames();

	bool checkRTF(Object object);
	protected override bool validate(Object object);

}

