// D import file generated from 'org\eclipse\swt\layout\FormLayout.d'
module org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Scrollable;
import java.lang.all;
public final class FormLayout : Layout
{
	public int marginWidth = 0;

	public int marginHeight = 0;

	public int marginLeft = 0;

	public int marginTop = 0;

	public int marginRight = 0;

	public int marginBottom = 0;

	public int spacing = 0;

	public this();

	int computeHeight(Control control, FormData data, bool flushCache);
	protected override Point computeSize(Composite composite, int wHint, int hHint, bool flushCache);

	protected override bool flushCache(Control control);

	String getName();
	int computeWidth(Control control, FormData data, bool flushCache);
	protected override void layout(Composite composite, bool flushCache);

	Point layout(Composite composite, bool move, int x, int y, int width, int height, bool flushCache);
	public override String toString();

}


