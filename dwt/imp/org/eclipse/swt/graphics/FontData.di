// D import file generated from 'org\eclipse\swt\graphics\FontData.d'
module org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.win32.OS;
import java.lang.all;
public final class FontData
{
	public LOGFONT data;

	public float height = 0;

	String lang;
	String country;
	String variant;
	private static FontData s_this;


	public this();

	this(LOGFONT* data, float height);
	public this(String string);

	public this(String name, int height, int style);

	this(String name, float height, int style);
	public override equals_t opEquals(Object object);

	extern (Windows) static int EnumLocalesProc(TCHAR* lpLocaleString);

	public int getHeight();

	float getHeightF();
	public String getLocale();

	public String getName();

	public int getStyle();

	public override hash_t toHash();

	public void setHeight(int height);

	void setHeight(float height);
	public void setLocale(String locale);

	public void setName(String name);

	public void setStyle(int style);

	public override String toString();

	public static FontData win32_new(LOGFONT* data, float height);

}


