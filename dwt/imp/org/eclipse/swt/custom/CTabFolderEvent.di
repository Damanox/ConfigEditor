// D import file generated from 'org\eclipse\swt\custom\CTabFolderEvent.d'
module org.eclipse.swt.custom.CTabFolderEvent;
import java.lang.all;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Widget;
public class CTabFolderEvent : TypedEvent
{
	public Widget item;

	public bool doit;

	public int x;

	public int y;

	public int width;

	public int height;

	static const long serialVersionUID = 3760566386225066807L;

	this(Widget w);
	public override String toString();

}

