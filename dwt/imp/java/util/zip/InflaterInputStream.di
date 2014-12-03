// D import file generated from 'java\util\zip\InflaterInputStream.d'
module java.util.zip.InflaterInputStream;
import java.lang.all;
import java.io.InputStream;
version (Tango)
{
	import tango.io.stream.Zlib;
	import tango.io.device.Conduit;
	version (Windows)
	{
		pragma (lib, "zlib.lib");
	}
	else
	{
		pragma (lib, "zlib");
	}
}
else
{
	import std.zlib;
}
version (Tango)
{
	class InputStreamWrapper : tango.io.model.IConduit.InputStream
	{
		java.io.InputStream.InputStream istr;
		this(java.io.InputStream.InputStream istr);
		size_t read(void[] dst);
		tango.io.model.IConduit.IConduit conduit();
		void close();
		tango.io.model.IConduit.InputStream input();
		long seek(long offset, Anchor anchor = Anchor.Begin);
		void[] load(size_t max = -1);
		IOStream flush();
	}
}
else
{
}
public class InflaterInputStream : java.io.InputStream.InputStream
{
	alias java.io.InputStream.InputStream.read read;
	alias java.io.InputStream.InputStream.skip skip;
	alias java.io.InputStream.InputStream.available available;
	alias java.io.InputStream.InputStream.close close;
	alias java.io.InputStream.InputStream.mark mark;
	alias java.io.InputStream.InputStream.reset reset;
	alias java.io.InputStream.InputStream.markSupported markSupported;
	protected byte[] buf;

	protected int len;

	package bool usesDefaultInflater = false;

	version (Tango)
	{
		ZlibInput tangoIstr;
	}
	else
	{
	}
	public this(java.io.InputStream.InputStream istr);

	public override int read();

	public override int read(byte[] b, int off, int len);

	public override int available();

	public override long skip(long n);

	public override void close();

	public void fill();

	public override bool markSupported();

	public synchronized override void mark(int readlimit);

	public synchronized override void reset();

}

