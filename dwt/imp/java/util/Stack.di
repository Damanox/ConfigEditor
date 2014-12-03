// D import file generated from 'java\util\Stack.d'
module java.util.Stack;
import java.lang.all;
import java.util.Vector;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Set;
import java.util.List;
import java.util.Collection;
class Stack : Vector
{
	this();
	override void add(int index, Object element);
	override bool add(Object o);
	public override bool add(String o);

	override bool addAll(Collection c);
	override bool addAll(int index, Collection c);
	override void addElement(Object obj);
	override int capacity();
	override void clear();
	override Object clone();
	override bool contains(Object elem);
	override bool containsAll(Collection c);
	void copyInto(Object[] anArray);
	override Object elementAt(int index);
	override void ensureCapacity(int minCapacity);
	override equals_t opEquals(Object o);
	override Object firstElement();
	override Object get(int index);
	override hash_t toHash();
	override int indexOf(Object elem);
	override int indexOf(Object elem, int index);
	override void insertElementAt(Object obj, int index);
	override Iterator iterator();
	override Object lastElement();
	override int lastIndexOf(Object elem);
	override int lastIndexOf(Object elem, int index);
	override ListIterator listIterator();
	override ListIterator listIterator(int index);
	override Object remove(int index);
	override bool remove(Object o);
	public override bool remove(String key);

	override bool removeAll(Collection c);
	override void removeAllElements();
	override bool removeElement(Object obj);
	override void removeElementAt(int index);
	protected override void removeRange(int fromIndex, int toIndex);

	override bool retainAll(Collection c);
	override Object set(int index, Object element);
	override void setElementAt(Object obj, int index);
	override void setSize(int newSize);
	override int size();
	override List subList(int fromIndex, int toIndex);
	override Object[] toArray();
	override Object[] toArray(Object[] a);
	override String[] toArray(String[] a);
	override String toString();
	override void trimToSize();
	bool empty();
	Object peek();
	Object pop();
	Object push(Object item);
	int search(Object o);
	public override int opApply(int delegate(ref Object value) dg);

}
