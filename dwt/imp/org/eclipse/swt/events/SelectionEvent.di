// D import file generated from 'org\eclipse\swt\events\SelectionEvent.d'
module org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.events.TypedEvent;
import java.lang.all;
public class SelectionEvent : TypedEvent
{
	public Widget item;

	public int detail;

	public int x;

	public int y;

	public int width;

	public int height;

	public int stateMask;

	public String text;

	public bool doit;

	public this(Event e);

	public override String toString();

}

