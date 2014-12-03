// D import file generated from 'java\lang\reflect\Constructor.d'
module java.lang.reflect.Constructor;
import java.lang.all;
import java.lang.Class;
import java.lang.String;
class Constructor
{
	public override equals_t opEquals(Object obj);

	Class getDeclaringClass();
	Class[] getExceptionTypes();
	int getModifiers();
	String getName();
	Class[] getParameterTypes();
	public override hash_t toHash();

	Object newInstance(Object[] initargs);
	override String toString();
}
