// D import file generated from 'org\eclipse\swt\custom\CTabFolder2Listener.d'
module org.eclipse.swt.custom.CTabFolder2Listener;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.custom.CTabFolderEvent;
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
public interface CTabFolder2Listener : SWTEventListener
{
	public enum 
	{
		MINIMIZE,
		MAXIMIZE,
		SHOWLIST,
		RESTORE,
		CLOSE,
	}

	public void close(CTabFolderEvent event);

	public void minimize(CTabFolderEvent event);

	public void maximize(CTabFolderEvent event);

	public void restore(CTabFolderEvent event);

	public void showList(CTabFolderEvent event);

}

private class _DgCTabFolder2ListenerT(Dg, T...) : CTabFolder2Listener
{
	version (Tango)
	{
		alias ParameterTupleOf!Dg DgArgs;
		static assert(is(DgArgs == Tuple!(CTabFolderEvent, T)), "Delegate args not correct: " ~ DgArgs.stringof ~ " vs. (Event," ~ T.stringof ~ ")");
	}
	else
	{
		alias ParameterTypeTuple!Dg DgArgs;
		static assert(is(DgArgs == TypeTuple!(CTabFolderEvent, T)), "Delegate args not correct: " ~ DgArgs.stringof ~ " vs. (Event," ~ T.stringof ~ ")");
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


	void itemClosed(CTabFolderEvent e)
	{
		dg(e, t);
	}

	public void close(CTabFolderEvent e)
	{
		if (type is CTabFolder2Listener.CLOSE)
		{
			dg(e, t);
		}
	}


	public void minimize(CTabFolderEvent e)
	{
		if (type is CTabFolder2Listener.MINIMIZE)
		{
			dg(e, t);
		}
	}


	public void maximize(CTabFolderEvent e)
	{
		if (type is CTabFolder2Listener.MAXIMIZE)
		{
			dg(e, t);
		}
	}


	public void restore(CTabFolderEvent e)
	{
		if (type is CTabFolder2Listener.RESTORE)
		{
			dg(e, t);
		}
	}


	public void showList(CTabFolderEvent e)
	{
		if (type is CTabFolder2Listener.SHOWLIST)
		{
			dg(e, t);
		}
	}


}

CTabFolder2Listener dgCTabFolder2Listener(Dg, T...)(int type, Dg dg, T args)
{
	return new _DgCTabFolder2ListenerT!(Dg, T)(type, dg, args);
}
