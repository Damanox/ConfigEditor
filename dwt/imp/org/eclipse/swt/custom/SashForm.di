// D import file generated from 'org\eclipse\swt\custom\SashForm.d'
module org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.swt.custom.SashFormLayout;
import org.eclipse.swt.custom.SashFormData;
import java.lang.all;
public class SashForm : Composite
{
	public int SASH_WIDTH = 3;

	int sashStyle;
	Sash[] sashes;
	Color background = null;
	Color foreground = null;
	Control[] controls;
	Control maxControl = null;
	Listener sashListener;
	static const int DRAG_MINIMUM = 20;

	public this(Composite parent, int style);

	static int checkStyle(int style);
	public int getOrientation();

	public int getSashWidth();

	public override int getStyle();

	public Control getMaximizedControl();

	public int[] getWeights();

	Control[] getControls(bool onlyVisible);
	void onDragSash(Event event);
	public void setOrientation(int orientation);

	public override void setBackground(Color color);

	public override void setForeground(Color color);

	public override void setLayout(Layout layout);

	public void setMaximizedControl(Control control);

	public void setSashWidth(int width);

	public void setWeights(int[] weights);

}

