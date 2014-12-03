// D import file generated from 'org\eclipse\swt\graphics\LineAttributes.d'
module org.eclipse.swt.graphics.LineAttributes;
import org.eclipse.swt.SWT;
public class LineAttributes
{
	public float width = 0;

	public int style;

	public int cap;

	public int join;

	public float[] dash;

	public float dashOffset = 0;

	public float miterLimit = 0;

	public this(float width);

	public this(float width, int cap, int join);

	public this(float width, int cap, int join, int style, float[] dash, float dashOffset, float miterLimit);

}

