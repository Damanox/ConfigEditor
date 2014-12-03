// D import file generated from 'org\eclipse\swt\program\Program.d'
module org.eclipse.swt.program.Program;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.internal.win32.OS;
import java.lang.all;
public final class Program
{
	String name;
	String command;
	String iconName;
	String extension;
	static const String[] ARGUMENTS = ["%1"[], "%l", "%L"];

	this();
	static String assocQueryString(int assocStr, StringT key, bool expand);
	public static Program findProgram(String extension);

	public static String[] getExtensions();

	static String getKeyValue(String string, bool expand);
	static Program getProgram(String key, String extension);
	public static Program[] getPrograms();

	public static bool launch(String fileName);

	public bool execute(String fileName);

	public ImageData getImageData();

	public String getName();

	public override equals_t opEquals(Object other);

	public override hash_t toHash();

	public override String toString();

}


