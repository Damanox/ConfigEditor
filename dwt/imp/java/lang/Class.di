// D import file generated from 'java\lang\Class.d'
module java.lang.Class;
import java.lang.util;
import java.lang.String;
import java.lang.reflect.Method;
import java.lang.reflect.Field;
import java.lang.reflect.Package;
import java.lang.reflect.Constructor;
class Class
{
	bool desiredAssertionStatus();
	static Class forName(String className);
	static Class fromType(T)()
	{
		return null;
	}

	static Class fromObject(T)(T t)
	{
		static assert(is(T == class) || is(T == interface));
		return null;
	}

	Class[] getClasses();
	Class getComponentType();
	Constructor getConstructor(Class parameterTypes...);
	Constructor[] getConstructors();
	Class[] getDeclaredClasses();
	Constructor getDeclaredConstructor(Class parameterTypes...);
	Constructor[] getDeclaredConstructors();
	Field getDeclaredField(String name);
	Field[] getDeclaredFields();
	Method getDeclaredMethod(String name, Class parameterTypes...);
	Method[] getDeclaredMethods();
	Class getDeclaringClass();
	Field getField(String name);
	Field[] getFields();
	Class[] getInterfaces();
	Method getMethod(String name, Class[] parameterTypes...);
	Method[] getMethods();
	int getModifiers();
	String getName();
	Package getPackage();
	String getSimpleName();
	Class getSuperclass();
	bool isArray();
	bool isAssignableFrom(Class cls);
	bool isInstance(Object obj);
	bool isInterface();
	bool isPrimitive();
	Object newInstance();
	override String toString();
}
