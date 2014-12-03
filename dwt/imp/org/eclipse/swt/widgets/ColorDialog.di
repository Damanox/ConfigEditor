// D import file generated from 'org\eclipse\swt\widgets\ColorDialog.d'
module org.eclipse.swt.widgets.ColorDialog;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Display;
public class ColorDialog : Dialog
{
	Display display;
	int width;
	int height;
	RGB rgb;
	private static ColorDialog sThis;


	public this(Shell parent);

	public this(Shell parent, int style);

	private extern (Windows) static uint CCHookFunc(HWND hdlg, uint uiMsg, uint lParam, int lpData);


	int CCHookProc(HWND hdlg, uint uiMsg, uint lParam);
	public RGB getRGB();

	public RGB open();

	public void setRGB(RGB rgb);

}

