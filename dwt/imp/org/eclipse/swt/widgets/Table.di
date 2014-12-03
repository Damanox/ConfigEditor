// D import file generated from 'org\eclipse\swt\widgets\Table.d'
module org.eclipse.swt.widgets.Table;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import java.lang.all;
import java.nonstandard.UnsafeUtf;
public class Table : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.setBackgroundImage setBackgroundImage;
	alias Composite.setBounds setBounds;
	alias Composite.sort sort;
	alias Composite.update update;
	TableItem[] items;
	TableColumn[] columns;
	int columnCount;
	int customCount;
	ImageList imageList;
	ImageList headerImageList;
	TableItem currentItem;
	TableColumn sortColumn;
	RECT* focusRect;
	HWND headerToolTipHandle;
	bool ignoreCustomDraw;
	bool ignoreDrawForeground;
	bool ignoreDrawBackground;
	bool ignoreDrawFocus;
	bool ignoreDrawSelection;
	bool ignoreDrawHot;
	bool customDraw;
	bool dragStarted;
	bool explorerTheme;
	bool firstColumnImage;
	bool fixScrollWidth;
	bool tipRequested;
	bool wasSelected;
	bool wasResized;
	bool ignoreActivate;
	bool ignoreSelect;
	bool ignoreShrink;
	bool ignoreResize;
	bool ignoreColumnMove;
	bool ignoreColumnResize;
	bool fullRowSelect;
	int itemHeight;
	int lastIndexOf;
	int lastWidth;
	int sortDirection;
	int resizeCount;
	int selectionForeground;
	int hotIndex;
	mixin(gshared!"static /*final*/ WNDPROC HeaderProc;");
	static const int INSET = 4;

	static const int GRID_WIDTH = 1;

	static const int SORT_WIDTH = 10;

	static const int HEADER_MARGIN = 12;

	static const int HEADER_EXTRA = 3;

	static const int VISTA_EXTRA = 2;

	static const int EXPLORER_EXTRA = 2;

	static const int H_SCROLL_LIMIT = 32;

	static const int V_SCROLL_LIMIT = 16;

	static const int DRAG_IMAGE_SIZE = 301;

	static const bool EXPLORER_THEME = true;

	mixin(gshared!"private static /+const+/ WNDPROC TableProc;");
	mixin(gshared!"static const TCHAR[] TableClass = OS.WC_LISTVIEW;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Composite parent, int style);

	override void _addListener(int eventType, Listener listener);
	TableItem _getItem(int index);
	public void addSelectionListener(SelectionListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	int callWindowProc(HWND hwnd, int msg, int wParam, int lParam, bool forceSelect);
	static int checkStyle(int style);
	LRESULT CDDS_ITEMPOSTPAINT(NMLVCUSTOMDRAW* nmcd, int wParam, int lParam);
	LRESULT CDDS_ITEMPREPAINT(NMLVCUSTOMDRAW* nmcd, int wParam, int lParam);
	LRESULT CDDS_POSTPAINT(NMLVCUSTOMDRAW* nmcd, int wParam, int lParam);
	LRESULT CDDS_PREPAINT(NMLVCUSTOMDRAW* nmcd, int wParam, int lParam);
	LRESULT CDDS_SUBITEMPOSTPAINT(NMLVCUSTOMDRAW* nmcd, int wParam, int lParam);
	LRESULT CDDS_SUBITEMPREPAINT(NMLVCUSTOMDRAW* nmcd, int wParam, int lParam);
	override void checkBuffered();
	bool checkData(TableItem item, bool redraw);
	bool checkData(TableItem item, int index, bool redraw);
	override bool checkHandle(HWND hwnd);
	protected override void checkSubclass();

	public void clear(int index);

	public void clear(int start, int end);

	public void clear(int[] indices);

	public void clearAll();

	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	void createHeaderToolTips();
	void createItem(TableColumn column, int index);
	void createItem(TableItem item, int index);
	override void createWidget();
	override int defaultBackground();
	override void deregister();
	public void deselect(int[] indices);

	public void deselect(int index);

	public void deselect(int start, int end);

	public void deselectAll();

	void destroyItem(TableColumn column);
	void destroyItem(TableItem item);
	void fixCheckboxImageList(bool fixScroll);
	void fixCheckboxImageListColor(bool fixScroll);
	void fixItemHeight(bool fixScroll);
	public TableColumn getColumn(int index);

	public int getColumnCount();

	public int[] getColumnOrder();

	public TableColumn[] getColumns();

	int getFocusIndex();
	public int getGridLineWidth();

	public int getHeaderHeight();

	public bool getHeaderVisible();

	public TableItem getItem(int index);

	public TableItem getItem(Point point);

	public int getItemCount();

	public int getItemHeight();

	public TableItem[] getItems();

	public bool getLinesVisible();

	public TableItem[] getSelection();

	public int getSelectionCount();

	public int getSelectionIndex();

	public int[] getSelectionIndices();

	public TableColumn getSortColumn();

	int getSortColumnPixel();
	public int getSortDirection();

	public int getTopIndex();

	bool hasChildren();
	bool hitTestSelection(int index, int x, int y);
	int imageIndex(Image image, int column);
	int imageIndexHeader(Image image);
	public int indexOf(TableColumn column);

	public int indexOf(TableItem item);

	bool isCustomToolTip();
	bool isOptimizedRedraw();
	public bool isSelected(int index);

	override void register();
	override void releaseChildren(bool destroy);
	override void releaseWidget();
	public void remove(int[] indices);

	public void remove(int index);

	public void remove(int start, int end);

	public void removeAll();

	public void removeSelectionListener(SelectionListener listener);

	public void select(int[] indices);

	public void select(int index);

	public void select(int start, int end);

	public void selectAll();

	void sendEraseItemEvent(TableItem item, NMLVCUSTOMDRAW* nmcd, int lParam, Event measureEvent);
	Event sendEraseItemEvent(TableItem item, NMTTCUSTOMDRAW* nmcd, int column, RECT* cellRect);
	Event sendMeasureItemEvent(TableItem item, int row, int column, HDC hDC);
	LRESULT sendMouseDownEvent(int type, int button, int msg, int wParam, int lParam);
	void sendPaintItemEvent(TableItem item, NMLVCUSTOMDRAW* nmcd);
	Event sendPaintItemEvent(TableItem item, NMTTCUSTOMDRAW* nmcd, int column, RECT* itemRect);
	override void setBackgroundImage(HBITMAP hBitmap);
	override void setBackgroundPixel(int newPixel);
	void setBackgroundTransparent(bool transparent);
	override void setBounds(int x, int y, int width, int height, int flags, bool defer);
	public void setColumnOrder(int[] order);

	void setCustomDraw(bool customDraw);
	void setDeferResize(bool defer);
	void setCheckboxImageList(int width, int height, bool fixScroll);
	void setFocusIndex(int index);
	public override void setFont(Font font);

	override void setForegroundPixel(int pixel);
	public void setHeaderVisible(bool show);

	public void setItemCount(int count);

	void setItemHeight(bool fixScroll);
	void setItemHeight(int itemHeight);
	public void setLinesVisible(bool show);

	public override void setRedraw(bool redraw);

	bool setScrollWidth(TableItem item, bool force);
	public void setSelection(int[] indices);

	public void setSelection(TableItem item);

	public void setSelection(TableItem[] items);

	public void setSelection(int index);

	public void setSelection(int start, int end);

	public void setSortColumn(TableColumn column);

	public void setSortDirection(int direction);

	void setSubImagesVisible(bool visible);
	void setTableEmpty();
	public void setTopIndex(int index);

	public void showColumn(TableColumn column);

	void showItem(int index);
	public void showItem(TableItem item);

	public void showSelection();

	void sort();
	override void subclass();
	RECT* toolTipInset(RECT* rect);
	RECT* toolTipRect(RECT* rect);
	override String toolTipText(NMTTDISPINFO* hdr);
	override void unsubclass();
	override void update(bool all);
	void updateHeaderToolTips();
	override void updateImages();
	void updateMoveable();
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override int windowProc(HWND hwnd, int msg, int wParam, int lParam);
	override LRESULT WM_CHAR(int wParam, int lParam);
	override LRESULT WM_CONTEXTMENU(int wParam, int lParam);
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_GETOBJECT(int wParam, int lParam);
	override LRESULT WM_KEYDOWN(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_MOUSEHOVER(int wParam, int lParam);
	override LRESULT WM_PAINT(int wParam, int lParam);
	override LRESULT WM_RBUTTONDBLCLK(int wParam, int lParam);
	override LRESULT WM_RBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SETFONT(int wParam, int lParam);
	override LRESULT WM_SETREDRAW(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam);
	override LRESULT WM_HSCROLL(int wParam, int lParam);
	override LRESULT WM_VSCROLL(int wParam, int lParam);
	override LRESULT wmMeasureChild(int wParam, int lParam);
	override LRESULT wmNotify(NMHDR* hdr, int wParam, int lParam);
	override LRESULT wmNotifyChild(NMHDR* hdr, int wParam, int lParam);
	LRESULT wmNotifyHeader(NMHDR* hdr, int wParam, int lParam);
	LRESULT wmNotifyToolTip(NMHDR* hdr, int wParam, int lParam);
	LRESULT wmNotifyToolTip(NMTTCUSTOMDRAW* nmcd, int lParam);
}

