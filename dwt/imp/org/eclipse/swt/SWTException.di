// D import file generated from 'org\eclipse\swt\SWTException.d'
module org.eclipse.swt.SWTException;
import java.lang.all;
import org.eclipse.swt.SWT;
public class SWTException : Exception
{
	public int code;

	public Throwable throwable(Throwable e);

	public Throwable throwable();

	public this();

	public this(String message);

	public this(int code);

	public this(int code, String message);

	public Throwable getCause();

	public String getMessage();

	public void printStackTrace();

}

