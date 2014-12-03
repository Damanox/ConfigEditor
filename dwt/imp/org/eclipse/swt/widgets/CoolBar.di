// D import file generated from 'org\eclipse\swt\widgets\CoolBar.d'
module org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class CoolBar : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.windowProc windowProc;
	CoolItem[] items;
	CoolItem[] originalItems;
	bool locked;
	bool ignoreResize;
	private static WNDPROC ReBarProc;


	mixin(gshared!"static const TCHAR[] ReBarClass = OS.REBARCLASSNAME;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	static const int SEPARATOR_WIDTH = 2;

	static const int MAX_WIDTH = 32767;

	static const int DEFAULT_COOLBAR_WIDTH = 0;

	static const int DEFAULT_COOLBAR_HEIGHT = 0;

	public this(Composite parent, int style);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	protected override void checkSubclass();

	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	void createItem(CoolItem item, int index);
	override void createWidget();
	void destroyItem(CoolItem item);
	override void drawThemeBackground(HDC hDC, HWND hwnd, RECT* rect);
	override Control findThemeControl();
	int getMargin(int index);
	public CoolItem getItem(int index);

	public int getItemCount();

	public int[] getItemOrder();

	public CoolItem[] getItems();

	public Point[] getItemSizes();

	int getLastIndexOfRow(int index);
	bool isLastItemOfRow(int index);
	public bool getLocked();

	public int[] getWrapIndices();

	public int indexOf(CoolItem item);

	void resizeToPreferredWidth(int index);
	void resizeToMaximumWidth(int index);
	override void releaseChildren(bool destroy);
	override void removeControl(Control control);
	override void setBackgroundPixel(int pixel);
	override void setForegroundPixel(int pixel);
	void setItemColors(int foreColor, int backColor);
	public void setItemLayout(int[] itemOrder, int[] wrapIndices, Point[] sizes);

	void setItemOrder(int[] itemOrder);
	void setItemSizes(Point[] sizes);
	public void setLocked(bool locked);

	public void setWrapIndices(int[] indices);

	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_COMMAND(int wParam, int lParam);
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_NOTIFY(int wParam, int lParam);
	override LRESULT WM_SETREDRAW(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT wmNotifyChild(NMHDR* hdr, int wParam, int lParam);
}

