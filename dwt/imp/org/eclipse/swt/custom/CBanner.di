// D import file generated from 'org\eclipse\swt\custom\CBanner.d'
module org.eclipse.swt.custom.CBanner;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.custom.CBannerLayout;
public class CBanner : Composite
{
	Control left;
	Control right;
	Control bottom;
	bool simple = true;
	int[] curve;
	int curveStart = 0;
	Rectangle curveRect;
	int curve_width = 5;
	int curve_indent = -2;
	int rightWidth = SWT.DEFAULT;
	int rightMinWidth = 0;
	int rightMinHeight = 0;
	Cursor resizeCursor;
	bool dragging = false;
	int rightDragDisplacement = 0;
	static const int OFFSCREEN = -200;

	static const int BORDER_BOTTOM = 2;

	static const int BORDER_TOP = 3;

	static const int BORDER_STRIPE = 1;

	static const int CURVE_TAIL = 200;

	static const int BEZIER_RIGHT = 30;

	static const int BEZIER_LEFT = 30;

	static const int MIN_LEFT = 10;

	static int BORDER1 = SWT.COLOR_WIDGET_HIGHLIGHT_SHADOW;

	public this(Composite parent, int style);

	static int[] bezier(int x0, int y0, int x1, int y1, int x2, int y2, int x3, int y3, int count);
	static int checkStyle(int style);
	public Control getBottom();

	public override Rectangle getClientArea();

	public Control getLeft();

	public Control getRight();

	public Point getRightMinimumSize();

	public int getRightWidth();

	public bool getSimple();

	void onDispose();
	void onMouseDown(int x, int y);
	void onMouseExit();
	void onMouseMove(int x, int y);
	void onMouseUp();
	void onPaint(GC gc);
	void onResize();
	public void setBottom(Control control);

	public override void setLayout(Layout layout);

	public void setLeft(Control control);

	public void setRight(Control control);

	public void setRightMinimumSize(Point size);

	public void setRightWidth(int width);

	public void setSimple(bool simple);

	void updateCurve(int height);
}

