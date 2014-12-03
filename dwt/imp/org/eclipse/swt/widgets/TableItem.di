// D import file generated from 'org\eclipse\swt\widgets\TableItem.d'
module org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class TableItem : Item
{
	Table parent;
	String[] strings;
	Image[] images;
	Font font;
	Font[] cellFont;
	bool checked;
	bool grayed;
	bool cached;
	int imageIndent;
	int background = -1;
	int foreground = -1;
	int[] cellBackground;
	int[] cellForeground;
	public this(Table parent, int style);

	public this(Table parent, int style, int index);

	this(Table parent, int style, int index, bool create);
	static Table checkNull(Table control);
	protected override void checkSubclass();

	void clear();
	override void destroyWidget();
	HFONT fontHandle(int index);
	public Color getBackground();

	public Color getBackground(int index);

	public Rectangle getBounds();

	public Rectangle getBounds(int index);

	RECT getBounds(int row, int column, bool getText, bool getImage, bool fullText);
	RECT getBounds(int row, int column, bool getText, bool getImage, bool fullText, bool fullImage, HDC hDC);
	public bool getChecked();

	public Font getFont();

	public Font getFont(int index);

	public Color getForeground();

	public Color getForeground(int index);

	public bool getGrayed();

	public override Image getImage();

	public Image getImage(int index);

	public Rectangle getImageBounds(int index);

	public int getImageIndent();

	override String getNameText();
	public Table getParent();

	public override String getText();

	public String getText(int index);

	public Rectangle getTextBounds(int index);

	void redraw();
	void redraw(int column, bool drawText, bool drawImage);
	override void releaseHandle();
	override void releaseWidget();
	public void setBackground(Color color);

	public void setBackground(int index, Color color);

	public void setChecked(bool checked);

	void setChecked(bool checked, bool notify);
	public void setFont(Font font);

	public void setFont(int index, Font font);

	public void setForeground(Color color);

	public void setForeground(int index, Color color);

	public void setGrayed(bool grayed);

	public void setImage(Image[] images);

	public void setImage(int index, Image image);

	public override void setImage(Image image);

	public void setImageIndent(int indent);

	public void setText(String[] strings);

	public void setText(int index, String string);

	public override void setText(String string);

}

