// D import file generated from 'org\eclipse\swt\custom\CLabel.d'
module org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.accessibility.ACC;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import java.lang.all;
import java.nonstandard.UnsafeUtf;
public class CLabel : Canvas
{
	alias Canvas.computeSize computeSize;
	private static const int GAP = 5;


	private static const int INDENT = 3;


	private static const String ELLIPSIS = "...";


	private int align_ = SWT.LEFT;

	private int hIndent = INDENT;

	private int vIndent = INDENT;

	private String text;

	private Image image;

	private String appToolTipText;

	private Image backgroundImage;

	private Color[] gradientColors;

	private int[] gradientPercents;

	private bool gradientVertical;

	private Color background;

	private static int DRAW_FLAGS = SWT.DRAW_MNEMONIC | SWT.DRAW_TAB | SWT.DRAW_TRANSPARENT | SWT.DRAW_DELIMITER;


	public this(Composite parent, int style);

	private static int checkStyle(int style);

	public override Point computeSize(int wHint, int hHint, bool changed);

	private void drawBevelRect(GC gc, int x, int y, int w, int h, Color topleft, Color bottomright);

	dchar _findMnemonic(String str);
	public int getAlignment();

	public Image getImage();

	private Point getTotalSize(Image image, String text);

	public override int getStyle();

	public String getText();

	public override String getToolTipText();

	private void initAccessible();

	void onDispose(DisposeEvent event);
	void onMnemonic(TraverseEvent event);
	void onPaint(PaintEvent event);
	private void paintBorder(GC gc, Rectangle r);

	public void setAlignment(int align_);

	public override void setBackground(Color color);

	public void setBackground(Color[] colors, int[] percents);

	public void setBackground(Color[] colors, int[] percents, bool vertical);

	public void setBackground(Image image);

	public override void setFont(Font font);

	public void setImage(Image image);

	public void setText(String text);

	public override void setToolTipText(String string);

	protected String shortenText(GC gc, String t, int width);

	int validateOffset(TextLayout layout, int offset);
	private String[] splitString(String text);

}

