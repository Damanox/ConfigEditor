// D import file generated from 'java\util\WeakHashMap.d'
module java.util.WeakHashMap;
private 
{
	alias void delegate(Object) DisposeEvt;
	extern (C) void rt_attachDisposeEvent(Object obj, DisposeEvt evt);

	extern (C) void rt_detachDisposeEvent(Object obj, DisposeEvt evt);

}
class WeakHashMap
{
	static class Ref
	{
		size_t ptr;
		this(Object k);
		override hash_t toHash();
		override equals_t opEquals(Object o);
	}

	private Ref unhookKey;

	private void unhook(Object o);

	Object[Ref] data;
	version (Tango)
	{
		ClassInfo gcLock;
	}
	else
	{
		mixin("const ClassInfo gcLock;");
	}
	this();
	public void put(Object key, Object element);

	public void remove(Object key);

	public Object get(Object key);

}
