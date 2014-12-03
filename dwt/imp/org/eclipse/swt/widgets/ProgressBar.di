// D import file generated from 'org\eclipse\swt\widgets\ProgressBar.d'
module org.eclipse.swt.widgets.ProgressBar;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import java.lang.all;
public class ProgressBar : Control
{
	alias Control.computeSize computeSize;
	alias Control.windowProc windowProc;
	static const int DELAY = 100;

	static const int TIMER_ID = 100;

	static const int MINIMUM_WIDTH = 100;

	mixin(gshared!"private static /+const+/ WNDPROC ProgressBarProc;");
	static const TCHAR[] ProgressBarClass = OS.PROGRESS_CLASS;

	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	override int defaultForeground();
	public int getMaximum();

	public int getMinimum();

	public int getSelection();

	public int getState();

	override void releaseWidget();
	void startTimer();
	void stopTimer();
	override void setBackgroundPixel(int pixel);
	override void setForegroundPixel(int pixel);
	public void setMaximum(int value);

	public void setMinimum(int value);

	public void setSelection(int value);

	public void setState(int state);

	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_GETDLGCODE(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_TIMER(int wParam, int lParam);
}

