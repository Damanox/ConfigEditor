// D import file generated from 'java\io\OutputStream.d'
module java.io.OutputStream;
import java.lang.all;
public abstract class OutputStream
{
	public this();

	public abstract void write(int b);

	public void write(in byte[] b);

	public void write(in byte[] b, int off, int len);

	public void flush();

	public void close();

}


