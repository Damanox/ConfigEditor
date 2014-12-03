// D import file generated from 'java\io\FileOutputStream.d'
module java.io.FileOutputStream;
public import java.io.File;

public import java.io.OutputStream;

import java.lang.all;
version (Tango)
{
	import TangoFile = tango.io.device.File;
}
else
{
	static import std.stream;
}
public class FileOutputStream : java.io.OutputStream.OutputStream
{
	alias java.io.OutputStream.OutputStream.write write;
	alias java.io.OutputStream.OutputStream.close close;
	version (Tango)
	{
		private TangoFile.File fc;

	}
	else
	{
		private std.stream.File fc;

	}
	public this(String name);

	public this(String name, bool append);

	public this(java.io.File.File file);

	public this(java.io.File.File file, bool append);

	public override void write(int b);

	public override void close();

	public void finalize();

}

