// D import file generated from 'org\eclipse\swt\dnd\DragSourceListener.d'
module org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.dnd.DragSourceEvent;
public interface DragSourceListener : SWTEventListener
{
	public void dragStart(DragSourceEvent event);

	public void dragSetData(DragSourceEvent event);

	public void dragFinished(DragSourceEvent event);

}

