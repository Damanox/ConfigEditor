// D import file generated from 'java\lang\Thread.d'
module java.lang.Thread;
version (Tango)
{
	static import tango.core.Thread;
}
else
{
	static import core.thread;
	static import core.time;
}
import java.lang.util;
import java.lang.Runnable;
class Thread
{
	version (Tango)
	{
		alias tango.core.Thread.Thread TThread;
	}
	else
	{
		alias core.thread.Thread TThread;
	}
	private TThread thread;

	private Runnable runnable;

	private bool interrupted_ = false;

	version (Tango)
	{
		private alias tango.core.Thread.ThreadLocal!Thread TTLS;

		private static TTLS tls;


	}
	else
	{
		private static Thread tls;


	}
	public static const int MAX_PRIORITY = 10;


	public static const int MIN_PRIORITY = 1;


	public static const int NORM_PRIORITY = 5;


	version (Tango)
	{
		private static TTLS getTls();

	}
	public this();

	public this(void delegate() dg);

	public this(Runnable runnable);

	public this(Runnable runnable, String name);

	public this(String name);

	public void start();

	public static Thread currentThread();

	public int getPriority();

	public void setPriority(int newPriority);

	private void internalRun();

	public bool isAlive();

	public bool isDaemon();

	public void join();

	public void setDaemon(bool on);

	public void setName(String name);

	public String getName();

	void interrupt();
	static bool interrupted();
	public void run();

	public static void sleep(int time);

	public TThread nativeThread();

	public override String toString();

	public static void yield();

	public static void joinAll();

}
