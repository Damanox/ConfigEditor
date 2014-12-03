// D import file generated from 'java\io\ByteArrayOutputStream.d'
module java.io.ByteArrayOutputStream;
public import java.io.OutputStream;

import java.lang.all;
version (Tango)
{
	import tango.io.device.Array;
}
else
{
	import std.outbuffer;
}
public class ByteArrayOutputStream : java.io.OutputStream.OutputStream
{
	version (Tango)
	{
		protected Array buffer;

	}
	else
	{
		protected OutBuffer buffer;

	}
	public this();

	public this(int par_size);

	public override void write(int b);

	public override void write(in byte[] b, int off, int len);

	public override void write(in byte[] b);

	public void writeTo(java.io.OutputStream.OutputStream out_KEYWORDESCAPE);

	public void reset();

	public byte[] toByteArray();

	public int size();

	public override String toString();

	public String toString(String enc);

	public String toString(int hibyte);

	public override void close();

}

