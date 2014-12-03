// D import file generated from 'java\io\ByteArrayInputStream.d'
module java.io.ByteArrayInputStream;
import java.io.InputStream;
public class ByteArrayInputStream : java.io.InputStream.InputStream
{
	alias java.io.InputStream.InputStream.read read;
	alias java.io.InputStream.InputStream.skip skip;
	alias java.io.InputStream.InputStream.available available;
	alias java.io.InputStream.InputStream.close close;
	alias java.io.InputStream.InputStream.mark mark;
	alias java.io.InputStream.InputStream.reset reset;
	alias java.io.InputStream.InputStream.markSupported markSupported;
	protected byte[] buf;

	protected int pos;

	protected int fld_mark = 0;

	public this(byte[] aBuf);

	public this(byte[] aBuf, int offset, int length_ESCAPE);

	public override int read();

	public override int read(byte[] b, int off, int len);

	public override long skip(long n);

	public override int available();

	public override bool markSupported();

	public synchronized override void mark(int readAheadLimit);

	public synchronized override void reset();

	public override void close();

}

