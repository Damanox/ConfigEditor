// D import file generated from 'org\eclipse\swt\widgets\Combo.d'
module org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Display;
import java.lang.all;
public class Combo : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.dragDetect dragDetect;
	alias Composite.sendKeyEvent sendKeyEvent;
	alias Composite.setBackgroundImage setBackgroundImage;
	alias Composite.setBounds setBounds;
	alias Composite.setToolTipText setToolTipText;
	private static Combo pThis;


	bool noSelection;
	bool ignoreDefaultSelection;
	bool ignoreCharacter;
	bool ignoreModify;
	bool ignoreResize;
	HHOOK cbtHook;
	int scrollWidth;
	int visibleCount = 5;
	private static int LIMIT_ = 0;


	public static int LIMIT();

	static const int CBID_LIST = 1000;

	static const int CBID_EDIT = 1001;

	static 
	{
		WNDPROC EditProc;
		WNDPROC ListProc;
	}
	mixin(gshared!"static /+const+/ WNDPROC ComboProc;");
	static const TCHAR* ComboClass = "COMBOBOX\x00";

	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	public void add(String string);

	public void add(String string, int index);

	public void addModifyListener(ModifyListener listener);

	public void addSelectionListener(SelectionListener listener);

	public void addVerifyListener(VerifyListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	private extern (Windows) static int CBTFunc(int nCode, uint wParam, int lParam);


	int CBTProc(int nCode, int wParam, int lParam);
	override bool checkHandle(HWND hwnd);
	protected override void checkSubclass();

	static int checkStyle(int style);
	public void clearSelection();

	public override Point computeSize(int wHint, int hHint, bool changed);

	public void copy();

	override void createHandle();
	public void cut();

	override int defaultBackground();
	override void deregister();
	public void deselect(int index);

	public void deselectAll();

	override bool dragDetect(HWND hwnd, int x, int y, bool filter, bool[] detect, bool[] consume);
	public String getItem(int index);

	public int getItemCount();

	public int getItemHeight();

	public String[] getItems();

	public bool getListVisible();

	override String getNameText();
	public void setListVisible(bool visible);

	public int getOrientation();

	public Point getSelection();

	public int getSelectionIndex();

	public String getText();

	public int getTextHeight();

	public int getTextLimit();

	public int getVisibleItemCount();

	override bool hasFocus();
	public int indexOf(String string);

	public int indexOf(String string, int start);

	int mbcsToWcsPos(int mbcsPos);
	public void paste();

	override void register();
	public void remove(int index);

	void remove(int index, bool notify);
	public void remove(int start, int end);

	public void remove(String string);

	public void removeAll();

	public void removeModifyListener(ModifyListener listener);

	public void removeSelectionListener(SelectionListener listener);

	public void removeVerifyListener(VerifyListener listener);

	override bool sendKeyEvent(int type, int msg, int wParam, int lParam, Event event);
	public void select(int index);

	override void setBackgroundImage(HBITMAP hBitmap);
	override void setBackgroundPixel(int pixel);
	override void setBounds(int x, int y, int width, int height, int flags);
	public override void setFont(Font font);

	override void setForegroundPixel(int pixel);
	public void setItem(int index, String string);

	public void setItems(String[] items);

	public void setOrientation(int orientation);

	void setScrollWidth();
	void setScrollWidth(int scrollWidth);
	void setScrollWidth(StringT buffer, bool grow);
	void setScrollWidth(int newWidth, bool grow);
	public void setSelection(Point selection);

	public void setText(String string);

	public void setTextLimit(int limit);

	override void setToolTipText(Shell shell, String string);
	public void setVisibleItemCount(int count);

	override void subclass();
	override bool translateTraversal(MSG* msg);
	override bool traverseEscape();
	override bool traverseReturn();
	override void unsubclass();
	String verifyText(String string, int start, int end, Event keyEvent);
	int wcsToMbcsPos(int wcsPos);
	override int widgetExtStyle();
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override int windowProc(HWND hwnd, int msg, int wParam, int lParam);
	override LRESULT WM_CTLCOLOR(int wParam, int lParam);
	override LRESULT WM_GETDLGCODE(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam);
	override LRESULT wmChar(HWND hwnd, int wParam, int lParam);
	LRESULT wmClipboard(HWND hwndText, int msg, int wParam, int lParam);
	override LRESULT wmCommandChild(int wParam, int lParam);
	override LRESULT wmIMEChar(HWND hwnd, int wParam, int lParam);
	override LRESULT wmKeyDown(HWND hwnd, int wParam, int lParam);
	override LRESULT wmSysKeyDown(HWND hwnd, int wParam, int lParam);
}

