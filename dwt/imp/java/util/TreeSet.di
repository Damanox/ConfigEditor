// D import file generated from 'java\util\TreeSet.d'
module java.util.TreeSet;
import java.lang.all;
import java.util.SortedSet;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Comparator;
version (Tango)
{
	static import tango.util.container.SortedMap;
}
else
{
}
class TreeSet : AbstractSet, SortedSet
{
	version (Tango)
	{
		alias tango.util.container.SortedMap.SortedMap!(Object, int) SetType;
		private SetType set;

	}
	else
	{
	}
	public this();

	public this(Collection c);

	public this(Comparator c);

	public this(SortedSet);

	public override bool add(Object o);

	public override bool add(String o);

	public override bool addAll(Collection c);

	public override void clear();

	public override bool contains(Object o);

	public override bool contains(String o);

	public override bool containsAll(Collection c);

	public Comparator comparator();

	public override equals_t opEquals(Object o);

	public Object first();

	public override hash_t toHash();

	public SortedSet headSet(Object toElement);

	public override bool isEmpty();

	public override Iterator iterator();

	public Object last();

	public override bool remove(Object o);

	public override bool remove(String key);

	public override bool removeAll(Collection c);

	public override bool retainAll(Collection c);

	public override int size();

	public SortedSet subSet(Object fromElement, Object toElement);

	public SortedSet tailSet(Object fromElement);

	public override Object[] toArray();

	public override Object[] toArray(Object[] a);

	public override String toString();

	public override int opApply(int delegate(ref Object value) dg);

}
