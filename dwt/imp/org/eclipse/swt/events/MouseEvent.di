// D import file generated from 'org\eclipse\swt\events\MouseEvent.d'
module org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.events.TypedEvent;
import java.lang.all;
public class MouseEvent : TypedEvent
{
	public int button;

	public int stateMask;

	public int x;

	public int y;

	public int count;

	public this(Event e);

	public override String toString();

}

