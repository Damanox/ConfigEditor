// D import file generated from 'org\eclipse\swt\accessibility\AccessibleControlListener.d'
module org.eclipse.swt.accessibility.AccessibleControlListener;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.internal.SWTEventListener;
public interface AccessibleControlListener : SWTEventListener
{
	public void getChildAtPoint(AccessibleControlEvent e);

	public void getLocation(AccessibleControlEvent e);

	public void getChild(AccessibleControlEvent e);

	public void getChildCount(AccessibleControlEvent e);

	public void getDefaultAction(AccessibleControlEvent e);

	public void getFocus(AccessibleControlEvent e);

	public void getRole(AccessibleControlEvent e);

	public void getSelection(AccessibleControlEvent e);

	public void getState(AccessibleControlEvent e);

	public void getValue(AccessibleControlEvent e);

	public void getChildren(AccessibleControlEvent e);

}

