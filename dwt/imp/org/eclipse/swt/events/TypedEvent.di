// D import file generated from 'org\eclipse\swt\events\TypedEvent.d'
module org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.internal.SWTEventObject;
import java.lang.all;
public class TypedEvent : SWTEventObject
{
	public Display display;

	public Widget widget;

	public int time;

	public Object data;

	public this(Object object);

	public this(Event e);

	String getName();
	public override String toString();

}

