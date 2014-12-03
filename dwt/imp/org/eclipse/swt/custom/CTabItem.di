// D import file generated from 'org\eclipse\swt\custom\CTabItem.d'
module org.eclipse.swt.custom.CTabItem;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.custom.CTabFolder;
version (Tango)
{
	import tango.text.convert.Utf;
}
else
{
	import std.conv;
	alias to!string toString;
	alias to!dstring toString32;
}
public class CTabItem : Item
{
	CTabFolder parent;
	int x;
	int y;
	int width;
	int height = 0;
	Control control;
	String toolTipText;
	String shortenedText;
	int shortenedTextWidth;
	Font font;
	Image disabledImage;
	Rectangle closeRect;
	int closeImageState = CTabFolder.NONE;
	bool showClose = false;
	bool showing = false;
	static const int TOP_MARGIN = 2;

	static const int BOTTOM_MARGIN = 2;

	static const int LEFT_MARGIN = 4;

	static const int RIGHT_MARGIN = 4;

	static const int INTERNAL_SPACING = 4;

	static const int FLAGS = SWT.DRAW_TRANSPARENT | SWT.DRAW_MNEMONIC;

	static const String ELLIPSIS = "...";

	public this(CTabFolder parent, int style);

	public this(CTabFolder parent, int style, int index);

	bool useEllipses();
	String shortenText(GC gc, String text, int width);
	String shortenText(GC gc, String text, int width, String ellipses);
	public override void dispose();

	void drawClose(GC gc);
	void drawSelected(GC gc);
	void drawHighlight(GC gc, int rightEdge);
	void drawRightUnselectedBorder(GC gc);
	void drawBorder(GC gc, int[] shape);
	void drawLeftUnselectedBorder(GC gc);
	void drawUnselected(GC gc);
	public Rectangle getBounds();

	public Control getControl();

	public Image getDisabledImage();

	public Font getFont();

	public CTabFolder getParent();

	public bool getShowClose();

	public String getToolTipText();

	public bool isShowing();

	void onPaint(GC gc, bool isSelected);
	int preferredHeight(GC gc);
	int preferredWidth(GC gc, bool isSelected, bool minimum);
	public void setControl(Control control);

	public void setDisabledImage(Image image);

	public void setFont(Font font);

	public override void setImage(Image image);

	public void setShowClose(bool close);

	public override void setText(String string);

	public void setToolTipText(String string);

}

