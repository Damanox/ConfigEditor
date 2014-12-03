// D import file generated from 'org\eclipse\swt\widgets\EventTable.d'
module org.eclipse.swt.widgets.EventTable;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.internal.SWTEventListener;
import java.lang.System;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.SWTEventListener;
class EventTable
{
	int[] types;
	Listener[] listeners;
	int level;
	static const int GROW_SIZE = 4;

	public Listener[] getListeners(int eventType);

	public void hook(int eventType, Listener listener);

	public bool hooks(int eventType);

	public void sendEvent(Event event);

	public int size();

	void remove(int index);
	public void unhook(int eventType, Listener listener);

	public void unhook(int eventType, SWTEventListener listener);

}
