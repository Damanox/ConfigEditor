// D import file generated from 'java\beans\Introspector.d'
module java.beans.Introspector;
import java.beans.BeanInfo;
import java.lang.all;
class Introspector
{
	static const int IGNORE_ALL_BEANINFO = 0;

	static const int IGNORE_IMMEDIATE_BEANINFO = 0;

	static const int USE_ALL_BEANINFO = 0;

	static String decapitalize(String name);
	static void flushCaches();
	static void flushFromCaches(Class clz);
	static BeanInfo getBeanInfo(Class beanClass);
	static BeanInfo getBeanInfo(Class beanClass, Class stopClass);
	static BeanInfo getBeanInfo(Class beanClass, int flags);
	static String[] getBeanInfoSearchPath();
	static void setBeanInfoSearchPath(String[] path);
}
