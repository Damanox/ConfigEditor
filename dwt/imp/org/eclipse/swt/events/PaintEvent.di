// D import file generated from 'org\eclipse\swt\events\PaintEvent.d'
module org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.events.TypedEvent;
import java.lang.all;
public final class PaintEvent : TypedEvent
{
	public GC gc;

	public int x;

	public int y;

	public int width;

	public int height;

	public int count;

	public this(Event e);

	public override String toString();

}


