// D import file generated from 'org\eclipse\swt\custom\CBannerLayout.d'
module org.eclipse.swt.custom.CBannerLayout;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.custom.CBanner;
import org.eclipse.swt.custom.CLayoutData;
class CBannerLayout : Layout
{
	protected override Point computeSize(Composite composite, int wHint, int hHint, bool flushCache);

	Point computeChildSize(Control control, int wHint, int hHint, bool flushCache);
	int computeTrim(Control c);
	protected override bool flushCache(Control control);

	protected override void layout(Composite composite, bool flushCache);

}
