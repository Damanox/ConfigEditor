// D import file generated from 'org\eclipse\swt\dnd\TableDropTargetEffect.d'
module org.eclipse.swt.dnd.TableDropTargetEffect;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.DND;
import java.lang.all;
public class TableDropTargetEffect : DropTargetEffect
{
	static const int SCROLL_HYSTERESIS = 200;

	int scrollIndex = -1;
	long scrollBeginTime;
	TableItem dropHighlight;
	public this(Table table);

	int checkEffect(int effect);
	public override void dragEnter(DropTargetEvent event);

	public override void dragLeave(DropTargetEvent event);

	public override void dragOver(DropTargetEvent event);

}

