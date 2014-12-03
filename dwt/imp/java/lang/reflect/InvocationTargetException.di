// D import file generated from 'java\lang\reflect\InvocationTargetException.d'
module java.lang.reflect.InvocationTargetException;
import java.lang.all;
class InvocationTargetException : Exception
{
	Exception cause;
	this(Exception e = null, String msg = null);
	alias getCause getTargetException;
	Exception getCause();
}
