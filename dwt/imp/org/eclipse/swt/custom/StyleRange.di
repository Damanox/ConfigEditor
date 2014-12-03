// D import file generated from 'org\eclipse\swt\custom\StyleRange.d'
module org.eclipse.swt.custom.StyleRange;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.CloneableCompatibility;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.TextChangedEvent;
import org.eclipse.swt.custom.TextChangingEvent;
public class StyleRange : TextStyle, CloneableCompatibility
{
	public int start;

	public int length;

	public int fontStyle = SWT.NORMAL;

	public this();

	protected this(StyleRange other);

	public this(TextStyle style);

	public this(int start, int length, Color foreground, Color background);

	public this(int start, int length, Color foreground, Color background, int fontStyle);

	public override equals_t opEquals(Object object);

	public override hash_t toHash();

	bool isVariableHeight();
	public bool isUnstyled();

	public bool similarTo(StyleRange style);

	public Object clone();

	public override String toString();

}

