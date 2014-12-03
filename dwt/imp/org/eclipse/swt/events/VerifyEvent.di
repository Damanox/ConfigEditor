// D import file generated from 'org\eclipse\swt\events\VerifyEvent.d'
module org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.events.KeyEvent;
import java.lang.all;
public final class VerifyEvent : KeyEvent
{
	public 
	{
		int start;
		int end;
	}
	public String text;

	public this(Event e);

	public override String toString();

}


