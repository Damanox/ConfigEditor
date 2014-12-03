// D import file generated from 'org\eclipse\swt\widgets\Button.d'
module org.eclipse.swt.widgets.Button;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TypedListener;
import java.lang.all;
public class Button : Control
{
	alias Control.computeSize computeSize;
	alias Control.windowProc windowProc;
	extern (Windows) alias int function(HWND, uint, uint, int) TWindowProc;

	String text = "";
	String message = "";
	Image image;
	Image image2;
	Image disabledImage;
	ImageList imageList;
	bool ignoreMouse;
	bool grayed;
	static const int MARGIN = 4;

	mixin(gshared!"private static /+const+/ int CHECK_WIDTH, CHECK_HEIGHT;");
	static const 
	{
		int ICON_WIDTH = 128;
		int ICON_HEIGHT = 128;
	}
	static const bool COMMAND_LINK = false;

	mixin(gshared!"private static /+const+/ TWindowProc ButtonProc;");
	static const TCHAR[] ButtonClass = "BUTTON\x00";

	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	void _setImage(Image image);
	void _setText(String text);
	public void addSelectionListener(SelectionListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	void click();
	int computeLeftMargin();
	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	override int defaultBackground();
	override int defaultForeground();
	override void enableWidget(bool enabled);
	public int getAlignment();

	bool getDefault();
	public bool getGrayed();

	public Image getImage();

	String getMessage();
	override String getNameText();
	public bool getSelection();

	public String getText();

	override bool isTabItem();
	override bool mnemonicHit(wchar ch);
	override bool mnemonicMatch(wchar key);
	override void printWidget(HWND hwnd, GC gc);
	override void releaseWidget();
	public void removeSelectionListener(SelectionListener listener);

	void selectRadio();
	public void setAlignment(int alignment);

	void setDefault(bool value);
	override bool setFixedFocus();
	public void setImage(Image image);

	public void setGrayed(bool grayed);

	void setMessage(String message);
	override bool setRadioFocus();
	override bool setRadioSelection(bool value);
	override bool setSavedFocus();
	public void setSelection(bool selected);

	public void setText(String string);

	void updateSelection(int flags);
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_GETDLGCODE(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_LBUTTONUP(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam);
	override LRESULT WM_UPDATEUISTATE(int wParam, int lParam);
	override LRESULT wmCommandChild(int wParam, int lParam);
	override LRESULT wmColorChild(int wParam, int lParam);
	override LRESULT wmDrawChild(int wParam, int lParam);
}

