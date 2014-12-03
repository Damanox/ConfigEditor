// D import file generated from 'org\eclipse\swt\widgets\TreeItem.d'
module org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class TreeItem : Item
{
	public HANDLE handle;

	Tree parent;
	String[] strings;
	Image[] images;
	Font font;
	Font[] cellFont;
	bool cached;
	int background = -1;
	int foreground = -1;
	int[] cellBackground;
	int[] cellForeground;
	public this(Tree parent, int style);

	public this(Tree parent, int style, int index);

	public this(TreeItem parentItem, int style);

	public this(TreeItem parentItem, int style, int index);

	this(Tree parent, int style, HANDLE hParent, HANDLE hInsertAfter, HANDLE hItem);
	static TreeItem checkNull(TreeItem item);
	static HANDLE findPrevious(Tree parent, int index);
	static HANDLE findPrevious(TreeItem parentItem, int index);
	protected override void checkSubclass();

	void clear();
	public void clear(int index, bool all);

	public void clearAll(bool all);

	override void destroyWidget();
	HFONT fontHandle(int index);
	public Color getBackground();

	public Color getBackground(int index);

	public Rectangle getBounds();

	public Rectangle getBounds(int index);

	RECT* getBounds(int index, bool getText, bool getImage, bool fullText);
	RECT* getBounds(int index, bool getText, bool getImage, bool fullText, bool fullImage, bool clip, HDC hDC);
	public bool getChecked();

	public bool getExpanded();

	public Font getFont();

	public Font getFont(int index);

	public Color getForeground();

	public Color getForeground(int index);

	public bool getGrayed();

	public TreeItem getItem(int index);

	public int getItemCount();

	public TreeItem[] getItems();

	public override Image getImage();

	public Image getImage(int index);

	public Rectangle getImageBounds(int index);

	public Tree getParent();

	public TreeItem getParentItem();

	public override String getText();

	public String getText(int index);

	public Rectangle getTextBounds(int index);

	public int indexOf(TreeItem item);

	void redraw();
	void redraw(int column, bool drawText, bool drawImage);
	override void releaseChildren(bool destroy);
	override void releaseHandle();
	override void releaseWidget();
	public void removeAll();

	public void setBackground(Color color);

	public void setBackground(int index, Color color);

	public void setChecked(bool checked);

	public void setExpanded(bool expanded);

	public void setFont(Font font);

	public void setFont(int index, Font font);

	public void setForeground(Color color);

	public void setForeground(int index, Color color);

	public void setGrayed(bool grayed);

	public void setImage(Image[] images);

	public void setImage(int index, Image image);

	public override void setImage(Image image);

	public void setItemCount(int count);

	public void setText(String[] strings);

	public void setText(int index, String string);

	public override void setText(String string);

	void sort();
}

