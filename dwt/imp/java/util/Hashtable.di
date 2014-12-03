// D import file generated from 'java\util\Hashtable.d'
module java.util.Hashtable;
import java.lang.all;
import java.util.Dictionary;
import java.util.Map;
import java.util.Enumeration;
import java.util.Collection;
import java.util.Set;
class Hashtable : Dictionary, Map
{
	public override Object get(String key);

	public override Object put(String key, Object value);

	public override Object put(Object key, String value);

	public override Object put(String key, String value);

	public override Object remove(String key);

	Object[Object] map;
	public this();

	public this(int initialCapacity);

	public this(int initialCapacity, float loadFactor);

	public this(Map t);

	class ObjectEnumeration : Enumeration
	{
		Object[] values;
		int index = 0;
		this(Object[] values);
		public bool hasMoreElements();

		public Object nextElement();

	}
	override Enumeration elements();
	override Enumeration keys();
	public void clear();

	public bool containsKey(Object key);

	public bool containsKey(String key);

	public bool containsValue(Object value);

	public Set entrySet();

	public override equals_t opEquals(Object o);

	public override Object get(Object key);

	public override hash_t toHash();

	public override bool isEmpty();

	public Set keySet();

	public override Object put(Object key, Object value);

	public void putAll(Map t);

	public override Object remove(Object key);

	public override int size();

	public Collection values();

	public int opApply(int delegate(ref Object value) dg);

	public int opApply(int delegate(ref Object key, ref Object value) dg);

}
