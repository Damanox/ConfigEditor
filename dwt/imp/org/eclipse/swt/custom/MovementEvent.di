// D import file generated from 'org\eclipse\swt\custom\MovementEvent.d'
module org.eclipse.swt.custom.MovementEvent;
import java.lang.all;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.custom.StyledTextEvent;
public class MovementEvent : TypedEvent
{
	public int lineOffset;

	public String lineText;

	public int offset;

	public int newOffset;

	public int movement;

	static const long serialVersionUID = 3978765487853324342L;

	public this(StyledTextEvent e);

}

