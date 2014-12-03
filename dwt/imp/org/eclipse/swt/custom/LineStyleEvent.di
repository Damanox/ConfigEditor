// D import file generated from 'org\eclipse\swt\custom\LineStyleEvent.d'
module org.eclipse.swt.custom.LineStyleEvent;
import java.lang.all;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.StyledTextEvent;
public class LineStyleEvent : TypedEvent
{
	public int lineOffset;

	public String lineText;

	public int[] ranges;

	public StyleRange[] styles;

	public int alignment;

	public int indent;

	public bool justify;

	public Bullet bullet;

	public int bulletIndex;

	static const long serialVersionUID = 3906081274027192884L;

	public this(StyledTextEvent e);

}

