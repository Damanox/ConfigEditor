// D import file generated from 'org\eclipse\swt\widgets\Group.d'
module org.eclipse.swt.widgets.Group;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import java.lang.all;
public class Group : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.windowProc windowProc;
	String text = "";
	static const int CLIENT_INSET = 3;

	mixin(gshared!"private static /+const+/ WNDPROC GroupProc;");
	static if (OS.IsWinCE)
	{
		static const TCHAR[] GroupClass = "BUTTON\x00";

	}
	else
	{
		static const TCHAR[] GroupClass = "SWT_GROUP\x00";

	}
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	protected override void checkSubclass();

	public override Point computeSize(int wHint, int hHint, bool changed);

	public override Rectangle computeTrim(int x, int y, int width, int height);

	override void createHandle();
	override void enableWidget(bool enabled);
	public override Rectangle getClientArea();

	override String getNameText();
	public String getText();

	override bool mnemonicHit(wchar key);
	override bool mnemonicMatch(wchar key);
	override void printWidget(HWND hwnd, GC gc);
	override void releaseWidget();
	public override void setFont(Font font);

	public void setText(String string);

	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_NCHITTEST(int wParam, int lParam);
	override LRESULT WM_MOUSEMOVE(int wParam, int lParam);
	override LRESULT WM_PRINTCLIENT(int wParam, int lParam);
	override LRESULT WM_UPDATEUISTATE(int wParam, int lParam);
	override LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam);
}

