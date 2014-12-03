// D import file generated from 'java\io\FileInputStream.d'
module java.io.FileInputStream;
import java.lang.all;
import java.io.File;
import java.io.InputStream;
version (Tango)
{
	import TangoFile = tango.io.device.File;
}
else
{
	static import std.stream;
}
public class FileInputStream : java.io.InputStream.InputStream
{
	alias java.io.InputStream.InputStream.read read;
	version (Tango)
	{
		private TangoFile.File conduit;

	}
	else
	{
		private std.stream.File conduit;

	}
	private ubyte[] buffer;

	private int buf_pos;

	private int buf_size;

	private enum int BUFFER_SIZE = 65536;

	private bool eof;

	public this(String name);

	public this(java.io.File.File file);

	public override int read();

	public override long skip(long n);

	public override int available();

	public override void close();

}

