// D import file generated from 'org\eclipse\swt\internal\Compatibility.d'
module org.eclipse.swt.internal.Compatibility;
import java.io.File;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;
import org.eclipse.swt.SWT;
public import java.io.FileInputStream;

public import java.io.FileOutputStream;

import java.io.InputStream;
import java.lang.all;
import java.util.ResourceBundle;
version (Tango)
{
	static import tango.text.Unicode;
	static import tango.sys.Process;
}
else
{
}
public final class Compatibility
{
	public static const real PI = Math.PI;


	static const real toRadians = PI / 180;

	public static int cos(int angle, int length);

	public static int sin(int angle, int length);

	public static int ceil(int p, int q);

	public static bool fileExists(String parent, String child);

	public static int floor(int p, int q);

	public static int round(int p, int q);

	public static int pow2(int n);

	public static OutputStream newDeflaterOutputStream(OutputStream stream);

	public static InputStream newFileInputStream(String filename);

	public static OutputStream newFileOutputStream(String filename);

	public static InflaterInputStream newInflaterInputStream(InputStream stream);

	public static bool isLetter(dchar c);

	public static bool isLetterOrDigit(dchar c);

	public static bool isSpaceChar(dchar c);

	public static bool isWhitespace(dchar c);

	public static void exec(String prog);

	public static void exec(String[] progArray);

	static const ImportData[] SWTMessagesBundleData = [getImportData!"org.eclipse.swt.internal.SWTMessages.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_ar.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_cs.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_da.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_de.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_el.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_es.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_fi.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_fr.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_hu.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_it.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_iw.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_ja.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_ko.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_nl.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_no.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_pl.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_pt_BR.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_pt.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_ru.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_sv.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_tr.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_zh_HK.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_zh.properties", getImportData!"org.eclipse.swt.internal.SWTMessages_zh_TW.properties"];

	private static ResourceBundle msgs = null;


	public static String getMessage(String key);

	public static String getMessage(String key, Object[] args);

	public static void interrupt();

	public static bool equalsIgnoreCase(String s1, String s2);

}


