// D import file generated from 'org\eclipse\swt\layout\GridData.d'
module org.eclipse.swt.layout.GridData;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import java.lang.all;
public final class GridData
{
	public int verticalAlignment = CENTER;

	public int horizontalAlignment = BEGINNING;

	public int widthHint = SWT.DEFAULT;

	public int heightHint = SWT.DEFAULT;

	public int horizontalIndent = 0;

	public int verticalIndent = 0;

	public int horizontalSpan = 1;

	public int verticalSpan = 1;

	public bool grabExcessHorizontalSpace = false;

	public bool grabExcessVerticalSpace = false;

	public int minimumWidth = 0;

	public int minimumHeight = 0;

	public bool exclude = false;

	public static const int BEGINNING = SWT.BEGINNING;


	public static const int CENTER = 2;


	public static const int END = 3;


	public static const int FILL = SWT.FILL;


	public static const int VERTICAL_ALIGN_BEGINNING = 1 << 1;


	public static const int VERTICAL_ALIGN_CENTER = 1 << 2;


	public static const int VERTICAL_ALIGN_END = 1 << 3;


	public static const int VERTICAL_ALIGN_FILL = 1 << 4;


	public static const int HORIZONTAL_ALIGN_BEGINNING = 1 << 5;


	public static const int HORIZONTAL_ALIGN_CENTER = 1 << 6;


	public static const int HORIZONTAL_ALIGN_END = 1 << 7;


	public static const int HORIZONTAL_ALIGN_FILL = 1 << 8;


	public static const int GRAB_HORIZONTAL = 1 << 9;


	public static const int GRAB_VERTICAL = 1 << 10;


	public static const int FILL_VERTICAL = VERTICAL_ALIGN_FILL | GRAB_VERTICAL;


	public static const int FILL_HORIZONTAL = HORIZONTAL_ALIGN_FILL | GRAB_HORIZONTAL;


	public static const int FILL_BOTH = FILL_VERTICAL | FILL_HORIZONTAL;


	int cacheWidth = -1;
	int cacheHeight = -1;
	int defaultWhint;
	int defaultHhint;
	int defaultWidth = -1;
	int defaultHeight = -1;
	int currentWhint;
	int currentHhint;
	int currentWidth = -1;
	int currentHeight = -1;
	public this();

	public this(int style);

	public this(int horizontalAlignment, int verticalAlignment, bool grabExcessHorizontalSpace, bool grabExcessVerticalSpace);

	public this(int horizontalAlignment, int verticalAlignment, bool grabExcessHorizontalSpace, bool grabExcessVerticalSpace, int horizontalSpan, int verticalSpan);

	public this(int width, int height);

	void computeSize(Control control, int wHint, int hHint, bool flushCache);
	void flushCache();
	String getName();
	public override String toString();

}


