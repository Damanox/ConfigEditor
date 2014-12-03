// D import file generated from 'org\eclipse\swt\events\SelectionListener.d'
module org.eclipse.swt.events.SelectionListener;
public import org.eclipse.swt.internal.SWTEventListener;

public import org.eclipse.swt.events.SelectionEvent;

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
public interface SelectionListener : SWTEventListener
{
	public enum 
	{
		SELECTION,
		DEFAULTSELECTION,
	}

	public void widgetSelected(SelectionEvent e);

	public void widgetDefaultSelected(SelectionEvent e);

}

private class _DgSelectionListenerT(Dg, T...) : SelectionListener
{
	version (Tango)
	{
		alias ParameterTupleOf!Dg DgArgs;
		static assert(is(DgArgs == Tuple!(SelectionEvent, T)), "Delegate args not correct: " ~ DgArgs.stringof ~ " vs. (Event," ~ T.stringof ~ ")");
	}
	else
	{
		alias ParameterTypeTuple!Dg DgArgs;
		static assert(is(DgArgs == TypeTuple!(SelectionEvent, T)), "Delegate args not correct: " ~ DgArgs.stringof ~ " vs. (Event," ~ T.stringof ~ ")");
	}
	Dg dg;
	T t;
	int type;
	private this(int type, Dg dg, T t)
	{
		this.type = type;
		this.dg = dg;
		static if (T.length > 0)
		{
			this.t = t;
		}

	}


	public void widgetSelected(SelectionEvent e)
	{
		if (type is SelectionListener.SELECTION)
		{
			dg(e, t);
		}
	}


	public void widgetDefaultSelected(SelectionEvent e)
	{
		if (type is SelectionListener.DEFAULTSELECTION)
		{
			dg(e, t);
		}
	}


}

SelectionListener dgSelectionListener(Dg, T...)(int type, Dg dg, T args)
{
	return new _DgSelectionListenerT!(Dg, T)(type, dg, args);
}
SelectionListener dgSelectionListenerWidgetSelected(Dg, T...)(Dg dg, T args)
{
	return dgSelectionListener(SelectionListener.SELECTION, dg, args);
}
SelectionListener dgSelectionListenerWidgetDefaultSelected(Dg, T...)(Dg dg, T args)
{
	return dgSelectionListener(SelectionListener.DEFAULTSELECTION, dg, args);
}
