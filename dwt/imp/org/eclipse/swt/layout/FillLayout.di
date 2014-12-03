// D import file generated from 'org\eclipse\swt\layout\FillLayout.d'
module org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.layout.FillData;
import java.lang.all;
public final class FillLayout : Layout
{
	public int type = SWT.HORIZONTAL;

	public int marginWidth = 0;

	public int marginHeight = 0;

	public int spacing = 0;

	public this();

	public this(int type);

	protected override Point computeSize(Composite composite, int wHint, int hHint, bool flushCache);

	Point computeChildSize(Control control, int wHint, int hHint, bool flushCache);
	protected override bool flushCache(Control control);

	String getName();
	protected override void layout(Composite composite, bool flushCache);

	public override String toString();

}


