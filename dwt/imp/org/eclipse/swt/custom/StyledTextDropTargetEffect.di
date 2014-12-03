// D import file generated from 'org\eclipse\swt\custom\StyledTextDropTargetEffect.d'
module org.eclipse.swt.custom.StyledTextDropTargetEffect;
import org.eclipse.swt.SWT;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.DropTargetAdapter;
import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.StyledTextContent;
import java.lang.all;
public class StyledTextDropTargetEffect : DropTargetEffect
{
	static const int CARET_WIDTH = 2;

	static const int SCROLL_HYSTERESIS = 100;

	static const int SCROLL_TOLERANCE = 20;

	int currentOffset = -1;
	long scrollBeginTime;
	int scrollX = -1;
	int scrollY = -1;
	Listener paintListener;
	public this(StyledText styledText);

	public override void dragEnter(DropTargetEvent event);

	public override void dragLeave(DropTargetEvent event);

	public override void dragOver(DropTargetEvent event);

	void refreshCaret(StyledText text, int oldOffset, int newOffset);
	public override void dropAccept(DropTargetEvent event);

}

