// D import file generated from 'org\eclipse\swt\widgets\ExpandBar.d'
module org.eclipse.swt.widgets.ExpandBar;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ExpandAdapter;
import org.eclipse.swt.events.ExpandEvent;
import org.eclipse.swt.events.ExpandListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.ExpandItem;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.ExpandItem;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class ExpandBar : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.windowProc windowProc;
	ExpandItem[] items;
	int itemCount;
	ExpandItem focusItem;
	int spacing = 4;
	int yCurrentScroll;
	HFONT hFont;
	public this(Composite parent, int style);

	public void addExpandListener(ExpandListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	protected override void checkSubclass();

	static int checkStyle(int style);
	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	void createItem(ExpandItem item, int style, int index);
	override void createWidget();
	override int defaultBackground();
	void destroyItem(ExpandItem item);
	override void drawThemeBackground(HDC hDC, HWND hwnd, RECT* rect);
	void drawWidget(GC gc, RECT* clipRect);
	override Control findBackgroundControl();
	override Control findThemeControl();
	int getBandHeight();
	public ExpandItem getItem(int index);

	public int getItemCount();

	public ExpandItem[] getItems();

	public int getSpacing();

	public int indexOf(ExpandItem item);

	bool isAppThemed();
	void layoutItems(int index, bool setScrollbar_);
	override void releaseChildren(bool destroy);
	public void removeExpandListener(ExpandListener listener);

	override void setBackgroundPixel(int pixel);
	public override void setFont(Font font);

	override void setForegroundPixel(int pixel);
	void setScrollbar();
	public void setSpacing(int spacing);

	void showItem(ExpandItem item);
	void showFocus(bool up);
	override String windowClass();
	override int windowProc();
	override LRESULT WM_KEYDOWN(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_LBUTTONUP(int wParam, int lParam);
	override LRESULT WM_MOUSELEAVE(int wParam, int lParam);
	override LRESULT WM_MOUSEMOVE(int wParam, int lParam);
	override LRESULT WM_PAINT(int wParam, int lParam);
	override LRESULT WM_PRINTCLIENT(int wParam, int lParam);
	override LRESULT WM_SETCURSOR(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT wmScroll(ScrollBar bar, bool update, HWND hwnd, int msg, int wParam, int lParam);
}

