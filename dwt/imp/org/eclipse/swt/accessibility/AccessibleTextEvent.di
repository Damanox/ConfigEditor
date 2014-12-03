// D import file generated from 'org\eclipse\swt\accessibility\AccessibleTextEvent.d'
module org.eclipse.swt.accessibility.AccessibleTextEvent;
import org.eclipse.swt.internal.SWTEventObject;
import java.lang.all;
public class AccessibleTextEvent : SWTEventObject
{
	public int childID;

	public 
	{
		int offset;
		int length;
	}
	public this(Object source);

	public override String toString();

}

