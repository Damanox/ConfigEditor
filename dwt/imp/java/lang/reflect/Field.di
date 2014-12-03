// D import file generated from 'java\lang\reflect\Field.d'
module java.lang.reflect.Field;
import java.lang.all;
import java.lang.Class;
import java.lang.String;
class Field
{
	public override equals_t opEquals(Object obj);

	Object get(Object obj);
	bool getBoolean(Object obj);
	byte getByte(Object obj);
	char getChar(Object obj);
	Class getDeclaringClass();
	double getDouble(Object obj);
	float getFloat(Object obj);
	int getInt(Object obj);
	long getLong(Object obj);
	int getModifiers();
	String getName();
	short getShort(Object obj);
	Class getType();
	public override hash_t toHash();

	void set(Object obj, Object value);
	void setBoolean(Object obj, bool z);
	void setByte(Object obj, byte b);
	void setChar(Object obj, char c);
	void setDouble(Object obj, double d);
	void setFloat(Object obj, float f);
	void setInt(Object obj, int i);
	void setLong(Object obj, long l);
	void setShort(Object obj, short s);
	public override String toString();

}
