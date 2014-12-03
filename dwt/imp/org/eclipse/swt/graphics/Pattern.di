// D import file generated from 'org\eclipse\swt\graphics\Pattern.d'
module org.eclipse.swt.graphics.Pattern;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import java.lang.all;
public class Pattern : Resource
{
	alias Resource.init_ init_;
	public Gdip.Brush handle;

	public this(Device device, Image image);

	public this(Device device, float x1, float y1, float x2, float y2, Color color1, Color color2);

	public this(Device device, float x1, float y1, float x2, float y2, Color color1, int alpha1, Color color2, int alpha2);

	override void destroy();
	public override bool isDisposed();

	public override String toString();

}

