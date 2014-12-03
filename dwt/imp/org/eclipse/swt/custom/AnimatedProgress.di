// D import file generated from 'org\eclipse\swt\custom\AnimatedProgress.d'
module org.eclipse.swt.custom.AnimatedProgress;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import java.lang.Runnable;
public class AnimatedProgress : Canvas
{
	alias Canvas.computeSize computeSize;
	static const int SLEEP = 70;

	static const int DEFAULT_WIDTH = 160;

	static const int DEFAULT_HEIGHT = 18;

	bool active = false;
	bool showStripes = false;
	int value;
	int orientation = SWT.HORIZONTAL;
	bool showBorder = false;
	public this(Composite parent, int style);

	private static int checkStyle(int style);

	public void clear();

	public override Point computeSize(int wHint, int hHint, bool changed);

	private void drawBevelRect(GC gc, int x, int y, int w, int h, Color topleft, Color bottomright);

	void paint(PaintEvent event);
	void paintStripes(GC gc);
	public void start();

	public void stop();

}

