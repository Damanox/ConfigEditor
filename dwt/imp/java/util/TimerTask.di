// D import file generated from 'java\util\TimerTask.d'
module java.util.TimerTask;
import java.lang.all;
import java.util.Timer;
class TimerTask : Runnable
{
	package long scheduled;

	package long lastExecutionTime;

	package long period;

	package bool fixed;

	this();
	bool cancel();
	abstract void run();
	long scheduledExcecutionTime();
}
