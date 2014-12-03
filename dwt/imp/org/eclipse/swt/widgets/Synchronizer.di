// D import file generated from 'org\eclipse\swt\widgets\Synchronizer.d'
module org.eclipse.swt.widgets.Synchronizer;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.RunnableLock;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.SWT;
import java.lang.all;
import java.lang.Thread;
version (Tango)
{
	import tango.core.Exception : SyncException;
}
else
{
	import core.sync.exception : SyncException;
}
public class Synchronizer
{
	Display display;
	int messageCount;
	RunnableLock[] messages;
	Object messageLock;
	Thread syncThread;
	static const int GROW_SIZE = 4;

	static const int MESSAGE_LIMIT = 64;

	static const bool IS_CARBON = false;

	public this(Display display);

	void addLast(RunnableLock lock);
	public void asyncExec(Runnable runnable);

	int getMessageCount();
	void releaseSynchronizer();
	RunnableLock removeFirst();
	bool runAsyncMessages();
	bool runAsyncMessages(bool all);
	public void syncExec(Runnable runnable);

}

