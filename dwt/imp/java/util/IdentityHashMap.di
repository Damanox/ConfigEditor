// D import file generated from 'java\util\IdentityHashMap.d'
module java.util.IdentityHashMap;
import java.lang.all;
import java.util.Map;
import java.util.HashSet;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
version (Tango)
{
	static import tango.util.container.HashMap;
}
else
{
}
class IdentityHashMap : Map
{
	version (Tango)
	{
		alias tango.util.container.HashMap.HashMap!(Object, Object) MapType;
		private MapType map;

	}
	else
	{
	}
	public this();

	public this(int initialCapacity);

	public this(int initialCapacity, float loadFactor);

	public this(Map m);

	public void clear();

	public bool containsKey(Object key);

	public bool containsKey(String key);

	public bool containsValue(Object value);

	public Set entrySet();

	public override equals_t opEquals(Object o);

	public Object get(Object key);

	public Object get(String key);

	public override hash_t toHash();

	public bool isEmpty();

	public Set keySet();

	public Object put(Object key, Object value);

	public Object put(String key, Object value);

	public Object put(Object key, String value);

	public Object put(String key, String value);

	public void putAll(Map t);

	public Object remove(Object key);

	public Object remove(String key);

	public int size();

	public Collection values();

	public int opApply(int delegate(ref Object value) dg);

	public int opApply(int delegate(ref Object key, ref Object value) dg);

}
