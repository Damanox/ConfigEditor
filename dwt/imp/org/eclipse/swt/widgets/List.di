// D import file generated from 'org\eclipse\swt\widgets\List.d'
module org.eclipse.swt.widgets.List;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TypedListener;
import java.lang.all;
public class List : Scrollable
{
	alias Scrollable.computeSize computeSize;
	alias Scrollable.windowProc windowProc;
	static const int INSET = 3;

	mixin(gshared!"private static /+const+/ WNDPROC ListProc;");
	static const TCHAR[] ListClass = "LISTBOX";

	private static bool static_this_completed = false;


	private static void static_this();

	public this(Composite parent, int style);

	public void add(String string);

	public void add(String string, int index);

	public void addSelectionListener(SelectionListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	public override Point computeSize(int wHint, int hHint, bool changed);

	override int defaultBackground();
	public void deselect(int[] indices);

	public void deselect(int index);

	public void deselect(int start, int end);

	public void deselectAll();

	public int getFocusIndex();

	public String getItem(int index);

	public int getItemCount();

	public int getItemHeight();

	public String[] getItems();

	public String[] getSelection();

	public int getSelectionCount();

	public int getSelectionIndex();

	public int[] getSelectionIndices();

	public int getTopIndex();

	public int indexOf(String string);

	public int indexOf(String string, int start);

	public bool isSelected(int index);

	public void remove(int[] indices);

	public void remove(int index);

	public void remove(int start, int end);

	public void remove(String string);

	public void removeAll();

	public void removeSelectionListener(SelectionListener listener);

	public void select(int[] indices);

	void select(int[] indices, bool scroll);
	public void select(int index);

	void select(int index, bool scroll);
	public void select(int start, int end);

	void select(int start, int end, bool scroll);
	public void selectAll();

	void setFocusIndex(int index);
	public override void setFont(Font font);

	public void setItem(int index, String string);

	public void setItems(String[] items);

	void setScrollWidth();
	void setScrollWidth(LPCTSTR buffer, bool grow);
	void setScrollWidth(int newWidth, bool grow);
	public void setSelection(int[] indices);

	public void setSelection(String[] items);

	public void setSelection(int index);

	public void setSelection(int start, int end);

	public void setTopIndex(int index);

	public void showSelection();

	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT WM_CHAR(int wParam, int lParam);
	override LRESULT WM_KEYDOWN(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT wmCommandChild(int wParam, int lParam);
}

