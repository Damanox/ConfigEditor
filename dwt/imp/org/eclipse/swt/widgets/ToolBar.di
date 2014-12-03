// D import file generated from 'org\eclipse\swt\widgets\ToolBar.d'
module org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class ToolBar : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.setBackgroundImage setBackgroundImage;
	alias Composite.setBounds setBounds;
	alias Composite.windowProc windowProc;
	int lastFocusId;
	ToolItem[] items;
	bool ignoreResize;
	bool ignoreMouse;
	ImageList imageList;
	ImageList disabledImageList;
	ImageList hotImageList;
	mixin(gshared!"private static /+const+/ WNDPROC ToolBarProc;");
	mixin(gshared!"static const TCHAR[] ToolBarClass = OS.TOOLBARCLASSNAME;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	static const int DEFAULT_WIDTH = 24;

	static const int DEFAULT_HEIGHT = 22;

	public this(Composite parent, int style);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	override void checkBuffered();
	protected override void checkSubclass();

	public override Point computeSize(int wHint, int hHint, bool changed);

	public override Rectangle computeTrim(int x, int y, int width, int height);

	override void createHandle();
	void createItem(ToolItem item, int index);
	override void createWidget();
	override int defaultBackground();
	void destroyItem(ToolItem item);
	override void enableWidget(bool enabled);
	ImageList getDisabledImageList();
	ImageList getHotImageList();
	ImageList getImageList();
	public ToolItem getItem(int index);

	public ToolItem getItem(Point point);

	public int getItemCount();

	public ToolItem[] getItems();

	public int getRowCount();

	public int indexOf(ToolItem item);

	void layoutItems();
	override bool mnemonicHit(wchar ch);
	override bool mnemonicMatch(wchar ch);
	override void releaseChildren(bool destroy);
	override void releaseWidget();
	override void removeControl(Control control);
	override void setBackgroundImage(HBITMAP hBitmap);
	override void setBackgroundPixel(int pixel);
	void setBackgroundTransparent(bool transparent);
	override void setBounds(int x, int y, int width, int height, int flags);
	override void setDefaultFont();
	void setDropDownItems(bool set);
	void setDisabledImageList(ImageList imageList);
	public override void setFont(Font font);

	void setHotImageList(ImageList imageList);
	void setImageList(ImageList imageList);
	public override bool setParent(Composite parent);

	public override void setRedraw(bool redraw);

	void setRowCount(int count);
	override bool setTabItemFocus();
	override String toolTipText(NMTTDISPINFO* hdr);
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_CAPTURECHANGED(int wParam, int lParam);
	override LRESULT WM_CHAR(int wParam, int lParam);
	override LRESULT WM_COMMAND(int wParam, int lParam);
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_GETDLGCODE(int wParam, int lParam);
	override LRESULT WM_KEYDOWN(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_LBUTTONUP(int wParam, int lParam);
	override LRESULT WM_MOUSELEAVE(int wParam, int lParam);
	override LRESULT WM_NOTIFY(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam);
	override LRESULT wmCommandChild(int wParam, int lParam);
	override LRESULT wmNotifyChild(NMHDR* hdr, int wParam, int lParam);
}

