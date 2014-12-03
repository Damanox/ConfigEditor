// D import file generated from 'org\eclipse\swt\dnd\ImageTransfer.d'
module org.eclipse.swt.dnd.ImageTransfer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OBJIDL;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DND;
import java.lang.all;
public class ImageTransfer : ByteArrayTransfer
{
	mixin(gshared!"private static ImageTransfer _instance;");
	private static const String CF_DIB = "CF_DIB";


	private static const int CF_DIBID = COM.CF_DIB;


	mixin(sharedStaticThis!"{\x0a     _instance = new ImageTransfer();\x0a}");
	private this();

	public static ImageTransfer getInstance();

	public override void javaToNative(Object object, TransferData transferData);

	public override Object nativeToJava(TransferData transferData);

	protected override int[] getTypeIds();

	protected override String[] getTypeNames();

	bool checkImage(Object object);
	protected override bool validate(Object object);

}

