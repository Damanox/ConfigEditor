// D import file generated from 'org\eclipse\swt\events\ShellAdapter.d'
module org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellListener;
public abstract class ShellAdapter : ShellListener
{
	public void shellActivated(ShellEvent e);

	public void shellClosed(ShellEvent e);

	public void shellDeactivated(ShellEvent e);

	public void shellDeiconified(ShellEvent e);

	public void shellIconified(ShellEvent e);

}


class ShellDelegator : ShellAdapter
{
	alias void delegate(ShellEvent) DFunc;
	DFunc delShellActivated;
	DFunc delShellClosed;
	DFunc delShellDeactivated;
	DFunc delShellDeiconified;
	DFunc delShellIconified;
	private this(DFunc delShellActivated, DFunc delShellClosed, DFunc delShellDeactivated, DFunc delShellDeiconified, DFunc delShellIconified);

	static ShellDelegator createShellActivated(DFunc del);
	static ShellDelegator createShellClosed(DFunc del);
	public override void shellActivated(ShellEvent e);

	public override void shellClosed(ShellEvent e);

	public override void shellDeactivated(ShellEvent e);

	public override void shellDeiconified(ShellEvent e);

	public override void shellIconified(ShellEvent e);

}
