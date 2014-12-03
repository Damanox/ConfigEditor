// D import file generated from 'org\eclipse\swt\widgets\Sash.d'
module org.eclipse.swt.widgets.Sash;
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
public class Sash : Control
{
	alias Control.computeSize computeSize;
	alias Control.windowProc windowProc;
	bool dragging;
	int startX;
	int startY;
	int lastX;
	int lastY;
	static const int INCREMENT = 1;

	static const int PAGE_INCREMENT = 9;

	public this(Composite parent, int style);

	public void addSelectionListener(SelectionListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	override void createHandle();
	static int checkStyle(int style);
	public override Point computeSize(int wHint, int hHint, bool changed);

	void drawBand(int x, int y, int width, int height);
	public void removeSelectionListener(SelectionListener listener);

	override String windowClass();
	override int windowProc();
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_KEYDOWN(int wParam, int lParam);
	override LRESULT WM_GETDLGCODE(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_LBUTTONUP(int wParam, int lParam);
	override LRESULT WM_MOUSEMOVE(int wParam, int lParam);
	override LRESULT WM_SETCURSOR(int wParam, int lParam);
}

