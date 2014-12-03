// D import file generated from 'org\eclipse\swt\graphics\TextStyle.d'
module org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GlyphMetrics;
import java.lang.all;
public class TextStyle
{
	public Font font;

	public Color foreground;

	public Color background;

	public bool underline;

	public Color underlineColor;

	public int underlineStyle;

	public bool strikeout;

	public Color strikeoutColor;

	public int borderStyle;

	public Color borderColor;

	public GlyphMetrics metrics;

	public int rise;

	public this();

	public this(Font font, Color foreground, Color background);

	public this(TextStyle style);

	public override equals_t opEquals(Object object);

	public override hash_t toHash();

	bool isAdherentBorder(TextStyle style);
	bool isAdherentUnderline(TextStyle style);
	bool isAdherentStrikeout(TextStyle style);
	public override String toString();

}

