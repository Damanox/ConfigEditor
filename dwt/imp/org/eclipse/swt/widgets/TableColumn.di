// D import file generated from 'org\eclipse\swt\widgets\TableColumn.d'
module org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class TableColumn : Item
{
	Table parent;
	bool resizable;
	bool moveable;
	String toolTipText;
	int id;
	public this(Table parent, int style);

	public this(Table parent, int style, int index);

	public void addControlListener(ControlListener listener);

	public void addSelectionListener(SelectionListener listener);

	static int checkStyle(int style);
	protected override void checkSubclass();

	override void destroyWidget();
	public int getAlignment();

	override String getNameText();
	public Table getParent();

	public bool getMoveable();

	public bool getResizable();

	public String getToolTipText();

	public int getWidth();

	public void pack();

	override void releaseHandle();
	override void releaseParent();
	public void removeControlListener(ControlListener listener);

	public void removeSelectionListener(SelectionListener listener);

	public void setAlignment(int alignment);

	public override void setImage(Image image);

	void setImage(Image image, bool sort, bool right);
	public void setMoveable(bool moveable);

	public void setResizable(bool resizable);

	void setSortDirection(int direction);
	public override void setText(String string);

	public void setToolTipText(String string);

	public void setWidth(int width);

	void updateToolTip(int index);
}

