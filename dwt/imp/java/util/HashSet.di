// D import file generated from 'java\util\HashSet.d'
module java.util.HashSet;
import java.lang.all;
import java.util.Set;
import java.util.Collection;
import java.util.Iterator;
version (Tango)
{
	static import tango.util.container.HashSet;
}
else
{
}
class HashSet : Set
{
	version (Tango)
	{
		alias tango.util.container.HashSet.HashSet!Object SetType;
		private SetType set;

	}
	else
	{
	}
	public this();

	public this(Collection c);

	public this(int initialCapacity);

	public this(int initialCapacity, float loadFactor);

	public bool add(Object o);

	public bool add(String o);

	public bool addAll(Collection c);

	public void clear();

	public bool contains(Object o);

	public bool contains(String o);

	public bool containsAll(Collection c);

	public override equals_t opEquals(Object o);

	public override hash_t toHash();

	public bool isEmpty();

	version (Tango)
	{
		class LocalIterator : Iterator
		{
			SetType.Iterator iter;
			Object nextElem;
			this(SetType.Iterator iter);
			public bool hasNext();

			public Object next();

			public void remove();

		}
	}
	else
	{
	}
	public Iterator iterator();

	public bool remove(Object o);

	public bool remove(String key);

	public bool removeAll(Collection c);

	public bool retainAll(Collection c);

	public int size();

	public Object[] toArray();

	public Object[] toArray(Object[] a);

	public override String toString();

	public int opApply(int delegate(ref Object value) dg);

}
