// D import file generated from 'org\eclipse\swt\accessibility\AccessibleTextListener.d'
module org.eclipse.swt.accessibility.AccessibleTextListener;
import org.eclipse.swt.accessibility.AccessibleTextEvent;
import org.eclipse.swt.internal.SWTEventListener;
public interface AccessibleTextListener : SWTEventListener
{
	public void getCaretOffset(AccessibleTextEvent e);

	public void getSelectionRange(AccessibleTextEvent e);

}

