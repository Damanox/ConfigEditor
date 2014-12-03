// D import file generated from 'org\eclipse\swt\custom\TableTree.d'
module org.eclipse.swt.custom.TableTree;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.custom.TableTreeItem;
import java.lang.all;
public class TableTree : Composite
{
	alias Composite.computeSize computeSize;
	Table table;
	TableTreeItem[] items;
	Image plusImage;
	Image minusImage;
	Image sizeImage;
	bool inDispose = false;
	static TableTreeItem[] EMPTY_ITEMS;

	static String[] EMPTY_TEXTS;

	static Image[] EMPTY_IMAGES;

	static String ITEMID = "TableTreeItemID";

	public this(Composite parent, int style);

	int addItem(TableTreeItem item, int index);
	public void addSelectionListener(SelectionListener listener);

	public void addTreeListener(TreeListener listener);

	private static int checkStyle(int style);

	public override Point computeSize(int wHint, int hHint, bool changed);

	public override Rectangle computeTrim(int x, int y, int width, int height);

	public void deselectAll();

	void expandItem(TableTreeItem item);
	public override Color getBackground();

	public override Rectangle getClientArea();

	public override Color getForeground();

	public override Font getFont();

	public int getItemCount();

	public int getItemHeight();

	public TableTreeItem[] getItems();

	public TableTreeItem[] getSelection();

	public int getSelectionCount();

	public override int getStyle();

	public Table getTable();

	void createImages();
	Image getPlusImage();
	Image getMinusImage();
	public int indexOf(TableTreeItem item);

	void onDispose(Event e);
	void onResize(Event e);
	void onSelection(Event e);
	public TableTreeItem getItem(int index);

	public TableTreeItem getItem(Point point);

	TableTreeItem getItem(TableItem tableItem);
	void onFocusIn(Event e);
	void onKeyDown(Event e);
	void onMouseDown(Event event);
	public void removeAll();

	void removeItem(TableTreeItem item);
	public void removeSelectionListener(SelectionListener listener);

	public void removeTreeListener(TreeListener listener);

	public void selectAll();

	public override void setBackground(Color color);

	public override void setEnabled(bool enabled);

	public override void setFont(Font font);

	public override void setForeground(Color color);

	public override void setMenu(Menu menu);

	public void setSelection(TableTreeItem[] items);

	public override void setToolTipText(String string);

	public void showItem(TableTreeItem item);

	public void showSelection();

}

