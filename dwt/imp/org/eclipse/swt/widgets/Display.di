// D import file generated from 'org\eclipse\swt\widgets\Display.d'
module org.eclipse.swt.widgets.Display;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.DeviceData;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Tray;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.EventTable;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Synchronizer;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.TrayItem;
import java.lang.all;
import java.lang.Thread;
public class Display : Device
{
	public MSG* msg;

	Event[] eventQueue;
	int threadId;
	StringT windowClass_;
	StringT windowShadowClass;
	mixin(gshared!"static int WindowClassCount;");
	static const String WindowName = "SWT_Window";

	static const String WindowShadowName = "SWT_WindowShadow";

	EventTable eventTable;
	EventTable filterTable;
	int freeSlot;
	int[] indexTable;
	Control lastControl;
	Control lastGetControl;
	HANDLE lastHwnd;
	HWND lastGetHwnd;
	Control[] controlTable;
	static const int GROW_SIZE = 1024;

	mixin(gshared!"private static /+const+/ int SWT_OBJECT_INDEX;");
	mixin(gshared!"static const bool USE_PROPERTY = !OS.IsWinCE;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	mixin(gshared!"static STARTUPINFO* lpStartupInfo;");
	private static void static_this_StartupInfo();

	HTHEME hButtonTheme_;
	HTHEME hEditTheme_;
	HTHEME hExplorerBarTheme_;
	HTHEME hScrollBarTheme_;
	HTHEME hTabTheme_;
	static const wchar[] BUTTON = "BUTTON\x00"w;

	static const wchar[] EDIT = "EDIT\x00"w;

	static const wchar[] EXPLORER = "EXPLORER\x00"w;

	static const wchar[] EXPLORERBAR = "EXPLORERBAR\x00"w;

	static const wchar[] SCROLLBAR = "SCROLLBAR\x00"w;

	static const wchar[] LISTVIEW = "LISTVIEW\x00"w;

	static const wchar[] TAB = "TAB\x00"w;

	static const wchar[] TREEVIEW = "TREEVIEW\x00"w;

	int focusEvent;
	Control focusControl;
	Menu[] bars;
	Menu[] popups;
	MenuItem[] items;
	static const int ID_START = 108;

	HHOOK filterHook;
	bool runDragDrop = true;
	bool dragCancelled = false;
	MSG* hookMsg;
	HHOOK idleHook;
	bool ignoreNextKey;
	int getMsgProc_;
	HHOOK msgHook;
	HWND embeddedHwnd;
	int embeddedProc_;
	static const String AWT_WINDOW_CLASS = "SunAwtWindow";

	static const short[] ACCENTS = [cast(short)'~', '`', '\'', '^', '"'];

	Synchronizer synchronizer;
	bool runMessages = true;
	bool runMessagesInIdle = false;
	bool runMessagesInMessageProc = true;
	static const String RUN_MESSAGES_IN_IDLE_KEY = "org.eclipse.swt.internal.win32.runMessagesInIdle";

	static const String RUN_MESSAGES_IN_MESSAGE_PROC_KEY = "org.eclipse.swt.internal.win32.runMessagesInMessageProc";

	Thread thread;
	Runnable[] disposeList;
	Tray tray;
	int nextTrayId;
	int[] timerIds;
	Runnable[] timerList;
	int nextTimerId = SETTINGS_ID + 1;
	static const int SETTINGS_ID = 100;

	static const int SETTINGS_DELAY = 2000;

	RECT* clickRect;
	int clickCount;
	int lastTime;
	int lastButton;
	HWND lastClickHwnd;
	int scrollRemainder;
	int lastKey;
	int lastAscii;
	int lastMouse;
	bool lastVirtual;
	bool lastNull;
	bool lastDead;
	ubyte[256] keyboard;
	bool accelKeyHit;
	bool mnemonicKeyHit;
	bool lockActiveWindow;
	bool captureChanged;
	bool xMouse;
	int nextToolTipId;
	bool ignoreRestoreFocus;
	Control lastHittestControl;
	int lastHittest;
	HWND hwndMessage;
	LOGFONT* lfSystemFont;
	Font systemFont;
	Image errorImage;
	Image infoImage;
	Image questionImage;
	Image warningIcon;
	Cursor[] cursors;
	Resource[] resources;
	static const int RESOURCE_SIZE = 1 + 4 + SWT.CURSOR_HAND + 1;

	ImageList[] imageList;
	ImageList[] toolImageList;
	ImageList[] toolHotImageList;
	ImageList[] toolDisabledImageList;
	COLORREF* lpCustColors;
	Image upArrow;
	Image downArrow;
	char[] tableBuffer;
	NMHDR* hdr;
	NMLVDISPINFO* plvfi;
	HWND hwndParent;
	int columnCount;
	bool[] columnVisible;
	int resizeCount;
	static const int RESIZE_LIMIT = 4;

	Object data;
	String[] keys;
	Object[] values;
	mixin(gshared!"static const int [] [] KeyTable = [\x0a\x0a        /* Keyboard and Mouse Masks */\x0a        [OS.VK_MENU,    SWT.ALT],\x0a        [OS.VK_SHIFT,   SWT.SHIFT],\x0a        [OS.VK_CONTROL, SWT.CONTROL],\x0a//      [OS.VK_????,    SWT.COMMAND],\x0a\x0a        /* NOT CURRENTLY USED */\x0a//      [OS.VK_LBUTTON, SWT.BUTTON1],\x0a//      [OS.VK_MBUTTON, SWT.BUTTON3],\x0a//      [OS.VK_RBUTTON, SWT.BUTTON2],\x0a\x0a        /* Non-Numeric Keypad Keys */\x0a        [OS.VK_UP,      SWT.ARROW_UP],\x0a        [OS.VK_DOWN,    SWT.ARROW_DOWN],\x0a        [OS.VK_LEFT,    SWT.ARROW_LEFT],\x0a        [OS.VK_RIGHT,   SWT.ARROW_RIGHT],\x0a        [OS.VK_PRIOR,   SWT.PAGE_UP],\x0a        [OS.VK_NEXT,    SWT.PAGE_DOWN],\x0a        [OS.VK_HOME,    SWT.HOME],\x0a        [OS.VK_END,     SWT.END],\x0a        [OS.VK_INSERT,  SWT.INSERT],\x0a\x0a        /* Virtual and Ascii Keys */\x0a        [OS.VK_BACK,    SWT.BS],\x0a        [OS.VK_RETURN,  SWT.CR],\x0a        [OS.VK_DELETE,  SWT.DEL],\x0a        [OS.VK_ESCAPE,  SWT.ESC],\x0a        [OS.VK_RETURN,  SWT.LF],\x0a        [OS.VK_TAB,     SWT.TAB],\x0a\x0a        /* Functions Keys */\x0a        [OS.VK_F1,  SWT.F1],\x0a        [OS.VK_F2,  SWT.F2],\x0a        [OS.VK_F3,  SWT.F3],\x0a        [OS.VK_F4,  SWT.F4],\x0a        [OS.VK_F5,  SWT.F5],\x0a        [OS.VK_F6,  SWT.F6],\x0a        [OS.VK_F7,  SWT.F7],\x0a        [OS.VK_F8,  SWT.F8],\x0a        [OS.VK_F9,  SWT.F9],\x0a        [OS.VK_F10, SWT.F10],\x0a        [OS.VK_F11, SWT.F11],\x0a        [OS.VK_F12, SWT.F12],\x0a        [OS.VK_F13, SWT.F13],\x0a        [OS.VK_F14, SWT.F14],\x0a        [OS.VK_F15, SWT.F15],\x0a\x0a        /* Numeric Keypad Keys */\x0a        [OS.VK_MULTIPLY,    SWT.KEYPAD_MULTIPLY],\x0a        [OS.VK_ADD,         SWT.KEYPAD_ADD],\x0a        [OS.VK_RETURN,      SWT.KEYPAD_CR],\x0a        [OS.VK_SUBTRACT,    SWT.KEYPAD_SUBTRACT],\x0a        [OS.VK_DECIMAL,     SWT.KEYPAD_DECIMAL],\x0a        [OS.VK_DIVIDE,      SWT.KEYPAD_DIVIDE],\x0a        [OS.VK_NUMPAD0,     SWT.KEYPAD_0],\x0a        [OS.VK_NUMPAD1,     SWT.KEYPAD_1],\x0a        [OS.VK_NUMPAD2,     SWT.KEYPAD_2],\x0a        [OS.VK_NUMPAD3,     SWT.KEYPAD_3],\x0a        [OS.VK_NUMPAD4,     SWT.KEYPAD_4],\x0a        [OS.VK_NUMPAD5,     SWT.KEYPAD_5],\x0a        [OS.VK_NUMPAD6,     SWT.KEYPAD_6],\x0a        [OS.VK_NUMPAD7,     SWT.KEYPAD_7],\x0a        [OS.VK_NUMPAD8,     SWT.KEYPAD_8],\x0a        [OS.VK_NUMPAD9,     SWT.KEYPAD_9],\x0a//      [OS.VK_????,        SWT.KEYPAD_EQUAL],\x0a\x0a        /* Other keys */\x0a        [OS.VK_CAPITAL,     SWT.CAPS_LOCK],\x0a        [OS.VK_NUMLOCK,     SWT.NUM_LOCK],\x0a        [OS.VK_SCROLL,      SWT.SCROLL_LOCK],\x0a        [OS.VK_PAUSE,       SWT.PAUSE],\x0a        [OS.VK_CANCEL,      SWT.BREAK],\x0a        [OS.VK_SNAPSHOT,    SWT.PRINT_SCREEN],\x0a//      [OS.VK_????,        SWT.HELP],\x0a\x0a    ];");
	mixin(gshared!"static Display Default;");
	mixin(gshared!"static Display [] Displays;");
	org.eclipse.swt.widgets.Monitor.Monitor[] monitors = null;
	int monitorCount = 0;
	Shell[] modalShells;
	Dialog modalDialog;
	static bool TrimEnabled = false;

	mixin(gshared!"static const int SWT_GETACCELCOUNT  = OS.WM_APP;");
	mixin(gshared!"static const int SWT_GETACCEL       = OS.WM_APP + 1;");
	mixin(gshared!"static const int SWT_KEYMSG         = OS.WM_APP + 2;");
	mixin(gshared!"static const int SWT_DESTROY        = OS.WM_APP + 3;");
	mixin(gshared!"static const int SWT_TRAYICONMSG    = OS.WM_APP + 4;");
	mixin(gshared!"static const int SWT_NULL           = OS.WM_APP + 5;");
	mixin(gshared!"static const int SWT_RUNASYNC       = OS.WM_APP + 6;");
	mixin(gshared!"static int SWT_TASKBARCREATED;");
	mixin(gshared!"static int SWT_RESTORECARET;");
	mixin(gshared!"static int DI_GETDRAGIMAGE;");
	int hitCount;
	static const String PACKAGE_PREFIX = "org.eclipse.swt.widgets.";

	private static void static_this_DeviceFinder();

	static void setDevice(Device device);
	public this();

	public this(DeviceData data);

	Control _getFocusControl();
	void addBar(Menu menu);
	void addControl(HANDLE handle, Control control);
	public void addFilter(int eventType, Listener listener);

	public void addListener(int eventType, Listener listener);

	void addMenuItem(MenuItem item);
	void addPopup(Menu menu);
	int asciiKey(int key);
	public void asyncExec(Runnable runnable);

	public void beep();

	protected void checkSubclass();

	protected override void checkDevice();

	static void checkDisplay(Thread thread, bool multiple);
	void clearModal(Shell shell);
	int controlKey(int key);
	public void close();

	protected override void create(DeviceData data);

	void createDisplay(DeviceData data);
	static HBITMAP create32bitDIB(Image image);
	static HBITMAP create32bitDIB(HBITMAP hBitmap, int alpha, byte[] alphaData, int transparentPixel);
	static Image createIcon(Image image);
	static HBITMAP createMaskFromAlpha(ImageData data, int destWidth, int destHeight);
	static void deregister(Display display);
	protected override void destroy();

	void destroyDisplay();
	public void disposeExec(Runnable runnable);

	void drawMenuBars();
	private extern (Windows) static int embeddedFunc(HWND hwnd, int msg, int wParam, int lParam);


	void error(int code);
	bool filterEvent(Event event);
	bool filters(int eventType);
	bool filterMessage(MSG* msg);
	Control findControl(HANDLE handle);
	public Widget findWidget(HANDLE handle);

	public Widget findWidget(HANDLE handle, int id);

	public Widget findWidget(Widget widget, int id);

	private extern (Windows) static int foregroundIdleProcFunc(int code, uint wParam, int lParam);


	int foregroundIdleProc(int code, int wParam, int lParam);
	public static Display findDisplay(Thread thread);

	public Shell getActiveShell();

	public override Rectangle getBounds();

	public static Display getCurrent();

	int getClickCount(int type, int button, HWND hwnd, int lParam);
	public override Rectangle getClientArea();

	Control getControl(HANDLE handle);
	public Control getCursorControl();

	public Point getCursorLocation();

	public Point[] getCursorSizes();

	public static Display getDefault();

	public Object getData(String key);

	public Object getData();

	public int getDismissalAlignment();

	public int getDoubleClickTime();

	public Control getFocusControl();

	String getFontName(LOGFONT* logFont);
	public bool getHighContrast();

	public int getIconDepth();

	public Point[] getIconSizes();

	ImageList getImageList(int style, int width, int height);
	ImageList getImageListToolBar(int style, int width, int height);
	ImageList getImageListToolBarDisabled(int style, int width, int height);
	ImageList getImageListToolBarHot(int style, int width, int height);
	int getLastEventTime();
	MenuItem getMenuItem(int id);
	int getMessageCount();
	Shell getModalShell();
	Dialog getModalDialog();
	public org.eclipse.swt.widgets.Monitor.Monitor[] getMonitors();

	extern (Windows) static int getMsgFunc(int code, uint wParam, int lParam);

	int getMsgProc(int code, int wParam, int lParam);
	public org.eclipse.swt.widgets.Monitor.Monitor getPrimaryMonitor();

	public Shell[] getShells();

	Image getSortImage(int direction);
	public Synchronizer getSynchronizer();

	public Thread getSyncThread();

	public override Color getSystemColor(int id);

	public Cursor getSystemCursor(int id);

	public override Font getSystemFont();

	public Image getSystemImage(int id);

	public Tray getSystemTray();

	public Thread getThread();

	HTHEME hButtonTheme();
	HTHEME hEditTheme();
	HTHEME hExplorerBarTheme();
	HTHEME hScrollBarTheme();
	HTHEME hTabTheme();
	public override HDC internal_new_GC(GCData data);

	protected override void init_();

	public override void internal_dispose_GC(HDC hDC, GCData data);

	bool isXMouseActive();
	bool isValidThread();
	public Point map(Control from, Control to, Point point);

	public Point map(Control from, Control to, int x, int y);

	public Rectangle map(Control from, Control to, Rectangle rectangle);

	public Rectangle map(Control from, Control to, int x, int y, int width, int height);

	static wchar mbcsToWcs(int ch);
	static wchar mbcsToWcs(int ch, int codePage);
	private extern (Windows) static int messageProcFunc(HWND hwnd, uint msg, uint wParam, int lParam);


	int messageProc(HWND hwnd, uint msg, uint wParam, int lParam);
	private extern (Windows) static int monitorEnumFunc(HMONITOR hmonitor, HDC hdc, RECT* lprcMonitor, int dwData);


	int monitorEnumProc(HMONITOR hmonitor, HDC hdc, RECT* lprcMonitor);
	private extern (Windows) static int msgFilterProcFunc(int code, uint wParam, int lParam);


	int msgFilterProc(int code, int wParam, int lParam);
	int numpadKey(int key);
	public bool post(Event event);

	void postEvent(Event event);
	public bool readAndDispatch();

	static void register(Display display);
	protected override void release();

	void releaseDisplay();
	void releaseImageList(ImageList list);
	void releaseToolImageList(ImageList list);
	void releaseToolHotImageList(ImageList list);
	void releaseToolDisabledImageList(ImageList list);
	public void removeFilter(int eventType, Listener listener);

	public void removeListener(int eventType, Listener listener);

	void removeBar(Menu menu);
	Control removeControl(HANDLE handle);
	void removeMenuItem(MenuItem item);
	void removePopup(Menu menu);
	bool runAsyncMessages(bool all);
	bool runDeferredEvents();
	bool runPopups();
	void runSettings();
	bool runTimer(int id);
	void saveResources();
	void sendEvent(int eventType, Event event);
	public void setCursorLocation(int x, int y);

	public void setCursorLocation(Point point);

	public void setData(String key, Object value);

	public void setData(Object data);

	public static void setAppName(String name);

	void setModalDialog(Dialog modalDailog);
	void setModalShell(Shell shell);
	public void setSynchronizer(Synchronizer synchronizer);

	int shiftedKey(int key);
	public bool sleep();

	public void syncExec(Runnable runnable);

	public void timerExec(int milliseconds, Runnable runnable);

	bool translateAccelerator(MSG* msg, Control control);
	static int translateKey(int key);
	bool translateMnemonic(MSG* msg, Control control);
	bool translateTraversal(MSG* msg, Control control);
	static int untranslateKey(int key);
	public void update();

	void updateImages();
	public void wake();

	void wakeThread();
	static int wcsToMbcs(wchar ch, int codePage);
	static int wcsToMbcs(char ch);
	private extern (Windows) static int windowProcFunc(HWND hwnd, uint msg, uint wParam, int lParam);


	int windowProc();
	int windowProc(HWND hwnd, uint msg, uint wParam, int lParam);
	static String withCrLf(String string);
	String windowClass();
}

