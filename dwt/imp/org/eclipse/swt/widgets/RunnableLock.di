// D import file generated from 'org\eclipse\swt\widgets\RunnableLock.d'
module org.eclipse.swt.widgets.RunnableLock;
import java.lang.all;
import java.lang.Thread;
version (Tango)
{
	import tango.core.sync.Condition;
	import tango.core.sync.Mutex;
}
else
{
	import core.sync.condition;
	import core.sync.mutex;
}
class RunnableLock : Mutex
{
	Runnable runnable;
	Thread thread;
	Exception throwable;
	Condition cond;
	this(Runnable runnable);
	bool done();
	void run();
	void notifyAll();
	void wait();
}
