// D import file generated from 'org\eclipse\swt\internal\Library.d'
module org.eclipse.swt.internal.Library;
import java.lang.all;
private int buildSWT_VERSION()(int major, int minor)
{
	return major * 1000 + minor;
}

public class Library
{
	static const int MAJOR_VERSION = 3;

	static const int MINOR_VERSION = 449;

	static const int REVISION = 0;

	public static const int SWT_VERSION = .buildSWT_VERSION(MAJOR_VERSION, MINOR_VERSION);


	version (Windows)
	{
		static const String SEPARATOR = "\x0d\x0a";

	}
	else
	{
		static assert(false, "only windows supported for this port");
	}
	static int parseVersion(String aVersion);
	public static int buildJAVA_VERSION(int major, int minor, int micro);

	public static int buildSWT_VERSION(int major, int minor);

}

