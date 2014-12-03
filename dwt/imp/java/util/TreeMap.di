// D import file generated from 'java\util\TreeMap.d'
module java.util.TreeMap;
import java.lang.all;
import java.util.Map;
import java.util.Set;
import java.util.Collection;
import java.util.SortedMap;
import java.util.TreeSet;
import java.util.ArrayList;
import java.util.Comparator;
version (Tango)
{
	static import tango.util.container.SortedMap;
}
else
{
}
class TreeMap : Map, SortedMap
{
	version (Tango)
	{
		alias tango.util.container.SortedMap.SortedMap!(Object, Object) MapType;
		private MapType map;

	}
	else
	{
	}
	public this();

	public this(Comparator c);

	public this(Map m);

	public this(SortedMap m);

	public void clear();

	Comparator comparator();
	public bool containsKey(Object key);

	public bool containsKey(String key);

	public bool containsValue(Object value);

	public Set entrySet();

	public override equals_t opEquals(Object o);

	Object firstKey();
	public Object get(Object key);

	public Object get(String key);

	public override hash_t toHash();

	SortedMap headMap(Object toKey);
	public bool isEmpty();

	public Set keySet();

	Object lastKey();
	public Object put(Object key, Object value);

	public Object put(String key, Object value);

	public Object put(Object key, String value);

	public Object put(String key, String value);

	public void putAll(Map t);

	public Object remove(Object key);

	public Object remove(String key);

	public int size();

	SortedMap subMap(Object fromKey, Object toKey);
	SortedMap tailMap(Object fromKey);
	public Collection values();

	public int opApply(int delegate(ref Object value) dg);

	public int opApply(int delegate(ref Object key, ref Object value) dg);

}
