// D import file generated from 'org\eclipse\swt\widgets\Spinner.d'
module org.eclipse.swt.widgets.Spinner;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import java.lang.all;
public class Spinner : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.sendKeyEvent sendKeyEvent;
	alias Composite.setBackgroundImage setBackgroundImage;
	alias Composite.setToolTipText setToolTipText;
	alias Composite.windowProc windowProc;
	HWND hwndText;
	HWND hwndUpDown;
	bool ignoreModify;
	int pageIncrement;
	int digits;
	mixin(gshared!"static /+const+/ WNDPROC EditProc;");
	static const TCHAR[] EditClass = "EDIT";

	mixin(gshared!"static /+const+/ WNDPROC UpDownProc;");
	mixin(gshared!"static const TCHAR[] UpDownClass = OS.UPDOWN_CLASS;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	mixin(gshared!"public static int LIMIT;");
	mixin(sharedStaticThis!"{\x0a        LIMIT = OS.IsWinNT ? 0x7FFFFFFF : 0x7FFF;\x0a    }");
	public this(Composite parent, int style);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	override bool checkHandle(HWND hwnd);
	protected override void checkSubclass();

	override void createHandle();
	public void addModifyListener(ModifyListener listener);

	public void addSelectionListener(SelectionListener listener);

	void addVerifyListener(VerifyListener listener);
	override HWND borderHandle();
	public override Point computeSize(int wHint, int hHint, bool changed);

	public override Rectangle computeTrim(int x, int y, int width, int height);

	public void copy();

	public void cut();

	override int defaultBackground();
	override void enableWidget(bool enabled);
	override void deregister();
	override bool hasFocus();
	public int getDigits();

	String getDecimalSeparator();
	public int getIncrement();

	public int getMaximum();

	public int getMinimum();

	public int getPageIncrement();

	public int getSelection();

	int getSelectionText(bool[] parseFail);
	public String getText();

	public int getTextLimit();

	int mbcsToWcsPos(int mbcsPos);
	public void paste();

	override void register();
	override void releaseHandle();
	public void removeModifyListener(ModifyListener listener);

	public void removeSelectionListener(SelectionListener listener);

	void removeVerifyListener(VerifyListener listener);
	override bool sendKeyEvent(int type, int msg, int wParam, int lParam, Event event);
	override void setBackgroundImage(HBITMAP hBitmap);
	override void setBackgroundPixel(int pixel);
	public void setDigits(int value);

	override void setForegroundPixel(int pixel);
	public void setIncrement(int value);

	public void setMaximum(int value);

	public void setMinimum(int value);

	public void setPageIncrement(int value);

	public void setSelection(int value);

	void setSelection(int value, bool setPos, bool setText, bool notify);
	public void setTextLimit(int limit);

	override void setToolTipText(Shell shell, String string);
	public void setValues(int selection, int minimum, int maximum, int digits, int increment, int pageIncrement);

	override void subclass();
	override void unsubclass();
	String verifyText(String string, int start, int end, Event keyEvent);
	override int widgetExtStyle();
	override int windowProc(HWND hwnd, int msg, int wParam, int lParam);
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SETFONT(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT wmChar(HWND hwnd, int wParam, int lParam);
	LRESULT wmClipboard(HWND hwndText, int msg, int wParam, int lParam);
	override LRESULT wmCommandChild(int wParam, int lParam);
	override LRESULT wmKeyDown(HWND hwnd, int wParam, int lParam);
	override LRESULT wmKillFocus(HWND hwnd, int wParam, int lParam);
	override LRESULT wmNotifyChild(NMHDR* hdr, int wParam, int lParam);
	override LRESULT wmScrollChild(int wParam, int lParam);
}

