// D import file generated from 'java\util\ArrayList.d'
module java.util.ArrayList;
import java.lang.all;
import java.util.AbstractList;
import java.util.List;
import java.util.ListIterator;
import java.util.Collection;
import java.util.Iterator;
class ArrayList : AbstractList, List
{
	private Object[] data;

	this();
	this(int size);
	this(Collection col);
	override void add(int index, Object element);
	override bool add(Object o);
	public override bool add(String o);

	override bool addAll(Collection c);
	override bool addAll(int index, Collection c);
	override void clear();
	ArrayList clone();
	override bool contains(Object o);
	override bool contains(String o);
	override bool containsAll(Collection c);
	override equals_t opEquals(Object o);
	override Object get(int index);
	public override hash_t toHash();

	override int indexOf(Object o);
	override bool isEmpty();
	class LocalIterator : Iterator
	{
		int idx = -1;
		public this();

		public bool hasNext();

		public Object next();

		public void remove();

	}
	override Iterator iterator();
	override int lastIndexOf(Object o);
	class LocalListIterator : ListIterator
	{
		int idx_next = 0;
		public bool hasNext();

		public Object next();

		public void remove();

		public void add(Object o);

		public void add(String o);

		public bool hasPrevious();

		public int nextIndex();

		public Object previous();

		public int previousIndex();

		public void set(Object o);

	}
	override ListIterator listIterator();
	override ListIterator listIterator(int index);
	override Object remove(int index);
	override bool remove(Object o);
	public override bool remove(String key);

	override bool removeAll(Collection c);
	override bool retainAll(Collection c);
	protected override void removeRange(int fromIndex, int toIndex);

	override Object set(int index, Object element);
	override int size();
	override List subList(int fromIndex, int toIndex);
	override Object[] toArray();
	override Object[] toArray(Object[] a);
	override String[] toArray(String[] a);
	public override int opApply(int delegate(ref Object value) dg);

	public override String toString();

}
