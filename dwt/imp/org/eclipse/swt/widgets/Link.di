// D import file generated from 'org\eclipse\swt\widgets\Link.d'
module org.eclipse.swt.widgets.Link;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.accessibility.ACC;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class Link : Control
{
	alias Control.computeSize computeSize;
	alias Control.windowProc windowProc;
	String text;
	TextLayout layout;
	Color linkColor;
	Color disabledColor;
	Point[] offsets;
	Point selection;
	String[] ids;
	int[] mnemonics;
	int focusIndex;
	int mouseDownIndex;
	HFONT font;
	mixin(gshared!"static /+const+/ RGB LINK_FOREGROUND;");
	mixin(gshared!"static /+const+/ WNDPROC LinkProc;");
	mixin(gshared!"static const TCHAR[] LinkClass = OS.WC_LINK;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	public void addSelectionListener(SelectionListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	override void createWidget();
	void drawWidget(GC gc, RECT* rect);
	override void enableWidget(bool enabled);
	void initAccessible();
	override String getNameText();
	Rectangle[] getRectangles(int linkIndex);
	public String getText();

	String parse(String string);
	int parseMnemonics(char[] buffer, int start, int end, StringBuffer result);
	override void releaseWidget();
	public void removeSelectionListener(SelectionListener listener);

	public void setText(String string);

	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_CHAR(int wParam, int lParam);
	override LRESULT WM_GETDLGCODE(int wParam, int lParam);
	override LRESULT WM_GETFONT(int wParam, int lParam);
	override LRESULT WM_KEYDOWN(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_LBUTTONUP(int wParam, int lParam);
	override LRESULT WM_NCHITTEST(int wParam, int lParam);
	override LRESULT WM_MOUSEMOVE(int wParam, int lParam);
	override LRESULT WM_PAINT(int wParam, int lParam);
	override LRESULT WM_PRINTCLIENT(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SETFONT(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT wmColorChild(int wParam, int lParam);
	override LRESULT wmNotifyChild(NMHDR* hdr, int wParam, int lParam);
}

