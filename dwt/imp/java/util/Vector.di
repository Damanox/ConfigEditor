// D import file generated from 'java\util\Vector.d'
module java.util.Vector;
import java.lang.all;
import java.util.AbstractList;
import java.util.List;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.ListIterator;
class Vector : AbstractList, List
{
	Object[] vect;
	int used;
	int capacityIncrement = 32;
	public this();

	public this(Collection c);

	public this(int initialCapacity);

	public this(int initialCapacity, int capacityIncrement);

	public override void add(int index, Object element);

	public override bool add(Object o);

	public override bool add(String o);

	public override bool addAll(Collection c);

	public override bool addAll(int index, Collection c);

	public void addElement(Object obj);

	public int capacity();

	public override void clear();

	public Object clone();

	public override bool contains(Object elem);

	public override bool contains(String str);

	public override bool containsAll(Collection c);

	public void copyInto(void*[] anArray);

	public Object elementAt(int index);

	public Enumeration elements();

	public void ensureCapacity(int minCapacity);

	public override equals_t opEquals(Object o);

	public Object firstElement();

	public override Object get(int index);

	public override hash_t toHash();

	public override int indexOf(Object elem);

	public int indexOf(Object elem, int index);

	public void insertElementAt(Object obj, int index);

	public override bool isEmpty();

	public override Iterator iterator();

	public Object lastElement();

	public override int lastIndexOf(Object elem);

	public int lastIndexOf(Object elem, int index);

	public override ListIterator listIterator();

	public override ListIterator listIterator(int index);

	public override Object remove(int index);

	public override bool remove(Object o);

	public override bool remove(String key);

	public override bool removeAll(Collection c);

	public void removeAllElements();

	public bool removeElement(Object obj);

	public void removeElementAt(int index);

	protected override void removeRange(int fromIndex, int toIndex);

	public override bool retainAll(Collection c);

	public override Object set(int index, Object element);

	public void setElementAt(Object obj, int index);

	public void setSize(int newSize);

	public override int size();

	public override List subList(int fromIndex, int toIndex);

	public override Object[] toArray();

	public override Object[] toArray(Object[] a);

	override String[] toArray(String[] a);
	public override String toString();

	public void trimToSize();

	public override int opApply(int delegate(ref Object value) dg);

}
