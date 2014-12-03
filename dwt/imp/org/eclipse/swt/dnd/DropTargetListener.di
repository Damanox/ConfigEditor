// D import file generated from 'org\eclipse\swt\dnd\DropTargetListener.d'
module org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.dnd.DropTargetEvent;
import java.lang.all;
public interface DropTargetListener : SWTEventListener
{
	public void dragEnter(DropTargetEvent event);

	public void dragLeave(DropTargetEvent event);

	public void dragOperationChanged(DropTargetEvent event);

	public void dragOver(DropTargetEvent event);

	public void drop(DropTargetEvent event);

	public void dropAccept(DropTargetEvent event);

}

