// D import file generated from 'org\eclipse\swt\graphics\Font.d'
module org.eclipse.swt.graphics.Font;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Device;
import java.lang.all;
public final class Font : Resource
{
	alias Resource.init_ init_;
	public HFONT handle;

	this(Device device);
	public this(Device device, FontData fd);

	public this(Device device, FontData[] fds);

	public this(Device device, String name, int height, int style);

	this(Device device, String name, float height, int style);
	override void destroy();
	public override equals_t opEquals(Object object);

	public FontData[] getFontData();

	public override hash_t toHash();

	void init_(FontData fd);
	public override bool isDisposed();

	public override String toString();

	public static Font win32_new(Device device, HFONT handle);

}


