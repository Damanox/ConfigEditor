// D import file generated from 'org\eclipse\swt\custom\ScrolledComposite.d'
module org.eclipse.swt.custom.ScrolledComposite;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.custom.ScrolledCompositeLayout;
public class ScrolledComposite : Composite
{
	Control content;
	Listener contentListener;
	Listener filter;
	int minHeight = 0;
	int minWidth = 0;
	bool expandHorizontal = false;
	bool expandVertical = false;
	bool alwaysShowScroll = false;
	bool showFocusedControl = false;
	public this(Composite parent, int style);

	static int checkStyle(int style);
	bool contains(Control control);
	public bool getAlwaysShowScrollBars();

	public bool getExpandHorizontal();

	public bool getExpandVertical();

	public int getMinWidth();

	public int getMinHeight();

	public Control getContent();

	public bool getShowFocusedControl();

	void hScroll();
	bool needHScroll(Rectangle contentRect, bool vVisible);
	bool needVScroll(Rectangle contentRect, bool hVisible);
	public Point getOrigin();

	public void setOrigin(Point origin);

	public void setOrigin(int x, int y);

	public void setAlwaysShowScrollBars(bool show);

	public void setContent(Control content);

	public void setExpandHorizontal(bool expand);

	public void setExpandVertical(bool expand);

	public override void setLayout(Layout layout);

	public void setMinHeight(int height);

	public void setMinSize(Point size);

	public void setMinSize(int width, int height);

	public void setMinWidth(int width);

	public void setShowFocusedControl(bool show);

	public void showControl(Control control);

	void vScroll();
}

