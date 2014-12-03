// D import file generated from 'org\eclipse\swt\graphics\Color.d'
module org.eclipse.swt.graphics.Color;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Device;
import java.lang.all;
public final class Color : Resource
{
	alias Resource.init_ init_;
	public COLORREF handle;

	this(Device device);
	public this(Device device, int red, int green, int blue);

	public this(Device device, constRGB rgb);

	override void destroy();
	public override equals_t opEquals(Object object);

	public int getBlue();

	public int getGreen();

	public int getRed();

	public RGB getRGB();

	public int hashCode();

	void init_(int red, int green, int blue);
	public override bool isDisposed();

	public override String toString();

	public static Color win32_new(Device device, int handle);

}


