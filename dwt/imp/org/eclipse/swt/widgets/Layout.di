// D import file generated from 'org\eclipse\swt\widgets\Layout.d'
module org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
public abstract class Layout
{
	abstract Point computeSize(Composite composite, int wHint, int hHint, bool flushCache);
	bool flushCache(Control control);
	abstract void layout(Composite composite, bool flushCache);
}


