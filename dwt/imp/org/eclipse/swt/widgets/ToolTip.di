// D import file generated from 'org\eclipse\swt\widgets\ToolTip.d'
module org.eclipse.swt.widgets.ToolTip;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TrayItem;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.TypedListener;
import java.lang.all;
public class ToolTip : Widget
{
	Shell parent;
	TrayItem item;
	String text = "";
	String message = "";
	int id;
	int x;
	int y;
	bool autoHide = true;
	bool hasLocation;
	bool visible;
	static const int TIMER_ID = 100;

	public this(Shell parent, int style);

	static int checkStyle(int style);
	public void addSelectionListener(SelectionListener listener);

	override void destroyWidget();
	public bool getAutoHide();

	public String getMessage();

	public Shell getParent();

	public String getText();

	public bool getVisible();

	HWND hwndToolTip();
	public bool isVisible();

	override void releaseHandle();
	override void releaseWidget();
	public void removeSelectionListener(SelectionListener listener);

	public void setAutoHide(bool autoHide);

	public void setLocation(int x, int y);

	public void setLocation(Point location);

	public void setMessage(String string);

	public void setText(String string);

	public void setVisible(bool visible);

}

