// D import file generated from 'org\eclipse\swt\accessibility\AccessibleListener.d'
module org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.accessibility.AccessibleEvent;
public interface AccessibleListener : SWTEventListener
{
	public void getName(AccessibleEvent e);

	public void getHelp(AccessibleEvent e);

	public void getKeyboardShortcut(AccessibleEvent e);

	public void getDescription(AccessibleEvent e);

}

