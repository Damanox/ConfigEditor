// D import file generated from 'org\eclipse\swt\widgets\Event.d'
module org.eclipse.swt.widgets.Event;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Display;
import java.lang.all;
public class Event
{
	public Display display;

	public Widget widget;

	public int type;

	public int detail;

	public Widget item;

	public int index;

	public GC gc;

	public int x;

	public int y;

	public int width;

	public int height;

	public int count;

	public int time;

	public int button;

	public wchar character = '\x00';

	public int keyCode;

	public int stateMask;

	public 
	{
		int start;
		int end;
	}
	public String text;

	public bool doit = true;

	public Object data;

	public Rectangle getBounds();

	public void setBounds(Rectangle rect);

	public override String toString();

}

