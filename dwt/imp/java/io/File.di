// D import file generated from 'java\io\File.d'
module java.io.File;
import java.lang.all;
version (Tango)
{
	static import tango.io.model.IFile;
	static import tango.io.FilePath;
	static import tango.io.Path;
	static import tango.io.FileSystem;
	static import tango.sys.Environment;
	static import tango.sys.Common;
	static import tango.stdc.stringz;
	version (Posix)
	{
		static import tango.stdc.posix.unistd;
	}
}
else
{
	static import std.file;
	static import std.path;
	static import std.string;
	version (Posix)
	{
		static import core.sys.posix.unistd;
	}
}
public class File
{
	public static char separatorChar;


	public static String separator;


	public static char pathSeparatorChar;


	public static String pathSeparator;


	private String mFilePath;

	static this();
	private static String toStd(String path);

	private static String join(String path, String file);

	public this(String pathname);

	public this(String parent, String child);

	public this(java.io.File.File parent, String child);

	public int getPrefixLength();

	public String getName();

	public String getParent();

	public java.io.File.File getParentFile();

	public String getPath();

	public bool isAbsolute();

	public String getAbsolutePath();

	public java.io.File.File getAbsoluteFile();

	public String getCanonicalPath();

	public java.io.File.File getCanonicalFile();

	public bool canRead();

	public bool canWrite();

	public bool exists();

	public bool isDirectory();

	public bool isFile();

	public bool isHidden();

	public long lastModified();

	public long length();

	public bool createNewFile();

	public bool delete_KEYWORDESCAPE();

	public void deleteOnExit();

	public String[] list();

	public java.io.File.File[] listFiles();

	public bool mkdir();

	public bool mkdirs();

	public bool renameTo(java.io.File.File dest);

	public bool setLastModified(long time);

	public bool setReadOnly();

	public static java.io.File.File[] listRoots();

	public static java.io.File.File createTempFile(String prefix, String suffix, java.io.File.File directory);

	public static java.io.File.File createTempFile(String prefix, String suffix);

	public int compareTo(java.io.File.File pathname);

	public override String toString();

}

