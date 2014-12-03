// D import file generated from 'org\eclipse\swt\custom\LineBackgroundEvent.d'
module org.eclipse.swt.custom.LineBackgroundEvent;
import java.lang.all;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.custom.StyledTextEvent;
public class LineBackgroundEvent : TypedEvent
{
	public int lineOffset;

	public String lineText;

	public Color lineBackground;

	static const long serialVersionUID = 3978711687853324342L;

	public this(StyledTextEvent e);

}

