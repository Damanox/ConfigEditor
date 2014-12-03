// D import file generated from 'org\eclipse\swt\layout\RowLayout.d'
module org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.layout.RowData;
import java.lang.all;
public final class RowLayout : Layout
{
	public int type = SWT.HORIZONTAL;

	public int marginWidth = 0;

	public int marginHeight = 0;

	public int spacing = 3;

	public bool wrap = true;

	public bool pack = true;

	public bool fill = false;

	public bool center = false;

	public bool justify = false;

	public int marginLeft = 3;

	public int marginTop = 3;

	public int marginRight = 3;

	public int marginBottom = 3;

	public this();

	public this(int type);

	protected override Point computeSize(Composite composite, int wHint, int hHint, bool flushCache_);

	Point computeSize(Control control, bool flushCache_);
	protected override bool flushCache(Control control);

	String getName();
	protected override void layout(Composite composite, bool flushCache_);

	Point layoutHorizontal(Composite composite, bool move, bool wrap, int width, bool flushCache_);
	Point layoutVertical(Composite composite, bool move, bool wrap, int height, bool flushCache_);
	public override String toString();

}


