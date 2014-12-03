// D import file generated from 'org\eclipse\swt\widgets\Scrollable.d'
module org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Widget;
import java.lang.all;
public abstract class Scrollable : Control
{
	alias Control.windowProc windowProc;
	ScrollBar horizontalBar;
	ScrollBar verticalBar;
	this();
	public this(Composite parent, int style);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	public Rectangle computeTrim(int x, int y, int width, int height);

	ScrollBar createScrollBar(int type);
	override void createWidget();
	void destroyScrollBar(int type);
	public Rectangle getClientArea();

	public ScrollBar getHorizontalBar();

	public ScrollBar getVerticalBar();

	override void releaseChildren(bool destroy);
	HANDLE scrolledHandle();
	override int widgetExtStyle();
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_HSCROLL(int wParam, int lParam);
	override LRESULT WM_MOUSEWHEEL(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_VSCROLL(int wParam, int lParam);
	override LRESULT wmNCPaint(HWND hwnd, int wParam, int lParam);
	LRESULT wmScroll(ScrollBar bar, bool update, HWND hwnd, int msg, int wParam, int lParam);
}


