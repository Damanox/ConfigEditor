// D import file generated from 'java\io\InputStream.d'
module java.io.InputStream;
import java.lang.all;
public abstract class InputStream
{
	public this();

	public abstract int read();

	public int read(byte[] b);

	public int read(byte[] b, int off, int len);

	public long skip(long n);

	public int available();

	public void close();

	public synchronized void mark(int readlimit);

	public synchronized void reset();

	public bool markSupported();

}


