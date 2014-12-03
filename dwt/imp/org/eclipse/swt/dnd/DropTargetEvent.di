// D import file generated from 'org\eclipse\swt\dnd\DropTargetEvent.d'
module org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.DNDEvent;
import org.eclipse.swt.widgets.Event;
public class DropTargetEvent : TypedEvent
{
	public int x;

	public int y;

	public int detail;

	public int operations;

	public int feedback;

	public Widget item;

	public TransferData currentDataType;

	public TransferData[] dataTypes;

	static const long serialVersionUID = 3256727264573338678L;

	public this(DNDEvent e);

	void updateEvent(DNDEvent e);
}

