// D import file generated from 'org\eclipse\swt\events\KeyEvent.d'
module org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.events.TypedEvent;
import java.lang.all;
public class KeyEvent : TypedEvent
{
	public wchar character = '\x00';

	public int keyCode;

	public int stateMask;

	public bool doit;

	static const long serialVersionUID = 3256442491011412789L;

	public this(Event e);

	public override String toString();

}

