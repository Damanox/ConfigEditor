// D import file generated from 'java\util\AbstractList.d'
module java.util.AbstractList;
import java.lang.all;
import java.util.Collection;
import java.util.AbstractCollection;
import java.util.List;
import java.util.ListIterator;
import java.util.Iterator;
abstract class AbstractList : AbstractCollection, List
{
	this();
	public void add(int index, Object element);

	public bool add(String o);

	public override bool add(Object o);

	public override bool addAll(Collection c);

	public bool addAll(int index, Collection c);

	public override void clear();

	public override bool contains(Object o);

	public bool contains(String str);

	public override bool containsAll(Collection c);

	public abstract override equals_t opEquals(Object o);

	public abstract Object get(int index);

	public abstract override hash_t toHash();

	public int indexOf(Object o);

	public override bool isEmpty();

	public override Iterator iterator();

	public int lastIndexOf(Object o);

	public ListIterator listIterator();

	public ListIterator listIterator(int index);

	public Object remove(int index);

	protected void removeRange(int fromIndex, int toIndex);

	public override bool remove(Object o);

	public override bool remove(String o);

	public override bool removeAll(Collection c);

	public override bool retainAll(Collection c);

	public Object set(int index, Object element);

	public List subList(int fromIndex, int toIndex);

	public override Object[] toArray();

	public override Object[] toArray(Object[] a);

	public override String[] toArray(String[] a);

	public int opApply(int delegate(ref Object value) dg);

	public override String toString();

}

