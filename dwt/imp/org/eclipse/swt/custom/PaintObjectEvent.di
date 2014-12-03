// D import file generated from 'org\eclipse\swt\custom\PaintObjectEvent.d'
module org.eclipse.swt.custom.PaintObjectEvent;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.StyledTextEvent;
public class PaintObjectEvent : TypedEvent
{
	public GC gc;

	public int x;

	public int y;

	public int ascent;

	public int descent;

	public StyleRange style;

	public Bullet bullet;

	public int bulletIndex;

	static const long serialVersionUID = 3906081274027192855L;

	public this(StyledTextEvent e);

}

