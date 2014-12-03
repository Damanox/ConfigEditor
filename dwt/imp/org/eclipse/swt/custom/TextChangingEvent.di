// D import file generated from 'org\eclipse\swt\custom\TextChangingEvent.d'
module org.eclipse.swt.custom.TextChangingEvent;
import java.lang.all;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.StyledTextEvent;
public class TextChangingEvent : TypedEvent
{
	public int start;

	public String newText;

	public int replaceCharCount;

	public int newCharCount;

	public int replaceLineCount;

	public int newLineCount;

	static const long serialVersionUID = 3257290210114352439L;

	public this(StyledTextContent source);

	this(StyledTextContent source, StyledTextEvent e);
}

