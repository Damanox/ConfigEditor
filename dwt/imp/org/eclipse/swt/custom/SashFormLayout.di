// D import file generated from 'org\eclipse\swt\custom\SashFormLayout.d'
module org.eclipse.swt.custom.SashFormLayout;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.custom.SashFormData;
import java.lang.all;
class SashFormLayout : Layout
{
	protected override Point computeSize(Composite composite, int wHint, int hHint, bool flushCache);

	protected override bool flushCache(Control control);

	protected override void layout(Composite composite, bool flushCache);

}
