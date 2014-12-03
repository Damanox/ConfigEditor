// D import file generated from 'org\eclipse\swt\custom\StackLayout.d'
module org.eclipse.swt.custom.StackLayout;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
public class StackLayout : Layout
{
	public int marginWidth = 0;

	public int marginHeight = 0;

	public Control topControl;

	protected override Point computeSize(Composite composite, int wHint, int hHint, bool flushCache);

	protected override bool flushCache(Control control);

	protected override void layout(Composite composite, bool flushCache);

	String getName();
	public override String toString();

}

