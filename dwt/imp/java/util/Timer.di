// D import file generated from 'java\util\Timer.d'
module java.util.Timer;
import java.lang.all;
import java.util.TimerTask;
import java.lang.Thread;
version (Tango)
{
	import tango.core.sync.Mutex;
	import tango.core.sync.Condition;
	import tango.text.convert.Format;
}
else
{
}
class Timer
{
	private static final class TaskQueue
	{
		version (Tango)
		{
			private Mutex mutex;

			private Condition cond;

		}
		else
		{
		}
		private static const int DEFAULT_SIZE = 32;


		private bool nullOnEmpty;

		private TimerTask[] heap;

		private int elements;

		public this();

		private void add(TimerTask task);

		private void remove();

		public void enqueue(TimerTask task);

		private TimerTask top();

		public TimerTask serve();

		public void setNullOnEmpty(bool nullOnEmpty);

		public void stop();

	}


	private static final class Scheduler : Runnable
	{
		private TaskQueue queue;

		public this(TaskQueue queue);

		public void run();

	}


	private static int nr;


	private TaskQueue queue;

	private Scheduler scheduler;

	private Thread thread;

	private bool canceled;

	public this();

	public this(bool daemon);

	private this(bool daemon, int priority);

	private this(bool daemon, int priority, String name);

	public void cancel();

	private void schedule(TimerTask task, long time, long period, bool fixed);

	private static void positiveDelay(long delay);

	private static void positivePeriod(long period);

	public void schedule(TimerTask task, long delay);

	public void schedule(TimerTask task, long delay, long period);

	public void scheduleAtFixedRate(TimerTask task, long delay, long period);

	protected void finalize();

}
