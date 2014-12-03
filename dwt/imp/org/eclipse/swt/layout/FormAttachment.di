// D import file generated from 'org\eclipse\swt\layout\FormAttachment.d'
module org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.layout.FormData;
import java.lang.all;
public final class FormAttachment
{
	public int numerator;

	public int denominator = 100;

	public int offset;

	public Control control;

	public int alignment;

	public this();

	public this(int numerator);

	public this(int numerator, int offset);

	public this(int numerator, int denominator, int offset);

	public this(Control control);

	public this(Control control, int offset);

	public this(Control control, int offset, int alignment);

	FormAttachment divide(int value);
	int gcd(int m, int n);
	FormAttachment minus(FormAttachment attachment);
	FormAttachment minus(int value);
	FormAttachment plus(FormAttachment attachment);
	FormAttachment plus(int value);
	int solveX(int value);
	int solveY(int value);
	public override String toString();

}


