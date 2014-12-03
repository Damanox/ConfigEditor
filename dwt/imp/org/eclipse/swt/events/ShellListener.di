// D import file generated from 'org\eclipse\swt\events\ShellListener.d'
module org.eclipse.swt.events.ShellListener;
public import org.eclipse.swt.internal.SWTEventListener;

public import org.eclipse.swt.events.ShellEvent;

public interface ShellListener : SWTEventListener
{
	public void shellActivated(ShellEvent e);

	public void shellClosed(ShellEvent e);

	public void shellDeactivated(ShellEvent e);

	public void shellDeiconified(ShellEvent e);

	public void shellIconified(ShellEvent e);

}

