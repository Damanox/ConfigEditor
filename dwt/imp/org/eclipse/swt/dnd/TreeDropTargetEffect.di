// D import file generated from 'org\eclipse\swt\dnd\TreeDropTargetEffect.d'
module org.eclipse.swt.dnd.TreeDropTargetEffect;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.DND;
import java.lang.all;
public class TreeDropTargetEffect : DropTargetEffect
{
	static const int SCROLL_HYSTERESIS = 200;

	static const int EXPAND_HYSTERESIS = 1000;

	int dropIndex;
	int scrollIndex;
	long scrollBeginTime;
	int expandIndex;
	long expandBeginTime;
	TreeItem insertItem;
	bool insertBefore;
	public this(Tree tree);

	int checkEffect(int effect);
	public override void dragEnter(DropTargetEvent event);

	public override void dragLeave(DropTargetEvent event);

	public override void dragOver(DropTargetEvent event);

}

