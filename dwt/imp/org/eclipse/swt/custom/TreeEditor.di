// D import file generated from 'org\eclipse\swt\custom\TreeEditor.d'
module org.eclipse.swt.custom.TreeEditor;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.TreeEvent;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.custom.ControlEditor;
public class TreeEditor : ControlEditor
{
	Tree tree;
	TreeItem item;
	int column = 0;
	ControlListener columnListener;
	TreeListener treeListener;
	Runnable timer;
	static const int TIMEOUT = 1500;

	public this(Tree tree);

	override Rectangle computeBounds();
	public override void dispose();

	public int getColumn();

	public TreeItem getItem();

	void resize();
	public void setColumn(int column);

	public void setItem(TreeItem item);

	public void setEditor(Control editor, TreeItem item, int column);

	public override void setEditor(Control editor);

	public void setEditor(Control editor, TreeItem item);

	public override void layout();

}

