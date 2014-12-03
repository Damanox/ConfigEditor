// D import file generated from 'org\eclipse\swt\widgets\Menu.d'
module org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.MenuListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TypedListener;
import java.lang.all;
public class Menu : Widget
{
	public HMENU handle;

	int x;
	int y;
	HBRUSH hBrush;
	HWND hwndCB;
	int id0;
	int id1;
	int foreground = -1;
	int background = -1;
	Image backgroundImage;
	bool hasLocation;
	MenuItem cascade;
	Decorations parent;
	ImageList imageList;
	static const int ID_PPC = 100;

	static const int ID_SPMM = 102;

	static const int ID_SPBM = 103;

	static const int ID_SPMB = 104;

	static const int ID_SPBB = 105;

	static const int ID_SPSOFTKEY0 = 106;

	static const int ID_SPSOFTKEY1 = 107;

	public this(Control parent);

	public this(Decorations parent, int style);

	public this(Menu parentMenu);

	public this(MenuItem parentItem);

	this(Decorations parent, int style, HWND handle);
	void _setVisible(bool visible);
	public void addHelpListener(HelpListener listener);

	public void addMenuListener(MenuListener listener);

	static Control checkNull(Control control);
	static Menu checkNull(Menu menu);
	static MenuItem checkNull(MenuItem item);
	static int checkStyle(int style);
	void createHandle();
	void createItem(MenuItem item, int index);
	void createWidget();
	int defaultBackground();
	int defaultForeground();
	void destroyAccelerators();
	void destroyItem(MenuItem item);
	override void destroyWidget();
	void fixMenus(Decorations newParent);
	Color getBackground();
	Image getBackgroundImage();
	Rectangle getBounds();
	public MenuItem getDefaultItem();

	public bool getEnabled();

	Color getForeground();
	public MenuItem getItem(int index);

	public int getItemCount();

	public MenuItem[] getItems();

	int GetMenuItemCount(HANDLE handle);
	override String getNameText();
	public Decorations getParent();

	public MenuItem getParentItem();

	public Menu getParentMenu();

	public Shell getShell();

	public bool getVisible();

	int imageIndex(Image image);
	public int indexOf(MenuItem item);

	public bool isEnabled();

	public bool isVisible();

	void redraw();
	override void releaseHandle();
	override void releaseChildren(bool destroy);
	override void releaseParent();
	override void releaseWidget();
	public void removeHelpListener(HelpListener listener);

	public void removeMenuListener(MenuListener listener);

	void setBackground(Color color);
	void setBackgroundImage(Image image);
	void setForeground(Color color);
	public void setDefaultItem(MenuItem item);

	public void setEnabled(bool enabled);

	public void setLocation(int x, int y);

	public void setLocation(Point location);

	public void setVisible(bool visible);

	void update();
	void updateBackground();
	void updateForeground();
}

