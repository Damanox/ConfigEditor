// D import file generated from 'org\eclipse\swt\custom\ExtendedModifyEvent.d'
module org.eclipse.swt.custom.ExtendedModifyEvent;
import java.lang.all;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.custom.StyledTextEvent;
public final class ExtendedModifyEvent : TypedEvent
{
	public int start;

	public int length;

	public String replacedText;

	static const long serialVersionUID = 3258696507027830832L;

	public this(StyledTextEvent e);

}


