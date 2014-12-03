// D import file generated from 'org\eclipse\swt\layout\GridLayout.d'
module org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Scrollable;
import java.lang.System;
import java.lang.all;
public final class GridLayout : Layout
{
	public int numColumns = 1;

	public bool makeColumnsEqualWidth = false;

	public int marginWidth = 5;

	public int marginHeight = 5;

	public int marginLeft = 0;

	public int marginTop = 0;

	public int marginRight = 0;

	public int marginBottom = 0;

	public int horizontalSpacing = 5;

	public int verticalSpacing = 5;

	public this();

	public this(int numColumns, bool makeColumnsEqualWidth);

	protected override Point computeSize(Composite composite, int wHint, int hHint, bool flushCache_);

	protected override bool flushCache(Control control);

	GridData getData(Control[][] grid, int row, int column, int rowCount, int columnCount, bool first);
	protected override void layout(Composite composite, bool flushCache_);

	Point layout(Composite composite, bool move, int x, int y, int width, int height, bool flushCache_);
	String getName();
	public override String toString();

}


