// D import file generated from 'org\eclipse\swt\graphics\FontMetrics.d'
module org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.internal.win32.WINTYPES;
public final class FontMetrics
{
	public TEXTMETRIC handle;

	this();
	public override equals_t opEquals(Object object);

	public int getAscent();

	public int getAverageCharWidth();

	public int getDescent();

	public int getHeight();

	public int getLeading();

	public override hash_t toHash();

	public static FontMetrics win32_new(TEXTMETRIC* handle);

}


