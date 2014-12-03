// D import file generated from 'org\eclipse\swt\widgets\Decorations.d'
module org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Display;
import java.lang.all;
public class Decorations : Canvas
{
	alias Canvas.setBounds setBounds;
	alias Canvas.setParent setParent;
	alias Canvas.setSavedFocus setSavedFocus;
	alias Canvas.sort sort;
	alias Canvas.windowProc windowProc;
	Image image;
	Image smallImage;
	Image largeImage;
	Image[] images;
	Menu menuBar;
	Menu[] menus;
	Control savedFocus;
	Button defaultButton;
	Button saveDefault;
	int swFlags;
	HACCEL hAccel;
	int nAccel;
	bool moved;
	bool resized;
	bool opened;
	int oldX = OS.CW_USEDEFAULT;
	int oldY = OS.CW_USEDEFAULT;
	int oldWidth = OS.CW_USEDEFAULT;
	int oldHeight = OS.CW_USEDEFAULT;
	this();
	public this(Composite parent, int style);

	void _setMaximized(bool maximized);
	void _setMinimized(bool minimized);
	void addMenu(Menu menu);
	void bringToTop();
	static int checkStyle(int style);
	override void checkBorder();
	void checkComposited(Composite parent);
	override void checkOpened();
	protected override void checkSubclass();

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	void closeWidget();
	int compare(ImageData data1, ImageData data2, int width, int height, int depth);
	override Control computeTabGroup();
	override Control computeTabRoot();
	public override Rectangle computeTrim(int x, int y, int width, int height);

	void createAccelerators();
	override void createHandle();
	override void createWidget();
	void destroyAccelerators();
	public override void dispose();

	Menu findMenu(HMENU hMenu);
	void fixDecorations(Decorations newDecorations, Control control, Menu[] menus);
	public override Rectangle getBounds();

	public override Rectangle getClientArea();

	public Button getDefaultButton();

	public Image getImage();

	public Image[] getImages();

	public override Point getLocation();

	public bool getMaximized();

	public Menu getMenuBar();

	public bool getMinimized();

	override String getNameText();
	public override Point getSize();

	public String getText();

	public override bool isReparentable();

	override bool isTabGroup();
	override bool isTabItem();
	override Decorations menuShell();
	override void releaseChildren(bool destroy);
	override void releaseWidget();
	void removeMenu(Menu menu);
	bool restoreFocus();
	void saveFocus();
	override void setBounds(int x, int y, int width, int height, int flags, bool defer);
	public void setDefaultButton(Button button);

	void setDefaultButton(Button button, bool save);
	public void setImage(Image image);

	void setImages(Image image, Image[] images);
	public void setImages(Image[] images);

	public void setMaximized(bool maximized);

	public void setMenuBar(Menu menu);

	public void setMinimized(bool minimized);

	void setParent();
	void setPlacement(int x, int y, int width, int height, int flags);
	void setSavedFocus(Control control);
	void setSystemMenu();
	public void setText(String string);

	public override void setVisible(bool visible);

	void sort(Image[] images, ImageData[] datas, int width, int height, int depth);
	override bool translateAccelerator(MSG* msg);
	bool translateMenuAccelerator(MSG* msg);
	bool translateMDIAccelerator(MSG* msg);
	bool traverseDecorations(bool next);
	override bool traverseItem(bool next);
	override bool traverseReturn();
	override CREATESTRUCT* widgetCreateStruct();
	override int widgetExtStyle();
	override HWND widgetParent();
	override int widgetStyle();
	override int windowProc(HWND hwnd, int msg, int wParam, int lParam);
	override LRESULT WM_ACTIVATE(int wParam, int lParam);
	override LRESULT WM_CLOSE(int wParam, int lParam);
	override LRESULT WM_HOTKEY(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_MOVE(int wParam, int lParam);
	override LRESULT WM_NCACTIVATE(int wParam, int lParam);
	override LRESULT WM_QUERYOPEN(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_SYSCOMMAND(int wParam, int lParam);
	override LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam);
}

