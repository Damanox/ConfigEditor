// D import file generated from 'org\eclipse\swt\internal\Lock.d'
module org.eclipse.swt.internal.Lock;
import java.lang.all;
import java.lang.Thread;
version (Tango)
{
	import tango.core.sync.Mutex;
	import tango.core.sync.Condition;
}
else
{
	import core.sync.mutex;
	import core.sync.condition;
}
public class Lock
{
	int count;
	int waitCount;
	Thread owner;
	Mutex mutex;
	Condition cond;
	public this();

	public int lock();

	public void unlock();

}

