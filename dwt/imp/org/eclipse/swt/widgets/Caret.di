// D import file generated from 'org\eclipse\swt\widgets\Caret.d'
module org.eclipse.swt.widgets.Caret;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.IME;
import java.lang.all;
public class Caret : Widget
{
	Canvas parent;
	int x;
	int y;
	int width;
	int height;
	bool moved;
	bool resized;
	bool isVisible_;
	Image image;
	Font font;
	LOGFONT* oldFont;
	public this(Canvas parent, int style);

	void createWidget();
	HFONT defaultFont();
	public Rectangle getBounds();

	public Font getFont();

	public Image getImage();

	public Point getLocation();

	public Canvas getParent();

	public Point getSize();

	public bool getVisible();

	bool hasFocus();
	bool isFocusCaret();
	public bool isVisible();

	void killFocus();
	void move();
	void resizeIME();
	override void releaseParent();
	override void releaseWidget();
	void resize();
	void restoreIMEFont();
	public void setBounds(int x, int y, int width, int height);

	public void setBounds(Rectangle rect);

	void setFocus();
	public void setFont(Font font);

	public void setImage(Image image);

	void setIMEFont();
	public void setLocation(int x, int y);

	public void setLocation(Point location);

	public void setSize(int width, int height);

	public void setSize(Point size);

	public void setVisible(bool visible);

}

