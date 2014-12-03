// D import file generated from 'org\eclipse\swt\graphics\Cursor.d'
module org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Image;
import java.lang.all;
public final class Cursor : Resource
{
	alias Resource.init_ init_;
	public HCURSOR handle;

	bool isIcon;
	static byte[] HAND_SOURCE = [cast(byte)249, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)240, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)240, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)240, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)240, cast(byte)63, cast(byte)255, cast(byte)255, cast(byte)240, cast(byte)7, cast(byte)255, cast(byte)255, cast(byte)240, cast(byte)3, cast(byte)255, cast(byte)255, cast(byte)240, cast(byte)0, cast(byte)255, cast(byte)255, cast(byte)16, cast(byte)0, cast(byte)127, cast(byte)255, cast(byte)0, cast(byte)0, cast(byte)127, cast(byte)255, cast(byte)128, cast(byte)0, cast(byte)127, cast(byte)255, cast(byte)192, cast(byte)0, cast(byte)127, cast(byte)255, cast(byte)224, cast(byte)0, cast(byte)127, cast(byte)255, cast(byte)240, cast(byte)0, cast(byte)127, cast(byte)255, cast(byte)248, cast(byte)0, cast(byte)255, cast(byte)255, cast(byte)252, cast(byte)1, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255, cast(byte)255];

	static byte[] HAND_MASK = [cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)6, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)6, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)6, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)6, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)6, cast(byte)192, cast(byte)0, cast(byte)0, cast(byte)6, cast(byte)216, cast(byte)0, cast(byte)0, cast(byte)6, cast(byte)216, cast(byte)0, cast(byte)0, cast(byte)7, cast(byte)219, cast(byte)0, cast(byte)0, cast(byte)103, cast(byte)251, cast(byte)0, cast(byte)0, cast(byte)63, cast(byte)255, cast(byte)0, cast(byte)0, cast(byte)31, cast(byte)255, cast(byte)0, cast(byte)0, cast(byte)15, cast(byte)255, cast(byte)0, cast(byte)0, cast(byte)7, cast(byte)255, cast(byte)0, cast(byte)0, cast(byte)3, cast(byte)254, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0, cast(byte)0];

	this(Device device);
	public this(Device device, int style);

	public this(Device device, ImageData source, ImageData mask, int hotspotX, int hotspotY);

	public this(Device device, ImageData source, int hotspotX, int hotspotY);

	override void destroy();
	public override equals_t opEquals(Object object);

	public override hash_t toHash();

	public override bool isDisposed();

	public override String toString();

	public static Cursor win32_new(Device device, HCURSOR handle);

}


