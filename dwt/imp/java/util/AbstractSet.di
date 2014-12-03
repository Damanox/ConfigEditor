// D import file generated from 'java\util\AbstractSet.d'
module java.util.AbstractSet;
import java.lang.all;
import java.util.Set;
import java.util.Collection;
import java.util.Iterator;
import java.util.AbstractCollection;
abstract class AbstractSet : AbstractCollection, Set
{
	this();
	override equals_t opEquals(Object o);
	override hash_t toHash();
	public override bool add(Object o);

	public bool add(String o);

	public override bool addAll(Collection c);

	public override void clear();

	public override bool contains(Object o);

	public bool contains(String o);

	public override bool containsAll(Collection c);

	public override bool isEmpty();

	public override bool remove(Object o);

	public override bool remove(String o);

	public override bool removeAll(Collection c);

	public override bool retainAll(Collection c);

	public override Object[] toArray();

	public override Object[] toArray(Object[] a);

	public override String toString();

	public int opApply(int delegate(ref Object value) dg);

}

