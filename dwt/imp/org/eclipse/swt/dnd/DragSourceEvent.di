// D import file generated from 'org\eclipse\swt\dnd\DragSourceEvent.d'
module org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DNDEvent;
public class DragSourceEvent : TypedEvent
{
	public int detail;

	public bool doit;

	public int x;

	public int y;

	public TransferData dataType;

	public Image image;

	static const long serialVersionUID = 3257002142513770808L;

	public this(DNDEvent e);

	void updateEvent(DNDEvent e);
}

