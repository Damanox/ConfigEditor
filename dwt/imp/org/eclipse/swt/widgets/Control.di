// D import file generated from 'org\eclipse\swt\widgets\Control.d'
module org.eclipse.swt.widgets.Control;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DragDetectListener;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MenuDetectListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.MouseWheelListener;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Monitor;
import java.lang.all;
import java.lang.System;
version (Tango)
{
}
else
{
}
public abstract class Control : Widget, Drawable
{
	alias Widget.dragDetect dragDetect;
	alias Widget.callWindowProc callWindowProc;
	public HANDLE handle;

	Composite parent;
	Cursor cursor;
	Menu menu;
	String toolTipText_;
	Object layoutData;
	Accessible accessible;
	Image backgroundImage;
	Region region;
	Font font;
	int drawCount;
	int foreground;
	int background;
	this();
	public this(Composite parent, int style);

	public void addControlListener(ControlListener listener);

	public void addDragDetectListener(DragDetectListener listener);

	public void addFocusListener(FocusListener listener);

	public void addHelpListener(HelpListener listener);

	public void addKeyListener(KeyListener listener);

	public void addMenuDetectListener(MenuDetectListener listener);

	public void addMouseListener(MouseListener listener);

	public void addMouseTrackListener(MouseTrackListener listener);

	public void addMouseMoveListener(MouseMoveListener listener);

	public void addMouseWheelListener(MouseWheelListener listener);

	public void addPaintListener(PaintListener listener);

	public void addTraverseListener(TraverseListener listener);

	HANDLE borderHandle();
	void checkBackground();
	void checkBorder();
	void checkBuffered();
	void checkComposited();
	bool checkHandle(HWND hwnd);
	void checkMirrored();
	public Point computeSize(int wHint, int hHint);

	public Point computeSize(int wHint, int hHint, bool changed);

	Control computeTabGroup();
	Control computeTabRoot();
	Control[] computeTabList();
	void createHandle();
	void createWidget();
	int defaultBackground();
	HFONT defaultFont();
	int defaultForeground();
	void deregister();
	override void destroyWidget();
	public bool dragDetect(Event event);

	public bool dragDetect(MouseEvent event);

	bool dragDetect(int button, int count, int stateMask, int x, int y);
	void drawBackground(HDC hDC);
	void drawBackground(HDC hDC, RECT* rect);
	void drawBackground(HDC hDC, RECT* rect, int pixel);
	void drawImageBackground(HDC hDC, HWND hwnd, HBITMAP hBitmap, RECT* rect);
	void drawThemeBackground(HDC hDC, HWND hwnd, RECT* rect);
	void enableDrag(bool enabled);
	void enableWidget(bool enabled);
	void fillBackground(HDC hDC, int pixel, RECT* rect);
	void fillImageBackground(HDC hDC, Control control, RECT* rect);
	void fillThemeBackground(HDC hDC, Control control, RECT* rect);
	Control findBackgroundControl();
	HBRUSH findBrush(int value, int lbStyle);
	Cursor findCursor();
	Control findImageControl();
	Control findThemeControl();
	Menu[] findMenus(Control control);
	char findMnemonic(String string);
	void fixChildren(Shell newShell, Shell oldShell, Decorations newDecorations, Decorations oldDecorations, Menu[] menus);
	void fixFocus(Control focusControl);
	public bool forceFocus();

	void forceResize();
	public Accessible getAccessible();

	public Color getBackground();

	public Image getBackgroundImage();

	int getBackgroundPixel();
	public int getBorderWidth();

	public Rectangle getBounds();

	int getCodePage();
	String getClipboardText();
	public Cursor getCursor();

	public bool getDragDetect();

	public bool getEnabled();

	public Font getFont();

	public Color getForeground();

	int getForegroundPixel();
	public Object getLayoutData();

	public Point getLocation();

	public override Menu getMenu();

	public org.eclipse.swt.widgets.Monitor.Monitor getMonitor();

	public Composite getParent();

	Control[] getPath();
	public Region getRegion();

	public Shell getShell();

	public Point getSize();

	public String getToolTipText();

	public bool getVisible();

	bool hasCursor();
	bool hasFocus();
	public HDC internal_new_GC(GCData data);

	public void internal_dispose_GC(HDC hDC, GCData data);

	bool isActive();
	public bool isEnabled();

	public bool isFocusControl();

	bool isFocusAncestor(Control control);
	public bool isReparentable();

	bool isShowing();
	bool isTabGroup();
	bool isTabItem();
	public bool isVisible();

	override void mapEvent(HWND hwnd, Event event);
	void markLayout(bool changed, bool all);
	Decorations menuShell();
	bool mnemonicHit(wchar key);
	bool mnemonicMatch(wchar key);
	public void moveAbove(Control control);

	public void moveBelow(Control control);

	Accessible new_Accessible(Control control);
	override GC new_GC(GCData data);
	public void pack();

	public void pack(bool changed);

	public bool print(GC gc);

	void printWidget(HWND hwnd, GC gc);
	public void redraw();

	void redraw(bool all);
	public void redraw(int x, int y, int width, int height, bool all);

	bool redrawChildren();
	void register();
	override void releaseHandle();
	override void releaseParent();
	override void releaseWidget();
	public void removeControlListener(ControlListener listener);

	public void removeDragDetectListener(DragDetectListener listener);

	public void removeFocusListener(FocusListener listener);

	public void removeHelpListener(HelpListener listener);

	public void removeKeyListener(KeyListener listener);

	public void removeMenuDetectListener(MenuDetectListener listener);

	public void removeMouseTrackListener(MouseTrackListener listener);

	public void removeMouseListener(MouseListener listener);

	public void removeMouseMoveListener(MouseMoveListener listener);

	public void removeMouseWheelListener(MouseWheelListener listener);

	public void removePaintListener(PaintListener listener);

	public void removeTraverseListener(TraverseListener listener);

	void showWidget(bool visible);
	override bool sendFocusEvent(int type);
	void sendMove();
	void sendResize();
	void setBackground();
	public void setBackground(Color color);

	public void setBackgroundImage(Image image);

	void setBackgroundImage(HBITMAP hBitmap);
	void setBackgroundPixel(int pixel);
	public void setBounds(int x, int y, int width, int height);

	void setBounds(int x, int y, int width, int height, int flags);
	void setBounds(int x, int y, int width, int height, int flags, bool defer);
	public void setBounds(Rectangle rect);

	public void setCapture(bool capture);

	void setCursor();
	public void setCursor(Cursor cursor);

	void setDefaultFont();
	public void setDragDetect(bool dragDetect);

	public void setEnabled(bool enabled);

	bool setFixedFocus();
	public bool setFocus();

	public void setFont(Font font);

	public void setForeground(Color color);

	void setForegroundPixel(int pixel);
	public void setLayoutData(Object layoutData);

	public void setLocation(int x, int y);

	public void setLocation(Point location);

	public void setMenu(Menu menu);

	bool setRadioFocus();
	bool setRadioSelection(bool value);
	public void setRedraw(bool redraw);

	public void setRegion(Region region);

	bool setSavedFocus();
	public void setSize(int width, int height);

	public void setSize(Point size);

	bool setTabGroupFocus();
	bool setTabItemFocus();
	public void setToolTipText(String string);

	void setToolTipText(Shell shell, String string);
	public void setVisible(bool visible);

	void sort(int[] items);
	void subclass();
	public Point toControl(int x, int y);

	public Point toControl(Point point);

	public Point toDisplay(int x, int y);

	public Point toDisplay(Point point);

	HANDLE topHandle();
	bool translateAccelerator(MSG* msg);
	bool translateMnemonic(Event event, Control control);
	bool translateMnemonic(MSG* msg);
	bool translateTraversal(MSG* msg);
	bool traverse(Event event);
	public bool traverse(int traversal);

	bool traverseEscape();
	bool traverseGroup(bool next);
	bool traverseItem(bool next);
	bool traverseMnemonic(char key);
	bool traversePage(bool next);
	bool traverseReturn();
	void unsubclass();
	public void update();

	void update(bool all);
	void updateBackgroundColor();
	void updateBackgroundImage();
	void updateBackgroundMode();
	void updateFont(Font oldFont, Font newFont);
	void updateImages();
	void updateLayout(bool resize, bool all);
	CREATESTRUCT* widgetCreateStruct();
	int widgetExtStyle();
	HWND widgetParent();
	int widgetStyle();
	public bool setParent(Composite parent);

	abstract String windowClass();
	abstract int windowProc();
	int windowProc(HWND hwnd, int msg, int wParam, int lParam);
	LRESULT WM_ACTIVATE(int wParam, int lParam);
	LRESULT WM_CAPTURECHANGED(int wParam, int lParam);
	LRESULT WM_CHANGEUISTATE(int wParam, int lParam);
	LRESULT WM_CHAR(int wParam, int lParam);
	LRESULT WM_CLEAR(int wParam, int lParam);
	LRESULT WM_CLOSE(int wParam, int lParam);
	LRESULT WM_COMMAND(int wParam, int lParam);
	LRESULT WM_CONTEXTMENU(int wParam, int lParam);
	LRESULT WM_CTLCOLOR(int wParam, int lParam);
	LRESULT WM_CUT(int wParam, int lParam);
	LRESULT WM_DESTROY(int wParam, int lParam);
	LRESULT WM_DRAWITEM(int wParam, int lParam);
	LRESULT WM_ENDSESSION(int wParam, int lParam);
	LRESULT WM_ENTERIDLE(int wParam, int lParam);
	LRESULT WM_ERASEBKGND(int wParam, int lParam);
	LRESULT WM_GETDLGCODE(int wParam, int lParam);
	LRESULT WM_GETFONT(int wParam, int lParam);
	LRESULT WM_GETOBJECT(int wParam, int lParam);
	LRESULT WM_GETMINMAXINFO(int wParam, int lParam);
	LRESULT WM_HOTKEY(int wParam, int lParam);
	LRESULT WM_HELP(int wParam, int lParam);
	LRESULT WM_HSCROLL(int wParam, int lParam);
	LRESULT WM_IME_CHAR(int wParam, int lParam);
	LRESULT WM_IME_COMPOSITION(int wParam, int lParam);
	LRESULT WM_IME_COMPOSITION_START(int wParam, int lParam);
	LRESULT WM_IME_ENDCOMPOSITION(int wParam, int lParam);
	LRESULT WM_INITMENUPOPUP(int wParam, int lParam);
	LRESULT WM_INPUTLANGCHANGE(int wParam, int lParam);
	LRESULT WM_KEYDOWN(int wParam, int lParam);
	LRESULT WM_KEYUP(int wParam, int lParam);
	LRESULT WM_KILLFOCUS(int wParam, int lParam);
	LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam);
	LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	LRESULT WM_LBUTTONUP(int wParam, int lParam);
	LRESULT WM_MBUTTONDBLCLK(int wParam, int lParam);
	LRESULT WM_MBUTTONDOWN(int wParam, int lParam);
	LRESULT WM_MBUTTONUP(int wParam, int lParam);
	LRESULT WM_MEASUREITEM(int wParam, int lParam);
	LRESULT WM_MENUCHAR(int wParam, int lParam);
	LRESULT WM_MENUSELECT(int wParam, int lParam);
	LRESULT WM_MOUSEACTIVATE(int wParam, int lParam);
	LRESULT WM_MOUSEHOVER(int wParam, int lParam);
	LRESULT WM_MOUSELEAVE(int wParam, int lParam);
	LRESULT WM_MOUSEMOVE(int wParam, int lParam);
	LRESULT WM_MOUSEWHEEL(int wParam, int lParam);
	LRESULT WM_MOVE(int wParam, int lParam);
	LRESULT WM_NCACTIVATE(int wParam, int lParam);
	LRESULT WM_NCCALCSIZE(int wParam, int lParam);
	LRESULT WM_NCHITTEST(int wParam, int lParam);
	LRESULT WM_NCLBUTTONDOWN(int wParam, int lParam);
	LRESULT WM_NCPAINT(int wParam, int lParam);
	LRESULT WM_NOTIFY(int wParam, int lParam);
	LRESULT WM_PAINT(int wParam, int lParam);
	LRESULT WM_PALETTECHANGED(int wParam, int lParam);
	LRESULT WM_PARENTNOTIFY(int wParam, int lParam);
	LRESULT WM_PASTE(int wParam, int lParam);
	LRESULT WM_PRINT(int wParam, int lParam);
	LRESULT WM_PRINTCLIENT(int wParam, int lParam);
	LRESULT WM_QUERYENDSESSION(int wParam, int lParam);
	LRESULT WM_QUERYNEWPALETTE(int wParam, int lParam);
	LRESULT WM_QUERYOPEN(int wParam, int lParam);
	LRESULT WM_RBUTTONDBLCLK(int wParam, int lParam);
	LRESULT WM_RBUTTONDOWN(int wParam, int lParam);
	LRESULT WM_RBUTTONUP(int wParam, int lParam);
	LRESULT WM_SETCURSOR(int wParam, int lParam);
	LRESULT WM_SETFOCUS(int wParam, int lParam);
	LRESULT WM_SETTINGCHANGE(int wParam, int lParam);
	LRESULT WM_SETFONT(int wParam, int lParam);
	LRESULT WM_SETREDRAW(int wParam, int lParam);
	LRESULT WM_SHOWWINDOW(int wParam, int lParam);
	LRESULT WM_SIZE(int wParam, int lParam);
	LRESULT WM_SYSCHAR(int wParam, int lParam);
	LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam);
	LRESULT WM_SYSCOMMAND(int wParam, int lParam);
	LRESULT WM_SYSKEYDOWN(int wParam, int lParam);
	LRESULT WM_SYSKEYUP(int wParam, int lParam);
	LRESULT WM_TIMER(int wParam, int lParam);
	LRESULT WM_UNDO(int wParam, int lParam);
	LRESULT WM_UPDATEUISTATE(int wParam, int lParam);
	LRESULT WM_VSCROLL(int wParam, int lParam);
	LRESULT WM_WINDOWPOSCHANGED(int wParam, int lParam);
	LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam);
	LRESULT WM_XBUTTONDBLCLK(int wParam, int lParam);
	LRESULT WM_XBUTTONDOWN(int wParam, int lParam);
	LRESULT WM_XBUTTONUP(int wParam, int lParam);
	LRESULT wmColorChild(int wParam, int lParam);
	LRESULT wmCommandChild(int wParam, int lParam);
	LRESULT wmDrawChild(int wParam, int lParam);
	LRESULT wmMeasureChild(int wParam, int lParam);
	LRESULT wmNotify(NMHDR* hdr, int wParam, int lParam);
	LRESULT wmNotifyChild(NMHDR* hdr, int wParam, int lParam);
	LRESULT wmScrollChild(int wParam, int lParam);
}


