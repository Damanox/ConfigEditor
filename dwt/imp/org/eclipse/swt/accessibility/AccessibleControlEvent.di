// D import file generated from 'org\eclipse\swt\accessibility\AccessibleControlEvent.d'
module org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.internal.SWTEventObject;
import java.lang.all;
public class AccessibleControlEvent : SWTEventObject
{
	public int childID;

	public Accessible accessible;

	public 
	{
		int x;
		int y;
	}
	public 
	{
		int width;
		int height;
	}
	public int detail;

	public String result;

	public Object[] children;

	public this(Object source);

	public override String toString();

}

