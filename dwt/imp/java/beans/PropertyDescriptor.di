// D import file generated from 'java\beans\PropertyDescriptor.d'
module java.beans.PropertyDescriptor;
import java.beans.FeatureDescriptor;
import java.lang.all;
import java.lang.reflect.Method;
class PropertyDescriptor : FeatureDescriptor
{
	this(String propertyName, Class beanClass);
	this(String propertyName, Class beanClass, String getterName, String setterName);
	this(String propertyName, Method getter, Method setter);
	override equals_t opEquals(Object obj);
	Class getPropertyEditorClass();
	Class getPropertyType();
	Method getReadMethod();
	Method getWriteMethod();
	bool isBound();
	bool isConstrained();
	void setBound(bool bound);
	void setConstrained(bool constrained);
	void setPropertyEditorClass(Class propertyEditorClass);
	void setReadMethod(Method getter);
	void setWriteMethod(Method setter);
}
