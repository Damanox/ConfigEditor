// D import file generated from 'org\eclipse\swt\widgets\Tracker.d'
module org.eclipse.swt.widgets.Tracker;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class Tracker : Widget
{
	Control parent;
	bool tracking;
	bool cancelled;
	bool stippled;
	Rectangle[] rectangles;
	Rectangle[] proportions;
	Rectangle bounds;
	HCURSOR resizeCursor;
	Cursor clientCursor;
	int cursorOrientation = SWT.NONE;
	bool inEvent = false;
	HWND hwndTransparent;
	WNDPROC oldProc;
	int oldX;
	int oldY;
	static const int STEPSIZE_SMALL = 1;

	static const int STEPSIZE_LARGE = 9;

	public this(Composite parent, int style);

	public this(Display display, int style);

	public void addControlListener(ControlListener listener);

	public void addKeyListener(KeyListener listener);

	Point adjustMoveCursor();
	Point adjustResizeCursor();
	static int checkStyle(int style);
	public void close();

	Rectangle computeBounds();
	Rectangle[] computeProportions(Rectangle[] rects);
	void drawRectangles(Rectangle[] rects, bool stippled);
	public Rectangle[] getRectangles();

	public bool getStippled();

	void moveRectangles(int xChange, int yChange);
	public bool open();

	override void releaseWidget();
	public void removeControlListener(ControlListener listener);

	public void removeKeyListener(KeyListener listener);

	void resizeRectangles(int xChange, int yChange);
	public void setCursor(Cursor newCursor);

	public void setRectangles(Rectangle[] rectangles);

	public void setStippled(bool stippled);

	private extern (Windows) static int transparentFunc(HWND hwnd, int msg, int wParam, int lParam);


	int transparentProc(HWND hwnd, int msg, int wParam, int lParam);
	void update();
	override LRESULT wmKeyDown(HWND hwnd, int wParam, int lParam);
	override LRESULT wmSysKeyDown(HWND hwnd, int wParam, int lParam);
	LRESULT wmMouse(int message, int wParam, int lParam);
}

