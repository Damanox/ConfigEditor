// D import file generated from 'org\eclipse\swt\widgets\ScrollBar.d'
module org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Scrollable;
import java.lang.all;
public class ScrollBar : Widget
{
	Scrollable parent;
	int increment;
	int pageIncrement;
	this(Scrollable parent, int style);
	public void addSelectionListener(SelectionListener listener);

	static int checkStyle(int style);
	void createWidget();
	override void destroyWidget();
	Rectangle getBounds();
	public bool getEnabled();

	public int getIncrement();

	public int getMaximum();

	public int getMinimum();

	public int getPageIncrement();

	public Scrollable getParent();

	public int getSelection();

	public Point getSize();

	public int getThumb();

	public bool getVisible();

	HWND hwndScrollBar();
	public bool isEnabled();

	public bool isVisible();

	override void releaseHandle();
	override void releaseParent();
	public void removeSelectionListener(SelectionListener listener);

	int scrollBarType();
	public void setEnabled(bool enabled);

	public void setIncrement(int value);

	public void setMaximum(int value);

	public void setMinimum(int value);

	public void setPageIncrement(int value);

	bool SetScrollInfo(HWND hwnd, int flags, SCROLLINFO* info, bool fRedraw);
	public void setSelection(int selection);

	public void setThumb(int value);

	public void setValues(int selection, int minimum, int maximum, int thumb, int increment, int pageIncrement);

	public void setVisible(bool visible);

	LRESULT wmScrollChild(int wParam, int lParam);
}

