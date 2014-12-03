// D import file generated from 'java\util\Collections.d'
module java.util.Collections;
import java.lang.all;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.List;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Enumeration;
import java.util.ArrayList;
import java.util.Comparator;
class Collections
{
	private static void unsupported();

	private static List EMPTY_LIST_;


	public static List EMPTY_LIST();

	private static Map EMPTY_MAP_;


	public static Map EMPTY_MAP();

	private static Set EMPTY_SET_;


	public static Set EMPTY_SET();

	static class UnmodifiableIterator : Iterator
	{
		Iterator it;
		this(Iterator it);
		public bool hasNext();

		public Object next();

		public void remove();

	}

	static class UnmodifiableListIterator : ListIterator
	{
		ListIterator it;
		this(ListIterator it);
		public void add(Object o);

		public void add(String o);

		public bool hasNext();

		public bool hasPrevious();

		public Object next();

		public int nextIndex();

		public Object previous();

		public int previousIndex();

		public void remove();

		public void set(Object o);

	}

	static class UnmodifieableList : List
	{
		List list;
		this(List list);
		public void add(int index, Object element);

		public bool add(Object o);

		public bool add(String o);

		public bool addAll(Collection c);

		public bool addAll(int index, Collection c);

		public void clear();

		public bool contains(Object o);

		public bool contains(String o);

		public bool containsAll(Collection c);

		public override equals_t opEquals(Object o);

		public Object get(int index);

		public override hash_t toHash();

		public int indexOf(Object o);

		public bool isEmpty();

		public Iterator iterator();

		public int lastIndexOf(Object o);

		public ListIterator listIterator();

		public ListIterator listIterator(int index);

		public Object remove(int index);

		public bool remove(Object o);

		public bool remove(String o);

		public bool removeAll(Collection c);

		public bool retainAll(Collection c);

		public Object set(int index, Object element);

		public int size();

		public List subList(int fromIndex, int toIndex);

		public Object[] toArray();

		public Object[] toArray(Object[] a);

		public String[] toArray(String[] a);

		public int opApply(int delegate(ref Object value) dg);

		public int opApply(int delegate(ref Object key, ref Object value) dg);

		public override String toString();

	}

	static int binarySearch(List list, Object key);
	static int binarySearch(List list, Object key, Comparator c);
	public static List unmodifiableList(List list);

	public static Map unmodifiableMap(Map list);

	public static Set unmodifiableSet(Set list);

	public static List singletonList(Object o);

	public static Set singleton(Object o);

	public static void sort(List list);

	public static void sort(List list, Comparator c);

	static Collection synchronizedCollection(Collection c);
	static class SynchronizedList : List
	{
		private List list;

		private this(List list);

		public int opApply(int delegate(ref Object value) dg);

		public void add(int index, Object element);

		public bool add(Object o);

		public bool add(String o);

		public bool addAll(Collection c);

		public bool addAll(int index, Collection c);

		public void clear();

		public bool contains(Object o);

		public bool contains(String o);

		public bool containsAll(Collection c);

		public override equals_t opEquals(Object o);

		public Object get(int index);

		public override hash_t toHash();

		public int indexOf(Object o);

		public bool isEmpty();

		public Iterator iterator();

		public int lastIndexOf(Object o);

		public ListIterator listIterator();

		public ListIterator listIterator(int index);

		public Object remove(int index);

		public bool remove(Object o);

		public bool remove(String o);

		public bool removeAll(Collection c);

		public bool retainAll(Collection c);

		public Object set(int index, Object element);

		public int size();

		public List subList(int fromIndex, int toIndex);

		public Object[] toArray();

		public Object[] toArray(Object[] a);

		public String[] toArray(String[] a);

		public override String toString();

	}

	static List synchronizedList(List list);
	static class SynchronizedMap : Map
	{
		private Map map;

		private this(Map map);

		public void clear();

		public bool containsKey(Object key);

		public bool containsKey(String key);

		public bool containsValue(Object value);

		public Set entrySet();

		public override equals_t opEquals(Object o);

		public Object get(Object key);

		public Object get(String key);

		public override hash_t toHash();

		public bool isEmpty();

		public Set keySet();

		public Object put(Object key, Object value);

		public Object put(String key, Object value);

		public Object put(Object key, String value);

		public Object put(String key, String value);

		public void putAll(Map t);

		public Object remove(Object key);

		public Object remove(String key);

		public int size();

		public Collection values();

		public int opApply(int delegate(ref Object value) dg);

		public int opApply(int delegate(ref Object key, ref Object value) dg);

	}

	static Map synchronizedMap(Map m);
	static Set synchronizedSet(Set s);
	static void reverse(List list);
	static class LocalEnumeration : Enumeration
	{
		Object[] data;
		this(Object[] data);
		public bool hasMoreElements();

		public Object nextElement();

	}

	static Enumeration enumeration(Collection c);
}
