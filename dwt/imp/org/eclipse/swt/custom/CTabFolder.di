// D import file generated from 'org\eclipse\swt\custom\CTabFolder.d'
module org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.accessibility.ACC;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.custom.CTabFolder2Listener;
import org.eclipse.swt.custom.CTabFolderListener;
import org.eclipse.swt.custom.CTabFolderLayout;
import org.eclipse.swt.custom.CTabFolderEvent;
import java.lang.all;
import java.nonstandard.UnsafeUtf;
public class CTabFolder : Composite
{
	public int marginWidth = 0;

	public int marginHeight = 0;

	public int MIN_TAB_WIDTH = 4;

	mixin(gshared!"public static RGB borderInsideRGB;");
	mixin(gshared!"public static RGB borderMiddleRGB;");
	mixin(gshared!"public static RGB borderOutsideRGB;");
	int xClient;
	int yClient;
	bool onBottom = false;
	bool single = false;
	bool simple = true;
	int fixedTabHeight = SWT.DEFAULT;
	int tabHeight;
	int minChars = 20;
	CTabItem[] items;
	int firstIndex = -1;
	int selectedIndex = -1;
	int[] priority;
	bool mru = false;
	Listener listener;
	CTabFolder2Listener[] folderListeners;
	CTabFolderListener[] tabListeners;
	Image selectionBgImage;
	Color[] selectionGradientColors;
	int[] selectionGradientPercents;
	bool selectionGradientVertical;
	Color selectionForeground;
	Color selectionBackground;
	Color selectionFadeStart;
	Color selectionHighlightGradientBegin = null;
	Color[] selectionHighlightGradientColorsCache = null;
	Image bgImage;
	Color[] gradientColors;
	int[] gradientPercents;
	bool gradientVertical;
	bool showUnselectedImage = true;
	static Color borderColor;

	bool showClose = false;
	bool showUnselectedClose = true;
	Rectangle chevronRect;
	int chevronImageState = NORMAL;
	bool showChevron = false;
	Menu showMenu;
	bool showMin = false;
	Rectangle minRect;
	bool minimized = false;
	int minImageState = NORMAL;
	bool showMax = false;
	Rectangle maxRect;
	bool maximized = false;
	int maxImageState = NORMAL;
	Control topRight;
	Rectangle topRightRect;
	int topRightAlignment = SWT.RIGHT;
	int borderLeft = 0;
	int borderRight = 0;
	int borderTop = 0;
	int borderBottom = 0;
	int highlight_margin = 0;
	int highlight_header = 0;
	int[] curve;
	int[] topCurveHighlightStart;
	int[] topCurveHighlightEnd;
	int curveWidth = 0;
	int curveIndent = 0;
	bool inDispose = false;
	Point oldSize;
	Font oldFont;
	static const int DEFAULT_WIDTH = 64;

	static const int DEFAULT_HEIGHT = 64;

	static const int BUTTON_SIZE = 18;

	static const int[] TOP_LEFT_CORNER = [0, 6, 1, 5, 1, 4, 4, 1, 5, 1, 6, 0];

	static const int[] TOP_LEFT_CORNER_HILITE = [5, 2, 4, 2, 3, 3, 2, 4, 2, 5, 1, 6];

	static const int[] TOP_RIGHT_CORNER = [-6, 0, -5, 1, -4, 1, -1, 4, -1, 5, 0, 6];

	static const int[] BOTTOM_LEFT_CORNER = [0, -6, 1, -5, 1, -4, 4, -1, 5, -1, 6, 0];

	static const int[] BOTTOM_RIGHT_CORNER = [-6, 0, -5, -1, -4, -1, -1, -4, -1, -5, 0, -6];

	static const int[] SIMPLE_TOP_LEFT_CORNER = [0, 2, 1, 1, 2, 0];

	static const int[] SIMPLE_TOP_RIGHT_CORNER = [-2, 0, -1, 1, 0, 2];

	static const int[] SIMPLE_BOTTOM_LEFT_CORNER = [0, -2, 1, -1, 2, 0];

	static const int[] SIMPLE_BOTTOM_RIGHT_CORNER = [-2, 0, -1, -1, 0, -2];

	static const int[] SIMPLE_UNSELECTED_INNER_CORNER = [0, 0];

	static const int[] TOP_LEFT_CORNER_BORDERLESS = [0, 6, 1, 5, 1, 4, 4, 1, 5, 1, 6, 0];

	static const int[] TOP_RIGHT_CORNER_BORDERLESS = [-7, 0, -6, 1, -5, 1, -2, 4, -2, 5, -1, 6];

	static const int[] BOTTOM_LEFT_CORNER_BORDERLESS = [0, -6, 1, -6, 1, -5, 2, -4, 4, -2, 5, -1, 6, -1, 6, 0];

	static const int[] BOTTOM_RIGHT_CORNER_BORDERLESS = [-7, 0, -7, -1, -6, -1, -5, -2, -3, -4, -2, -5, -2, -6, -1, -6];

	static const int[] SIMPLE_TOP_LEFT_CORNER_BORDERLESS = [0, 2, 1, 1, 2, 0];

	static const int[] SIMPLE_TOP_RIGHT_CORNER_BORDERLESS = [-3, 0, -2, 1, -1, 2];

	static const int[] SIMPLE_BOTTOM_LEFT_CORNER_BORDERLESS = [0, -3, 1, -2, 2, -1, 3, 0];

	static const int[] SIMPLE_BOTTOM_RIGHT_CORNER_BORDERLESS = [-4, 0, -3, -1, -2, -2, -1, -3];

	static const int SELECTION_FOREGROUND = SWT.COLOR_LIST_FOREGROUND;

	static const int SELECTION_BACKGROUND = SWT.COLOR_LIST_BACKGROUND;

	static const int BORDER1_COLOR = SWT.COLOR_WIDGET_NORMAL_SHADOW;

	static const int FOREGROUND = SWT.COLOR_WIDGET_FOREGROUND;

	static const int BACKGROUND = SWT.COLOR_WIDGET_BACKGROUND;

	static const int BUTTON_BORDER = SWT.COLOR_WIDGET_DARK_SHADOW;

	static const int BUTTON_FILL = SWT.COLOR_LIST_BACKGROUND;

	static const int NONE = 0;

	static const int NORMAL = 1;

	static const int HOT = 2;

	static const int SELECTED = 3;

	mixin(gshared!"static const RGB CLOSE_FILL;");
	static const int CHEVRON_CHILD_ID = 0;

	static const int MINIMIZE_CHILD_ID = 1;

	static const int MAXIMIZE_CHILD_ID = 2;

	static const int EXTRA_CHILD_ID_COUNT = 3;

	mixin(sharedStaticThis!"{\x0a    borderInsideRGB  = new RGB (132, 130, 132);\x0a    borderMiddleRGB  = new RGB (143, 141, 138);\x0a    borderOutsideRGB = new RGB (171, 168, 165);\x0a    CLOSE_FILL = new RGB(252, 160, 160);\x0a}");
	public this(Composite parent, int style);

	static int checkStyle(Composite parent, int style);
	static void fillRegion(GC gc, Region region);
	public void addCTabFolder2Listener(CTabFolder2Listener listener);

	public void addCTabFolderListener(CTabFolderListener listener);

	public void addSelectionListener(SelectionListener listener);

	void antialias(int[] shape, RGB lineRGB, RGB innerRGB, RGB outerRGB, GC gc);
	public override Rectangle computeTrim(int x, int y, int width, int height);

	void createItem(CTabItem item, int index);
	void destroyItem(CTabItem item);
	void drawBackground(GC gc, int[] shape, bool selected);
	void drawBackground(GC gc, int[] shape, int x, int y, int width, int height, Color defaultBackground, Image image, Color[] colors, int[] percents, bool vertical);
	void drawBody(Event event);
	void drawChevron(GC gc);
	void drawMaximize(GC gc);
	void drawMinimize(GC gc);
	void drawTabArea(Event event);
	public bool getBorderVisible();

	public override Rectangle getClientArea();

	public CTabItem getItem(int index);

	public CTabItem getItem(Point pt);

	public int getItemCount();

	public CTabItem[] getItems();

	dchar _findMnemonic(String string);
	String stripMnemonic(String string);
	public bool getMinimized();

	public bool getMinimizeVisible();

	public int getMinimumCharacters();

	public bool getMaximized();

	public bool getMaximizeVisible();

	public bool getMRUVisible();

	int getRightItemEdge();
	public CTabItem getSelection();

	public Color getSelectionBackground();

	public Color getSelectionForeground();

	public int getSelectionIndex();

	public bool getSimple();

	public bool getSingle();

	public override int getStyle();

	public int getTabHeight();

	public int getTabPosition();

	public Control getTopRight();

	public bool getUnselectedCloseVisible();

	public bool getUnselectedImageVisible();

	public int indexOf(CTabItem item);

	void initAccessible();
	void onKeyDown(Event event);
	void onDispose(Event event);
	void onDragDetect(Event event);
	void onFocus(Event event);
	bool onMnemonic(Event event);
	void onMouseDoubleClick(Event event);
	void onMouse(Event event);
	bool onPageTraversal(Event event);
	void onPaint(Event event);
	void onResize();
	void onTraverse(Event event);
	void redrawTabs();
	public void removeCTabFolder2Listener(CTabFolder2Listener listener);

	public void removeCTabFolderListener(CTabFolderListener listener);

	public void removeSelectionListener(SelectionListener listener);

	public override void setBackground(Color color);

	void setBackground(Color[] colors, int[] percents);
	void setBackground(Color[] colors, int[] percents, bool vertical);
	void setBackground(Image image);
	public void setBorderVisible(bool show);

	void setButtonBounds();
	public override void setFont(Font font);

	public override void setForeground(Color color);

	public void setInsertMark(CTabItem item, bool after);

	public void setInsertMark(int index, bool after);

	bool setItemLocation();
	bool setItemSize();
	public void setMaximizeVisible(bool visible);

	public override void setLayout(Layout layout);

	public void setMaximized(bool maximize);

	public void setMinimizeVisible(bool visible);

	public void setMinimized(bool minimize);

	public void setMinimumCharacters(int count);

	public void setMRUVisible(bool show);

	public void setSelection(CTabItem item);

	public void setSelection(int index);

	void setSelection(int index, bool notify);
	public void setSelectionBackground(Color color);

	public void setSelectionBackground(Color[] colors, int[] percents);

	public void setSelectionBackground(Color[] colors, int[] percents, bool vertical);

	void setSelectionHighlightGradientColor(Color start);
	bool isSelectionHighlightColorsCacheHit(Color start);
	public void setSelectionBackground(Image image);

	public void setSelectionForeground(Color color);

	void createSelectionHighlightGradientColors(Color start);
	void disposeSelectionHighlightGradientColors();
	Color getSelectionBackgroundGradientBegin();
	public void setSimple(bool simple);

	public void setSingle(bool single);

	public void setTabHeight(int height);

	public void setTabPosition(int position);

	public void setTopRight(Control control);

	public void setTopRight(Control control, int alignment);

	public void setUnselectedCloseVisible(bool visible);

	public void setUnselectedImageVisible(bool visible);

	public void showItem(CTabItem item);

	void showList(Rectangle rect);
	public void showSelection();

	void _setToolTipText(int x, int y);
	bool updateItems();
	bool updateItems(int showIndex);
	bool updateTabHeight(bool force);
	String _getToolTip(int x, int y);
}

