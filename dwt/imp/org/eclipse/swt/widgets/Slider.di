// D import file generated from 'org\eclipse\swt\widgets\Slider.d'
module org.eclipse.swt.widgets.Slider;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class Slider : Control
{
	alias Control.computeSize computeSize;
	alias Control.setBounds setBounds;
	alias Control.windowProc windowProc;
	int increment;
	int pageIncrement;
	bool ignoreFocus;
	mixin(gshared!"static /+const+/ WNDPROC ScrollBarProc;");
	static const TCHAR[] ScrollBarClass = "SCROLLBAR";

	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	public void addSelectionListener(SelectionListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createWidget();
	override int defaultBackground();
	override int defaultForeground();
	override void enableWidget(bool enabled);
	public override bool getEnabled();

	public int getIncrement();

	public int getMaximum();

	public int getMinimum();

	public int getPageIncrement();

	public int getSelection();

	public int getThumb();

	public void removeSelectionListener(SelectionListener listener);

	override void setBounds(int x, int y, int width, int height, int flags);
	public void setIncrement(int value);

	public void setMaximum(int value);

	public void setMinimum(int value);

	public void setPageIncrement(int value);

	bool SetScrollInfo(HWND hwnd, int flags, SCROLLINFO* info, bool fRedraw);
	public void setSelection(int value);

	public void setThumb(int value);

	public void setValues(int selection, int minimum, int maximum, int thumb, int increment, int pageIncrement);

	override int widgetExtStyle();
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_KEYDOWN(int wParam, int lParam);
	override LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT wmScrollChild(int wParam, int lParam);
}

