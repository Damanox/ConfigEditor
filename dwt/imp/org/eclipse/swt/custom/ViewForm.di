// D import file generated from 'org\eclipse\swt\custom\ViewForm.d'
module org.eclipse.swt.custom.ViewForm;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.custom.ViewFormLayout;
public class ViewForm : Composite
{
	public int marginWidth = 0;

	public int marginHeight = 0;

	public int horizontalSpacing = 1;

	public int verticalSpacing = 1;

	mixin(gshared!"public static RGB borderInsideRGB;");
	mixin(gshared!"public static RGB borderMiddleRGB;");
	mixin(gshared!"public static RGB borderOutsideRGB;");
	Control topLeft;
	Control topCenter;
	Control topRight;
	Control content;
	bool separateTopCenter = false;
	bool showBorder = false;
	int separator = -1;
	int borderTop = 0;
	int borderBottom = 0;
	int borderLeft = 0;
	int borderRight = 0;
	int highlight = 0;
	Point oldSize;
	Color selectionBackground;
	static const int OFFSCREEN = -200;

	static const int BORDER1_COLOR = SWT.COLOR_WIDGET_NORMAL_SHADOW;

	static const int SELECTION_BACKGROUND = SWT.COLOR_LIST_BACKGROUND;

	mixin(sharedStaticThis!"{\x0a        borderInsideRGB  = new RGB (132, 130, 132);\x0a        borderMiddleRGB  = new RGB (143, 141, 138);\x0a        borderOutsideRGB = new RGB (171, 168, 165);\x0a    }");
	public this(Composite parent, int style);

	static int checkStyle(int style);
	public override Rectangle computeTrim(int x, int y, int width, int height);

	public override Rectangle getClientArea();

	public Control getContent();

	public Control getTopCenter();

	public Control getTopLeft();

	public Control getTopRight();

	void onDispose();
	void onPaint(GC gc);
	void onResize();
	public void setContent(Control content);

	public override void setLayout(Layout layout);

	void setSelectionBackground(Color color);
	public void setTopCenter(Control topCenter);

	public void setTopLeft(Control c);

	public void setTopRight(Control c);

	public void setBorderVisible(bool show);

	public void setTopCenterSeparate(bool show);

}

