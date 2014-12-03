// D import file generated from 'java\io\BufferedInputStream.d'
module java.io.BufferedInputStream;
import java.io.InputStream;
import java.lang.all;
public class BufferedInputStream : java.io.InputStream.InputStream
{
	alias java.io.InputStream.InputStream.read read;
	private enum int defaultSize = 8192;

	protected byte[] buf;

	protected int count = 0;

	protected int pos = 0;

	protected int markpos = -1;

	protected int marklimit;

	java.io.InputStream.InputStream istr;
	public this(java.io.InputStream.InputStream istr);

	public this(java.io.InputStream.InputStream istr, int size);

	private InputStream getAndCheckIstr();

	private byte[] getAndCheckBuf();

	private void fill();

	public override int read();

	public override int read(byte[] b, int off, int len);

	public override long skip(long n);

	public override int available();

	public synchronized override void mark(int readlimit);

	public synchronized override void reset();

	public override bool markSupported();

	public override void close();

}

