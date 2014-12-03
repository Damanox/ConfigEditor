// D import file generated from 'org\eclipse\swt\custom\TableTreeItem.d'
module org.eclipse.swt.custom.TableTreeItem;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.custom.TableTree;
import java.lang.all;
public class TableTreeItem : Item
{
	TableItem tableItem;
	TableTree parent;
	TableTreeItem parentItem;
	TableTreeItem[] items;
	String[] texts;
	Image[] images;
	Color background;
	Color foreground;
	Font font;
	bool expanded;
	bool checked;
	bool grayed;
	public this(TableTree parent, int style);

	public this(TableTree parent, int style, int index);

	public this(TableTreeItem parent, int style);

	public this(TableTreeItem parent, int style, int index);

	this(TableTree parent, TableTreeItem parentItem, int style, int index);
	void addCheck();
	void addItem(TableTreeItem item, int index);
	public Color getBackground();

	public Rectangle getBounds(int index);

	public bool getChecked();

	public bool getGrayed();

	public bool getExpanded();

	public Font getFont();

	public Color getForeground();

	public override Image getImage();

	public Image getImage(int index);

	int getIndent();
	public TableTreeItem getItem(int index);

	public int getItemCount();

	public TableTreeItem[] getItems();

	TableTreeItem getItem(TableItem tableItem);
	public TableTree getParent();

	public TableTreeItem getParentItem();

	public override String getText();

	public String getText(int index);

	bool getVisible();
	public int indexOf(TableTreeItem item);

	void expandAll(bool notify);
	int expandedIndexOf(TableTreeItem item);
	int visibleChildrenCount();
	public override void dispose();

	void removeItem(TableTreeItem item);
	public void setBackground(Color color);

	public void setChecked(bool checked);

	public void setGrayed(bool grayed);

	public void setExpanded(bool expanded);

	public void setFont(Font font);

	public void setForeground(Color color);

	public void setImage(int index, Image image);

	public override void setImage(Image image);

	public void setText(int index, String text);

	public override void setText(String string);

	void setVisible(bool show);
}

