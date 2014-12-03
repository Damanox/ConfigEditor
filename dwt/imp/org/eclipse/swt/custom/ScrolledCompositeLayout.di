// D import file generated from 'org\eclipse\swt\custom\ScrolledCompositeLayout.d'
module org.eclipse.swt.custom.ScrolledCompositeLayout;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.custom.ScrolledComposite;
class ScrolledCompositeLayout : Layout
{
	bool inLayout = false;
	static const int DEFAULT_WIDTH = 64;

	static const int DEFAULT_HEIGHT = 64;

	protected override Point computeSize(Composite composite, int wHint, int hHint, bool flushCache);

	protected override bool flushCache(Control control);

	protected override void layout(Composite composite, bool flushCache);

}
