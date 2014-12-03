// D import file generated from 'java\lang\ThreadLocal.d'
module java.lang.ThreadLocal;
import java.lang.util;
version (Tango)
{
	static import tango.core.Thread;
	class ThreadLocal
	{
		alias tango.core.Thread.ThreadLocal!Object TLSType;
		TLSType tls;
		this();
		Object get();
		protected Object initialValue();

		void set(Object value);
	}
}
else
{
	class ThreadLocal
	{
		Object tls;
		this();
		Object get();
		protected Object initialValue();

		void set(Object value);
	}
}
