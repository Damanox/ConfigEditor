// D import file generated from 'org\eclipse\swt\dnd\DropTargetEffect.d'
module org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.dnd.DropTargetAdapter;
public class DropTargetEffect : DropTargetAdapter
{
	Control control;
	public this(Control control);

	public Control getControl();

	public Widget getItem(int x, int y);

	Widget getItem(Table table, int x, int y);
	Widget getItem(Tree tree, int x, int y);
	TreeItem nextItem(Tree tree, TreeItem item);
	TreeItem previousItem(Tree tree, TreeItem item);
}

