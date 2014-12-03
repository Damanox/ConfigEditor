// D import file generated from 'java\util\AbstractCollection.d'
module java.util.AbstractCollection;
import java.lang.all;
import java.util.Collection;
import java.util.Iterator;
abstract class AbstractCollection : Collection
{
	this();
	bool add(Object o);
	bool addAll(Collection c);
	void clear();
	bool contains(Object o);
	bool containsAll(Collection c);
	override equals_t opEquals(Object o);
	bool isEmpty();
	abstract Iterator iterator();
	override hash_t toHash();
	bool remove(Object o);
	bool remove(String o);
	bool removeAll(Collection c);
	bool retainAll(Collection c);
	abstract int size();
	Object[] toArray();
	Object[] toArray(Object[] a);
	String[] toArray(String[] a);
	override String toString();
}

