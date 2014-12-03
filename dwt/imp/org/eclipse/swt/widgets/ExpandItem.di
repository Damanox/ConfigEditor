// D import file generated from 'org\eclipse\swt\widgets\ExpandItem.d'
module org.eclipse.swt.widgets.ExpandItem;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.ExpandBar;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import java.lang.all;
public class ExpandItem : Item
{
	ExpandBar parent;
	Control control;
	bool expanded;
	bool hover;
	int x;
	int y;
	int width;
	int height;
	int imageHeight;
	int imageWidth;
	static const int TEXT_INSET = 6;

	static const int BORDER = 1;

	static const int CHEVRON_SIZE = 24;

	public this(ExpandBar parent, int style);

	public this(ExpandBar parent, int style, int index);

	static ExpandBar checkNull(ExpandBar control);
	private void drawChevron(HDC hDC, RECT* rect);

	void drawItem(GC gc, HTHEME hTheme, RECT* clipRect, bool drawFocus);
	override void destroyWidget();
	public Control getControl();

	public bool getExpanded();

	public int getHeaderHeight();

	public int getHeight();

	public ExpandBar getParent();

	int getPreferredWidth(HTHEME hTheme, HDC hDC);
	bool isHover(int x, int y);
	void redraw(bool all);
	override void releaseHandle();
	override void releaseWidget();
	void setBounds(int x, int y, int width, int height, bool move, bool size);
	public void setControl(Control control);

	public void setExpanded(bool expanded);

	public void setHeight(int height);

	public override void setImage(Image image);

	public override void setText(String string);

}

