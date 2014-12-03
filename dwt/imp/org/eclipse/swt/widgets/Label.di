// D import file generated from 'org\eclipse\swt\widgets\Label.d'
module org.eclipse.swt.widgets.Label;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class Label : Control
{
	alias Control.computeSize computeSize;
	alias Control.windowProc windowProc;
	String text = "";
	Image image;
	static const int MARGIN = 4;

	static const bool IMAGE_AND_TEXT = false;

	mixin(gshared!"private static /+const+/ WNDPROC LabelProc;");
	static const TCHAR[] LabelClass = "STATIC\x00";

	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	public int getAlignment();

	public Image getImage();

	override String getNameText();
	public String getText();

	override bool mnemonicHit(wchar key);
	override bool mnemonicMatch(wchar key);
	override void releaseWidget();
	public void setAlignment(int alignment);

	public void setImage(Image image);

	public void setText(String string);

	override int widgetExtStyle();
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_UPDATEUISTATE(int wParam, int lParam);
	override LRESULT wmColorChild(int wParam, int lParam);
	override LRESULT WM_PAINT(int wParam, int lParam);
	override LRESULT wmDrawChild(int wParam, int lParam);
}

