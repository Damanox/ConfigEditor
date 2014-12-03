// D import file generated from 'java\util\AbstractMap.d'
module java.util.AbstractMap;
import java.lang.all;
import java.util.Map;
import java.util.Collection;
import java.util.Set;
abstract class AbstractMap : Map
{
	public this();

	void clear();
	protected Object clone();

	bool containsKey(String key);
	bool containsKey(Object key);
	bool containsValue(Object value);
	abstract Set entrySet();
	public override equals_t opEquals(Object o);

	Object get(String key);
	Object get(Object key);
	public override hash_t toHash();

	bool isEmpty();
	Set keySet();
	Object put(String key, String value);
	Object put(Object key, String value);
	Object put(String key, Object value);
	Object put(Object key, Object value);
	void putAll(Map t);
	Object remove(String key);
	Object remove(Object key);
	int size();
	override String toString();
	Collection values();
	public int opApply(int delegate(ref Object value) dg);

	public int opApply(int delegate(ref Object key, ref Object value) dg);

}

