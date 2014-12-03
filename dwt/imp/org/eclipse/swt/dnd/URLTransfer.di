// D import file generated from 'org\eclipse\swt\dnd\URLTransfer.d'
module org.eclipse.swt.dnd.URLTransfer;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DND;
import java.lang.all;
public class URLTransfer : ByteArrayTransfer
{
	static URLTransfer _instance;

	static const String CFSTR_INETURL = "UniformResourceLocator";

	mixin(gshared!"static const int CFSTR_INETURLID;");
	mixin(sharedStaticThis!"{\x0a    CFSTR_INETURLID = registerType(CFSTR_INETURL);\x0a}");
	private this();

	public static URLTransfer getInstance();

	public override void javaToNative(Object object, TransferData transferData);

	public override Object nativeToJava(TransferData transferData);

	protected override int[] getTypeIds();

	protected override String[] getTypeNames();

	bool checkURL(Object object);
	protected override bool validate(Object object);

}

