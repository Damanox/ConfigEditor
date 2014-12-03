// D import file generated from 'org\eclipse\swt\widgets\TabFolder.d'
module org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Control;
import java.lang.all;
public class TabFolder : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.windowProc windowProc;
	TabItem[] items;
	ImageList imageList;
	mixin(gshared!"private static /+const+/ WNDPROC TabFolderProc;");
	mixin(gshared!"static const TCHAR[] TabFolderClass = OS.WC_TABCONTROL;");
	static const int ID_UPDOWN = 1;

	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	public void addSelectionListener(SelectionListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	protected override void checkSubclass();

	public override Point computeSize(int wHint, int hHint, bool changed);

	public override Rectangle computeTrim(int x, int y, int width, int height);

	void createItem(TabItem item, int index);
	override void createHandle();
	override void createWidget();
	void destroyItem(TabItem item);
	override void drawThemeBackground(HDC hDC, HWND hwnd, RECT* rect);
	override Control findThemeControl();
	public override Rectangle getClientArea();

	public TabItem getItem(int index);

	public TabItem getItem(Point point);

	public int getItemCount();

	public TabItem[] getItems();

	public TabItem[] getSelection();

	public int getSelectionIndex();

	int imageIndex(Image image);
	public int indexOf(TabItem item);

	override Point minimumSize(int wHint, int hHint, bool flushCache);
	override bool mnemonicHit(wchar key);
	override bool mnemonicMatch(wchar key);
	override void releaseChildren(bool destroy);
	override void releaseWidget();
	override void removeControl(Control control);
	public void removeSelectionListener(SelectionListener listener);

	public void setSelection(TabItem item);

	public void setSelection(TabItem[] items);

	public override void setFont(Font font);

	public void setSelection(int index);

	void setSelection(int index, bool notify);
	override String toolTipText(NMTTDISPINFO* hdr);
	override bool traversePage(bool next);
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_GETDLGCODE(int wParam, int lParam);
	override LRESULT WM_MOUSELEAVE(int wParam, int lParam);
	override LRESULT WM_NCHITTEST(int wParam, int lParam);
	override LRESULT WM_NOTIFY(int wParam, int lParam);
	override LRESULT WM_PARENTNOTIFY(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam);
	override LRESULT wmNotifyChild(NMHDR* hdr, int wParam, int lParam);
}

