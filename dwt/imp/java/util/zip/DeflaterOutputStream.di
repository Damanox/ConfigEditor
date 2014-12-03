// D import file generated from 'java\util\zip\DeflaterOutputStream.d'
module java.util.zip.DeflaterOutputStream;
version (Tango)
{
	version (Windows)
	{
		pragma (lib, "zlib.lib");
	}
	else
	{
		pragma (lib, "zlib");
	}
	import tango.io.stream.Zlib;
	import tango.io.model.IConduit;
	class OutputStreamWrapper : tango.io.model.IConduit.OutputStream
	{
		java.io.OutputStream.OutputStream _ostr;
		this(java.io.OutputStream.OutputStream ostr);
		override size_t write(void[] src);
		override IOStream flush();
		override void close();
		override long seek(long offset, Anchor anchor = Anchor.Begin);
		override IConduit conduit();
		override OutputStream copy(tango.io.model.IConduit.InputStream src, size_t max = -1);
		override OutputStream output();
	}
}
else
{
	import std.zlib;
}
import java.lang.all;
class DeflaterOutputStream : java.io.OutputStream.OutputStream
{
	version (Tango)
	{
		private ZlibOutput _ostr;

	}
	else
	{
		private java.io.OutputStream.OutputStream _ostr;

		private Compress _compress;

	}
	protected byte[] buf;

	this(java.io.OutputStream.OutputStream ostr);
	protected void deflate();

	void finish();
	public override void write(int b);

	public override void write(in byte[] b);

	override void write(in byte[] b, int off, int len);
	override void flush();
	override void close();
}
