// D import file generated from 'org\eclipse\swt\custom\TableEditor.d'
module org.eclipse.swt.custom.TableEditor;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.custom.ControlEditor;
public class TableEditor : ControlEditor
{
	Table table;
	TableItem item;
	int column = -1;
	ControlListener columnListener;
	Runnable timer;
	static const int TIMEOUT = 1500;

	public this(Table table);

	override Rectangle computeBounds();
	public override void dispose();

	public int getColumn();

	public TableItem getItem();

	void resize();
	public void setColumn(int column);

	public void setItem(TableItem item);

	public override void setEditor(Control editor);

	public void setEditor(Control editor, TableItem item, int column);

	public override void layout();

}

