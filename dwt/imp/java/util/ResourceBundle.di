// D import file generated from 'java\util\ResourceBundle.d'
module java.util.ResourceBundle;
import java.lang.util;
import java.lang.Integer;
import java.lang.exceptions;
import java.util.MissingResourceException;
import java.util.Enumeration;
import java.nonstandard.Locale;
version (Tango)
{
	import tango.io.device.File;
}
else
{
	static import std.file;
}
class ResourceBundle
{
	String[String] map;
	public this(in ImportData[] data);

	public this(in ImportData data);

	public this(String data);

	private void initialize(String data);

	public bool hasString(String key);

	public String getString(String key);

	public Enumeration getKeys();

	public String[] getKeysAsArray();

	public static ResourceBundle getBundle(in ImportData[] data);

	public static ResourceBundle getBundle(in ImportData data);

	public static ResourceBundle getBundle(String name);

	public static ResourceBundle getBundleFromData(String data);

}
