// D import file generated from 'java\io\Reader.d'
module java.io.Reader;
import java.lang.util;
class Reader
{
	protected Object lock;

	protected this();

	protected this(Object lock);

	abstract void close();
	void mark(int readAheadLimit);
	bool markSupported();
	int read();
	int read(char[] cbuf);
	abstract int read(char[] cbuf, int off, int len);
	bool ready();
	void reset();
	long skip(long n);
}
