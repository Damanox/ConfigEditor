// D import file generated from 'java\util\Dictionary.d'
module java.util.Dictionary;
import java.lang.all;
import java.util.Enumeration;
class Dictionary
{
	public this();

	abstract Enumeration elements();
	abstract Object get(Object key);
	Object get(String key);
	abstract bool isEmpty();
	abstract Enumeration keys();
	abstract Object put(Object key, Object value);
	public Object put(String key, Object value);

	public Object put(Object key, String value);

	public Object put(String key, String value);

	abstract Object remove(Object key);
	public Object remove(String key);

	abstract int size();
}
