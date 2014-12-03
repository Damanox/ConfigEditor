// D import file generated from 'org\eclipse\swt\widgets\Widget.d'
module org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.EventTable;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.TypedListener;
import java.lang.all;
import java.lang.Thread;
public abstract class Widget
{
	int style;
	int state;
	Display display;
	EventTable eventTable;
	Object data;
	public alias org.eclipse.swt.internal.win32.OS.LDWTRESULT LRESULT;

	static const int DISPOSED = 1 << 0;

	static const int CANVAS = 1 << 1;

	static const int KEYED_DATA = 1 << 2;

	static const int DISABLED = 1 << 3;

	static const int HIDDEN = 1 << 4;

	static const int LAYOUT_NEEDED = 1 << 5;

	static const int LAYOUT_CHANGED = 1 << 6;

	static const int LAYOUT_CHILD = 1 << 7;

	static const int THEME_BACKGROUND = 1 << 8;

	static const int DRAW_BACKGROUND = 1 << 9;

	static const int PARENT_BACKGROUND = 1 << 10;

	static const int RELEASED = 1 << 11;

	static const int DISPOSE_SENT = 1 << 12;

	static const int TRACK_MOUSE = 1 << 13;

	static const int FOREIGN_HANDLE = 1 << 14;

	static const int DRAG_DETECT = 1 << 15;

	static const int MOVE_OCCURRED = 1 << 16;

	static const int MOVE_DEFERRED = 1 << 17;

	static const int RESIZE_OCCURRED = 1 << 18;

	static const int RESIZE_DEFERRED = 1 << 19;

	static const int IGNORE_WM_CHANGEUISTATE = 1 << 20;

	static const int DEFAULT_WIDTH = 64;

	static const int DEFAULT_HEIGHT = 64;

	static const 
	{
		int MAJOR = 5;
		int MINOR = 80;
	}
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	this();
	public this(Widget parent, int style);

	void _addListener(int eventType, Listener listener);
	public void addListener(int eventType, Listener listener);

	public void addDisposeListener(DisposeListener listener);

	int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkBits(int style, int int0, int int1, int int2, int int3, int int4, int int5);
	void checkOrientation(Widget parent);
	void checkOpened();
	void checkParent(Widget parent);
	protected void checkSubclass();

	void checkWidget();
	void destroyWidget();
	HDWP DeferWindowPos(HDWP hWinPosInfo, HWND hWnd, HWND hWndInsertAfter, int X, int Y, int cx, int cy, int uFlags);
	public void dispose();

	bool dragDetect(HWND hwnd, int x, int y, bool filter, bool[] detect, bool[] consume);
	void error(int code);
	bool filters(int eventType);
	Widget findItem(HANDLE id);
	char[] fixMnemonic(String string);
	char[] fixMnemonic(String string, bool spaces);
	public Object getData();

	public String getDataStr();

	public Object getData(String key);

	public String getDataStr(String key);

	public Display getDisplay();

	public Listener[] getListeners(int eventType);

	Menu getMenu();
	String getName();
	String getNameText();
	public int getStyle();

	bool hooks(int eventType);
	public bool isDisposed();

	public bool isListening(int eventType);

	bool isValidSubclass();
	bool isValidThread();
	void mapEvent(HWND hwnd, Event event);
	GC new_GC(GCData data);
	public void notifyListeners(int eventType, Event event);

	void postEvent(int eventType);
	void postEvent(int eventType, Event event);
	void release(bool destroy);
	void releaseChildren(bool destroy);
	void releaseHandle();
	void releaseParent();
	void releaseWidget();
	public void removeListener(int eventType, Listener listener);

	protected void removeListener(int eventType, SWTEventListener listener);

	public void removeDisposeListener(DisposeListener listener);

	bool sendDragEvent(int button, int x, int y);
	bool sendDragEvent(int button, int stateMask, int x, int y);
	void sendEvent(Event event);
	void sendEvent(int eventType);
	void sendEvent(int eventType, Event event);
	void sendEvent(int eventType, Event event, bool send);
	bool sendKeyEvent(int type, int msg, int wParam, int lParam);
	bool sendKeyEvent(int type, int msg, int wParam, int lParam, Event event);
	bool sendMouseEvent(int type, int button, HWND hwnd, int msg, int wParam, int lParam);
	bool sendMouseEvent(int type, int button, int count, int detail, bool send, HWND hwnd, int msg, int wParam, int lParam);
	public void setData(Object data);

	public void setDataStr(String data);

	public void setData(String key, Object value);

	public void setDataStr(String key, String value);

	bool sendFocusEvent(int type);
	bool setInputState(Event event, int type);
	bool setKeyState(Event event, int type, int wParam, int lParam);
	bool SetWindowPos(HWND hWnd, HWND hWndInsertAfter, int X, int Y, int cx, int cy, int uFlags);
	bool showMenu(int x, int y);
	public override String toString();

	LRESULT wmCaptureChanged(HWND hwnd, int wParam, int lParam);
	LRESULT wmChar(HWND hwnd, int wParam, int lParam);
	LRESULT wmContextMenu(HWND hwnd, int wParam, int lParam);
	LRESULT wmIMEChar(HWND hwnd, int wParam, int lParam);
	LRESULT wmKeyDown(HWND hwnd, int wParam, int lParam);
	LRESULT wmKeyUp(HWND hwnd, int wParam, int lParam);
	LRESULT wmKillFocus(HWND hwnd, int wParam, int lParam);
	LRESULT wmLButtonDblClk(HWND hwnd, int wParam, int lParam);
	LRESULT wmLButtonDown(HWND hwnd, int wParam, int lParam);
	LRESULT wmLButtonUp(HWND hwnd, int wParam, int lParam);
	LRESULT wmMButtonDblClk(HWND hwnd, int wParam, int lParam);
	LRESULT wmMButtonDown(HWND hwnd, int wParam, int lParam);
	LRESULT wmMButtonUp(HWND hwnd, int wParam, int lParam);
	LRESULT wmMouseHover(HWND hwnd, int wParam, int lParam);
	LRESULT wmMouseLeave(HWND hwnd, int wParam, int lParam);
	LRESULT wmMouseMove(HWND hwnd, int wParam, int lParam);
	LRESULT wmMouseWheel(HWND hwnd, int wParam, int lParam);
	LRESULT wmNCPaint(HWND hwnd, int wParam, int lParam);
	LRESULT wmPaint(HWND hwnd, int wParam, int lParam);
	LRESULT wmPrint(HWND hwnd, int wParam, int lParam);
	LRESULT wmRButtonDblClk(HWND hwnd, int wParam, int lParam);
	LRESULT wmRButtonDown(HWND hwnd, int wParam, int lParam);
	LRESULT wmRButtonUp(HWND hwnd, int wParam, int lParam);
	LRESULT wmSetFocus(HWND hwnd, int wParam, int lParam);
	LRESULT wmSysChar(HWND hwnd, int wParam, int lParam);
	LRESULT wmSysKeyDown(HWND hwnd, int wParam, int lParam);
	LRESULT wmSysKeyUp(HWND hwnd, int wParam, int lParam);
	LRESULT wmXButtonDblClk(HWND hwnd, int wParam, int lParam);
	LRESULT wmXButtonDown(HWND hwnd, int wParam, int lParam);
	LRESULT wmXButtonUp(HWND hwnd, int wParam, int lParam);
}


