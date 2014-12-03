// D import file generated from 'org\eclipse\swt\widgets\Composite.d'
module org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.ToolTip;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Widget;
import java.lang.System;
import java.lang.all;
public class Composite : Scrollable
{
	alias Scrollable.setBounds setBounds;
	alias Scrollable.computeSize computeSize;
	alias Scrollable.translateMnemonic translateMnemonic;
	Layout layout_;
	WINDOWPOS*[] lpwp;
	Control[] tabList;
	int layoutCount;
	int backgroundMode;
	this();
	public this(Composite parent, int style);

	Control[] _getChildren();
	Control[] _getTabList();
	public void changed(Control[] changed);

	override void checkBuffered();
	override void checkComposited();
	protected override void checkSubclass();

	override Control[] computeTabList();
	public override Point computeSize(int wHint, int hHint, bool changed);

	void copyArea(GC gc, int x, int y, int width, int height);
	override void createHandle();
	Composite findDeferredControl();
	override Menu[] findMenus(Control control);
	override void fixChildren(Shell newShell, Shell oldShell, Decorations newDecorations, Decorations oldDecorations, Menu[] menus);
	void fixTabList(Control control);
	public int getBackgroundMode();

	public Control[] getChildren();

	int getChildrenCount();
	public Layout getLayout();

	public Control[] getTabList();

	bool hooksKeys();
	public bool getLayoutDeferred();

	public bool isLayoutDeferred();

	public void layout();

	public void layout(bool changed);

	public void layout(bool changed, bool all);

	public void layout(Control[] changed);

	override void markLayout(bool changed, bool all);
	Point minimumSize(int wHint, int hHint, bool changed);
	override bool redrawChildren();
	override void releaseParent();
	override void releaseChildren(bool destroy);
	override void releaseWidget();
	void removeControl(Control control);
	void resizeChildren();
	bool resizeChildren(bool defer, WINDOWPOS*[] pwp);
	void resizeEmbeddedHandle(HANDLE embeddedHandle, int width, int height);
	override void sendResize();
	public void setBackgroundMode(int mode);

	override void setBounds(int x, int y, int width, int height, int flags, bool defer);
	override bool setFixedFocus();
	public override bool setFocus();

	public void setLayout(Layout layout_);

	public void setLayoutDeferred(bool defer);

	public void setTabList(Control[] tabList);

	void setResizeChildren(bool resize);
	override bool setTabGroupFocus();
	String toolTipText(NMTTDISPINFO* hdr);
	override bool translateMnemonic(Event event, Control control);
	override bool translateTraversal(MSG* msg);
	override void updateBackgroundColor();
	override void updateBackgroundImage();
	override void updateBackgroundMode();
	override void updateFont(Font oldFont, Font newFont);
	override void updateLayout(bool resize, bool all);
	void updateUIState();
	override int widgetStyle();
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_GETDLGCODE(int wParam, int lParam);
	override LRESULT WM_GETFONT(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_NCHITTEST(int wParam, int lParam);
	override LRESULT WM_PARENTNOTIFY(int wParam, int lParam);
	override LRESULT WM_PAINT(int wParam, int lParam);
	override LRESULT WM_PRINTCLIENT(int wParam, int lParam);
	override LRESULT WM_SETFONT(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam);
	override LRESULT WM_SYSCOMMAND(int wParam, int lParam);
	override LRESULT WM_UPDATEUISTATE(int wParam, int lParam);
	override LRESULT wmNCPaint(HWND hwnd, int wParam, int lParam);
	override LRESULT wmNotify(NMHDR* hdr, int wParam, int lParam);
}

