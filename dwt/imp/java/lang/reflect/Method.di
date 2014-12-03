// D import file generated from 'java\lang\reflect\Method.d'
module java.lang.reflect.Method;
import java.lang.reflect.AccessibleObject;
import java.lang.all;
import java.lang.Class;
import java.lang.String;
class Method : AccessibleObject
{
	public override equals_t opEquals(Object obj);

	Class getDeclaringClass();
	Class[] getExceptionTypes();
	int getModifiers();
	String getName();
	Class[] getParameterTypes();
	Class getReturnType();
	public override hash_t toHash();

	Object invoke(Object obj, Object[] args);
	public override String toString();

}
