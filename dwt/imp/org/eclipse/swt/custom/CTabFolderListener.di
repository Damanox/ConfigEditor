// D import file generated from 'org\eclipse\swt\custom\CTabFolderListener.d'
module org.eclipse.swt.custom.CTabFolderListener;
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
public interface CTabFolderListener : SWTEventListener
{
	public void itemClosed(CTabFolderEvent event);

}

private class _DgCTabFolderListenerT(Dg, T...) : CTabFolderListener
{
	version (Tango)
	{
		alias ParameterTupleOf!Dg DgArgs;
		static assert(is(DgArgs == Tuple!(CTabFolderEvent, T)), "Delegate args not correct");
	}
	else
	{
		alias ParameterTypeTuple!Dg DgArgs;
		static assert(is(DgArgs == TypeTuple!(CTabFolderEvent, T)), "Delegate args not correct");
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


	void itemClosed(CTabFolderEvent e)
	{
		dg(e, t);
	}

}

CTabFolderListener dgCTabFolderListener(Dg, T...)(Dg dg, T args)
{
	return new _DgCTabFolderListenerT!(Dg, T)(dg, args);
}
