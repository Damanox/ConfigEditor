// D import file generated from 'java\util\LinkedList.d'
module java.util.LinkedList;
import java.lang.all;
import java.util.List;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Collection;
version (Tango)
{
	static import tango.util.container.CircularList;
}
else
{
}
class LinkedList : List
{
	version (Tango)
	{
		alias tango.util.container.CircularList.CircularList!Object ListType;
		private ListType list;

	}
	else
	{
	}
	this();
	this(Collection c);
	void add(int index, Object element);
	bool add(Object o);
	public bool add(String o);

	bool addAll(Collection c);
	bool addAll(int index, Collection c);
	void addFirst(Object o);
	void addLast(Object o);
	int capacity();
	void clear();
	Object clone();
	bool contains(Object elem);
	bool contains(String elem);
	bool containsAll(Collection c);
	void copyInto(Object[] anArray);
	Object elementAt(int index);
	void ensureCapacity(int minCapacity);
	override equals_t opEquals(Object o);
	Object firstElement();
	Object get(int index);
	Object getFirst();
	Object getLast();
	override hash_t toHash();
	int indexOf(Object elem);
	int indexOf(Object elem, int index);
	void insertElementAt(Object obj, int index);
	bool isEmpty();
	Iterator iterator();
	Object lastElement();
	int lastIndexOf(Object elem);
	int lastIndexOf(Object elem, int index);
	ListIterator listIterator();
	ListIterator listIterator(int index);
	Object remove(int index);
	bool remove(Object o);
	public bool remove(String key);

	bool removeAll(Collection c);
	void removeAllElements();
	Object removeFirst();
	Object removeLast();
	bool removeElement(Object obj);
	void removeElementAt(int index);
	protected void removeRange(int fromIndex, int toIndex);

	bool retainAll(Collection c);
	Object set(int index, Object element);
	void setElementAt(Object obj, int index);
	void setSize(int newSize);
	int size();
	List subList(int fromIndex, int toIndex);
	Object[] toArray();
	Object[] toArray(Object[] a);
	String[] toArray(String[] a);
	override String toString();
	void trimToSize();
	public int opApply(int delegate(ref Object value) dg);

}
