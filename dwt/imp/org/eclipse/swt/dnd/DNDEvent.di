// D import file generated from 'org\eclipse\swt\dnd\DNDEvent.d'
module org.eclipse.swt.dnd.DNDEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.dnd.TransferData;
class DNDEvent : Event
{
	public TransferData dataType;

	public TransferData[] dataTypes;

	public int operations;

	public int feedback;

	public Image image;

}
