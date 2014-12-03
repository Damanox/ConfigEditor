// D import file generated from 'org\eclipse\swt\dnd\HTMLTransfer.d'
module org.eclipse.swt.dnd.HTMLTransfer;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DND;
import java.lang.all;
public class HTMLTransfer : ByteArrayTransfer
{
	static HTMLTransfer _instance;

	static const String HTML_FORMAT = "HTML Format";

	mixin(gshared!"static const int HTML_FORMATID;");
	static const String NUMBER = "00000000";

	static const String HEADER = "Version:0.9\x0d\x0aStartHTML:" ~ NUMBER ~ "\x0d\x0aEndHTML:" ~ NUMBER ~ "\x0d\x0aStartFragment:" ~ NUMBER ~ "\x0d\x0aEndFragment:" ~ NUMBER ~ "\x0d\x0a";

	static const String PREFIX = "<html><body><!--StartFragment-->";

	static const String SUFFIX = "<!--EndFragment--></body></html>";

	static const String StartFragment = "StartFragment:";

	static const String EndFragment = "EndFragment:";

	mixin(sharedStaticThis!"{\x0a    HTML_FORMATID = registerType(HTML_FORMAT);\x0a}");
	private this();

	public static HTMLTransfer getInstance();

	public override void javaToNative(Object object, TransferData transferData);

	public override Object nativeToJava(TransferData transferData);

	protected override int[] getTypeIds();

	protected override String[] getTypeNames();

	bool checkHTML(Object object);
	protected override bool validate(Object object);

}

