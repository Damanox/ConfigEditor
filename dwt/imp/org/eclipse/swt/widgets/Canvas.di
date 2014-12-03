// D import file generated from 'org\eclipse\swt\widgets\Canvas.d'
module org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Caret;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.IME;
import java.lang.all;
public class Canvas : Composite
{
	alias Composite.drawBackground drawBackground;
	alias Composite.windowProc windowProc;
	Caret caret;
	IME ime;
	this();
	public this(Composite parent, int style);

	void clearArea(int x, int y, int width, int height);
	public void drawBackground(GC gc, int x, int y, int width, int height);

	public Caret getCaret();

	public IME getIME();

	override void releaseChildren(bool destroy);
	public void scroll(int destX, int destY, int x, int y, int width, int height, bool all);

	public void setCaret(Caret caret);

	public override void setFont(Font font);

	public void setIME(IME ime);

	override int windowProc(HWND hwnd, int msg, int wParam, int lParam);
	override LRESULT WM_CHAR(int wParam, int lParam);
	override LRESULT WM_IME_COMPOSITION(int wParam, int lParam);
	override LRESULT WM_IME_COMPOSITION_START(int wParam, int lParam);
	override LRESULT WM_IME_ENDCOMPOSITION(int wParam, int lParam);
	override LRESULT WM_INPUTLANGCHANGE(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_WINDOWPOSCHANGED(int wParam, int lParam);
	override LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam);
}

