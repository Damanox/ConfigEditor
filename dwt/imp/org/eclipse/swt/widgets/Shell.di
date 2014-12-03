// D import file generated from 'org\eclipse\swt\widgets\Shell.d'
module org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolTip;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class Shell : Decorations
{
	alias Decorations.setBounds setBounds;
	alias Decorations.setParent setParent;
	alias Decorations.setToolTipText setToolTipText;
	Menu activeMenu;
	ToolTip[] toolTips;
	HIMC hIMC;
	HWND hwndMDIClient_;
	TCHAR* lpstrTip;
	HANDLE toolTipHandle_;
	HANDLE balloonTipHandle_;
	int minWidth = SWT.DEFAULT;
	int minHeight = SWT.DEFAULT;
	HBRUSH[] brushes;
	bool showWithParent;
	bool fullScreen;
	bool wasMaximized;
	String toolTitle;
	String balloonTitle;
	HICON toolIcon;
	HICON balloonIcon;
	WNDPROC windowProc_;
	Control lastActive;
	static if (OS.IsWinCE)
	{
		SHACTIVATEINFO psai;
	}
	mixin(gshared!"static /+const+/ WNDPROC ToolTipProc;");
	mixin(gshared!"static /+const+/ WNDPROC DialogProc;");
	static if (OS.IsWinCE)
	{
		static const StringT DialogClass = "Dialog\x00"w;

	}
	else
	{
		version (D_Version2)
		{
			static StringT DialogClass = "#32770\x00"w;

		}
		else
		{
			static const StringT DialogClass = "#32770\x00"w;

		}
	}
	static const int[] SYSTEM_COLORS = [OS.COLOR_BTNFACE, OS.COLOR_WINDOW, OS.COLOR_BTNTEXT, OS.COLOR_WINDOWTEXT, OS.COLOR_HIGHLIGHT, OS.COLOR_SCROLLBAR];

	static const int BRUSHES_SIZE = 32;

	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this();

	public this(int style);

	public this(Display display);

	public this(Display display, int style);

	this(Display display, Shell parent, int style, HWND handle, bool embedded);
	public this(Shell parent);

	public this(Shell parent, int style);

	public static Shell win32_new(Display display, HWND handle);

	public static Shell internal_new(Display display, HWND handle);

	static int checkStyle(int style);
	public void addShellListener(ShellListener listener);

	HANDLE balloonTipHandle();
	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	public void close();

	void createBalloonTipHandle();
	override void createHandle();
	void createToolTip(ToolTip toolTip);
	void createToolTipHandle();
	override void deregister();
	void destroyToolTip(ToolTip toolTip);
	override void destroyWidget();
	public override void dispose();

	override void enableWidget(bool enabled);
	override HBRUSH findBrush(int value, int lbStyle);
	override Control findBackgroundControl();
	override Cursor findCursor();
	override Control findThemeControl();
	ToolTip findToolTip(int id);
	void fixActiveShell();
	void fixShell(Shell newShell, Control control);
	void fixToolTip();
	public void forceActive();

	override void forceResize();
	public int getAlpha();

	public override Rectangle getBounds();

	ToolTip getCurrentToolTip();
	ToolTip getCurrentToolTip(HWND hwndToolTip);
	public override bool getEnabled();

	public bool getFullScreen();

	public int getImeInputMode();

	public override Point getLocation();

	public override bool getMaximized();

	public Point getMinimumSize();

	public override Region getRegion();

	public override Shell getShell();

	public override Point getSize();

	public Shell[] getShells();

	override Composite findDeferredControl();
	public override bool isEnabled();

	public override bool isVisible();

	HWND hwndMDIClient();
	public void open();

	public override bool print(GC gc);

	override void register();
	void releaseBrushes();
	override void releaseChildren(bool destroy);
	override void releaseHandle();
	override void releaseParent();
	override void releaseWidget();
	override void removeMenu(Menu menu);
	public void removeShellListener(ShellListener listener);

	LRESULT selectPalette(HPALETTE hPalette);
	override bool sendKeyEvent(int type, int msg, int wParam, int lParam, Event event);
	public void setActive();

	void setActiveControl(Control control);
	public void setAlpha(int alpha);

	override void setBounds(int x, int y, int width, int height, int flags, bool defer);
	public override void setEnabled(bool enabled);

	public void setFullScreen(bool fullScreen);

	public void setImeInputMode(int mode);

	public void setMinimumSize(int width, int height);

	public void setMinimumSize(Point size);

	void setItemEnabled(int cmd, bool enabled);
	override void setParent();
	public override void setRegion(Region region);

	void setToolTipText(HWND hwnd, String text);
	void setToolTipText(NMTTDISPINFO* lpnmtdi, CCHAR[] buffer);
	void setToolTipText(NMTTDISPINFO* lpnmtdi, CWCHAR[] buffer);
	void setToolTipTitle(HWND hwndToolTip, String text, HICON icon);
	public override void setVisible(bool visible);

	override void subclass();
	HANDLE toolTipHandle();
	override bool translateAccelerator(MSG* msg);
	override bool traverseEscape();
	override void unsubclass();
	void updateModal();
	override CREATESTRUCT* widgetCreateStruct();
	override HWND widgetParent();
	override int widgetExtStyle();
	override String windowClass();
	override int windowProc();
	override int windowProc(HWND hwnd, int msg, int wParam, int lParam);
	override int widgetStyle();
	override LRESULT WM_ACTIVATE(int wParam, int lParam);
	override LRESULT WM_COMMAND(int wParam, int lParam);
	override LRESULT WM_DESTROY(int wParam, int lParam);
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_ENTERIDLE(int wParam, int lParam);
	override LRESULT WM_GETMINMAXINFO(int wParam, int lParam);
	override LRESULT WM_MOUSEACTIVATE(int wParam, int lParam);
	override LRESULT WM_MOVE(int wParam, int lParam);
	override LRESULT WM_NCHITTEST(int wParam, int lParam);
	override LRESULT WM_NCLBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_PALETTECHANGED(int wParam, int lParam);
	override LRESULT WM_QUERYNEWPALETTE(int wParam, int lParam);
	override LRESULT WM_SETCURSOR(int wParam, int lParam);
	override LRESULT WM_SETTINGCHANGE(int wParam, int lParam);
	override LRESULT WM_SHOWWINDOW(int wParam, int lParam);
	override LRESULT WM_SYSCOMMAND(int wParam, int lParam);
	override LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam);
}

