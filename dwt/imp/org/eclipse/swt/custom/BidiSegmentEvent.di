// D import file generated from 'org\eclipse\swt\custom\BidiSegmentEvent.d'
module org.eclipse.swt.custom.BidiSegmentEvent;
import java.lang.all;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.custom.StyledTextEvent;
public class BidiSegmentEvent : TypedEvent
{
	public int lineOffset;

	public String lineText;

	public int[] segments;

	this(StyledTextEvent e);
}

