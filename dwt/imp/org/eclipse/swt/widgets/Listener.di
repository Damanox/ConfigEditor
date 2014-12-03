// D import file generated from 'org\eclipse\swt\widgets\Listener.d'
module org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Event;
version (Tango)
{
	import tango.core.Traits;
	import tango.core.Tuple;
}
else
{
	import std.traits;
	import std.typetuple;
}
public interface Listener
{
	void handleEvent(Event event);
}

private class _DgListenerT(Dg, T...) : Listener
{
	version (Tango)
	{
		alias ParameterTupleOf!Dg DgArgs;
		static assert(is(DgArgs == Tuple!(Event, T)), "Delegate args not correct: delegate args: (" ~ DgArgs.stringof ~ ") vs. passed args: (" ~ Tuple!(Event, T).stringof ~ ")");
	}
	else
	{
		alias ParameterTypeTuple!Dg DgArgs;
		static assert(is(DgArgs == TypeTuple!(Event, T)), "Delegate args not correct: delegate args: (" ~ DgArgs.stringof ~ ") vs. passed args: (" ~ Tuple!(Event, T).stringof ~ ")");
	}
	Dg dg;
	T t;
	private this(Dg dg, T t)
	{
		this.dg = dg;
		static if (T.length > 0)
		{
			this.t = t;
		}

	}


	void handleEvent(Event e)
	{
		dg(e, t);
	}

}

Listener dgListener(Dg, T...)(Dg dg, T args)
{
	return new _DgListenerT!(Dg, T)(dg, args);
}
