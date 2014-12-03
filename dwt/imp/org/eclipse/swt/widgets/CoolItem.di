// D import file generated from 'org\eclipse\swt\widgets\CoolItem.d'
module org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import java.lang.all;
public class CoolItem : Item
{
	CoolBar parent;
	Control control;
	int id;
	bool ideal;
	bool minimum;
	public this(CoolBar parent, int style);

	public this(CoolBar parent, int style, int index);

	public void addSelectionListener(SelectionListener listener);

	protected override void checkSubclass();

	public Point computeSize(int wHint, int hHint);

	override void destroyWidget();
	public Rectangle getBounds();

	Rectangle getClientArea();
	public Control getControl();

	public CoolBar getParent();

	override void releaseHandle();
	public void setControl(Control control);

	public Point getPreferredSize();

	public void setPreferredSize(int width, int height);

	public void setPreferredSize(Point size);

	public Point getSize();

	public void setSize(int width, int height);

	public void setSize(Point size);

	public Point getMinimumSize();

	public void setMinimumSize(int width, int height);

	public void setMinimumSize(Point size);

	bool getWrap();
	void setWrap(bool wrap);
	public void removeSelectionListener(SelectionListener listener);

}

