// D import file generated from 'org\eclipse\swt\custom\TableTreeEditor.d'
module org.eclipse.swt.custom.TableTreeEditor;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.TreeEvent;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.custom.ControlEditor;
import org.eclipse.swt.custom.TableTree;
import org.eclipse.swt.custom.TableTreeItem;
public class TableTreeEditor : ControlEditor
{
	alias ControlEditor.setEditor setEditor;
	TableTree tableTree;
	TableTreeItem item;
	int column = -1;
	ControlListener columnListener;
	TreeListener treeListener;
	public this(TableTree tableTree);

	override Rectangle computeBounds();
	public override void dispose();

	public int getColumn();

	public TableTreeItem getItem();

	public void setColumn(int column);

	public void setItem(TableTreeItem item);

	alias ControlEditor.setEditor setEditor;
	public void setEditor(Control editor, TableTreeItem item, int column);

	public override void layout();

}

