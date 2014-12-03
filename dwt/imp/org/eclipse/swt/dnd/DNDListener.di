// D import file generated from 'org\eclipse\swt\dnd\DNDListener.d'
module org.eclipse.swt.dnd.DNDListener;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.DNDEvent;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceEffect;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.DropTarget;
class DNDListener : TypedListener
{
	Widget dndWidget;
	this(SWTEventListener listener);
	public override void handleEvent(Event e);

}
