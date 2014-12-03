// D import file generated from 'org\eclipse\swt\widgets\Scale.d'
module org.eclipse.swt.widgets.Scale;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class Scale : Control
{
	alias Control.computeSize computeSize;
	alias Control.setBackgroundImage setBackgroundImage;
	alias Control.windowProc windowProc;
	bool ignoreResize;
	bool ignoreSelection;
	mixin(gshared!"private static /+const+/ WNDPROC TrackBarProc;");
	mixin(gshared!"static const TCHAR[] TrackBarClass = OS.TRACKBAR_CLASS;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	public void addSelectionListener(SelectionListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	override int defaultForeground();
	public int getIncrement();

	public int getMaximum();

	public int getMinimum();

	public int getPageIncrement();

	public int getSelection();

	public void removeSelectionListener(SelectionListener listener);

	override void setBackgroundImage(HBITMAP hImage);
	override void setBackgroundPixel(int pixel);
	override void setBounds(int x, int y, int width, int height, int flags, bool defer);
	public void setIncrement(int increment);

	public void setMaximum(int value);

	public void setMinimum(int value);

	public void setPageIncrement(int pageIncrement);

	public void setSelection(int value);

	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_MOUSEWHEEL(int wParam, int lParam);
	override LRESULT WM_PAINT(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT wmScrollChild(int wParam, int lParam);
}

