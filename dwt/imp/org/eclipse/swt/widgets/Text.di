// D import file generated from 'org\eclipse\swt\widgets\Text.d'
module org.eclipse.swt.widgets.Text;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Control;
import java.lang.all;
public class Text : Scrollable
{
	alias Scrollable.computeSize computeSize;
	alias Scrollable.dragDetect dragDetect;
	alias Scrollable.sendKeyEvent sendKeyEvent;
	alias Scrollable.setBounds setBounds;
	int tabs;
	int oldStart;
	int oldEnd;
	bool doubleClick;
	bool ignoreModify;
	bool ignoreVerify;
	bool ignoreCharacter;
	String message;
	mixin(gshared!"private static int LIMIT_;");
	public static int LIMIT();

	public static const String DELIMITER = "\x0d\x0a";


	mixin(gshared!"private static /+const+/ WNDPROC EditProc;");
	static const TCHAR[] EditClass = "EDIT\x00";

	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	override void createHandle();
	public void addModifyListener(ModifyListener listener);

	public void addSelectionListener(SelectionListener listener);

	public void addVerifyListener(VerifyListener listener);

	public void append(String string);

	static int checkStyle(int style);
	public void clearSelection();

	public override Point computeSize(int wHint, int hHint, bool changed);

	public override Rectangle computeTrim(int x, int y, int width, int height);

	public void copy();

	override void createWidget();
	public void cut();

	override int defaultBackground();
	override bool dragDetect(HWND hwnd, int x, int y, bool filter, bool[] detect, bool[] consume);
	void fixAlignment();
	public override int getBorderWidth();

	public int getCaretLineNumber();

	public Point getCaretLocation();

	public int getCaretPosition();

	public int getCharCount();

	public bool getDoubleClickEnabled();

	public char getEchoChar();

	public bool getEditable();

	public int getLineCount();

	public String getLineDelimiter();

	public int getLineHeight();

	public int getOrientation();

	public String getMessage();

	int getPosition(Point point);
	public Point getSelection();

	public int getSelectionCount();

	public String getSelectionText();

	public int getTabs();

	int getTabWidth(int tabs);
	public String getText();

	public String getText(int start, int end);

	public int getTextLimit();

	public int getTopIndex();

	public int getTopPixel();

	public void insert(String string);

	int mbcsToWcsPos(int mbcsPos);
	public void paste();

	override void releaseWidget();
	public void removeModifyListener(ModifyListener listener);

	public void removeSelectionListener(SelectionListener listener);

	public void removeVerifyListener(VerifyListener listener);

	public void selectAll();

	override bool sendKeyEvent(int type, int msg, int wParam, int lParam, Event event);
	override void setBounds(int x, int y, int width, int height, int flags);
	override void setDefaultFont();
	public void setDoubleClickEnabled(bool doubleClick);

	public void setEchoChar(char echo);

	public void setEditable(bool editable);

	public override void setFont(Font font);

	void setMargins();
	public void setMessage(String message);

	public void setOrientation(int orientation);

	public void setSelection(int start);

	public void setSelection(int start, int end);

	public override void setRedraw(bool redraw);

	public void setSelection(Point selection);

	public void setTabs(int tabs);

	void setTabStops(int tabs);
	public void setText(String string);

	public void setTextLimit(int limit);

	public void setTopIndex(int index);

	public void showSelection();

	String verifyText(String string, int start, int end, Event keyEvent);
	int wcsToMbcsPos(int wcsPos);
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override int windowProc(HWND hwnd, int msg, int wParam, int lParam);
	override LRESULT WM_CHAR(int wParam, int lParam);
	override LRESULT WM_CLEAR(int wParam, int lParam);
	override LRESULT WM_CUT(int wParam, int lParam);
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_GETDLGCODE(int wParam, int lParam);
	override LRESULT WM_IME_CHAR(int wParam, int lParam);
	override LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_PASTE(int wParam, int lParam);
	override LRESULT WM_UNDO(int wParam, int lParam);
	LRESULT wmClipboard(int msg, int wParam, int lParam);
	override LRESULT wmColorChild(int wParam, int lParam);
	override LRESULT wmCommandChild(int wParam, int lParam);
}

