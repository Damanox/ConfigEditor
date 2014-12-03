// D import file generated from 'org\eclipse\swt\widgets\FontDialog.d'
module org.eclipse.swt.widgets.FontDialog;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Display;
import java.lang.all;
public class FontDialog : Dialog
{
	FontData fontData;
	RGB rgb;
	public this(Shell parent);

	public this(Shell parent, int style);

	public FontData getFontData();

	public FontData[] getFontList();

	public RGB getRGB();

	public FontData open();

	public void setFontData(FontData fontData);

	public void setFontList(FontData[] fontData);

	public void setRGB(RGB rgb);

}

