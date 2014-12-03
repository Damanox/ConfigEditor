// D import file generated from 'org\eclipse\swt\widgets\Tree.d'
module org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Table;
import java.lang.all;
public class Tree : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.setBackgroundImage setBackgroundImage;
	alias Composite.setBounds setBounds;
	alias Composite.setCursor setCursor;
	alias Composite.sort sort;
	TreeItem[] items;
	TreeColumn[] columns;
	int columnCount;
	ImageList imageList;
	ImageList headerImageList;
	TreeItem currentItem;
	TreeColumn sortColumn;
	RECT* focusRect;
	HWND hwndParent;
	HWND hwndHeader;
	HANDLE hAnchor;
	HANDLE hInsert;
	HANDLE hSelect;
	int lastID;
	HANDLE hFirstIndexOf;
	HANDLE hLastIndexOf;
	int lastIndexOf;
	int itemCount;
	int sortDirection;
	bool dragStarted;
	bool gestureCompleted;
	bool insertAfter;
	bool shrink;
	bool ignoreShrink;
	bool ignoreSelect;
	bool ignoreExpand;
	bool ignoreDeselect;
	bool ignoreResize;
	bool lockSelection;
	bool oldSelected;
	bool newSelected;
	bool ignoreColumnMove;
	bool linesVisible;
	bool customDraw;
	bool printClient;
	bool painted;
	bool ignoreItemHeight;
	bool ignoreCustomDraw;
	bool ignoreDrawForeground;
	bool ignoreDrawBackground;
	bool ignoreDrawFocus;
	bool ignoreDrawSelection;
	bool ignoreDrawHot;
	bool ignoreFullSelection;
	bool explorerTheme;
	int scrollWidth;
	int selectionForeground;
	HANDLE headerToolTipHandle;
	HANDLE itemToolTipHandle;
	static const int INSET = 3;

	static const int GRID_WIDTH = 1;

	static const int SORT_WIDTH = 10;

	static const int HEADER_MARGIN = 12;

	static const int HEADER_EXTRA = 3;

	static const int INCREMENT = 5;

	static const int EXPLORER_EXTRA = 2;

	static const int DRAG_IMAGE_SIZE = 301;

	static const bool EXPLORER_THEME = true;

	mixin(gshared!"private static /+const+/ WNDPROC TreeProc;");
	mixin(gshared!"static const TCHAR[] TreeClass = OS.WC_TREEVIEW;");
	mixin(gshared!"private static /+const+/ WNDPROC HeaderProc;");
	mixin(gshared!"static const TCHAR[] HeaderClass = OS.WC_HEADER;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	mixin(gshared!"private static Tree sThis;");
	public this(Composite parent, int style);

	static int checkStyle(int style);
	override void _addListener(int eventType, Listener listener);
	TreeItem _getItem(HANDLE hItem);
	TreeItem _getItem(HANDLE hItem, int id);
	void _setBackgroundPixel(int newPixel);
	public void addSelectionListener(SelectionListener listener);

	public void addTreeListener(TreeListener listener);

	override HWND borderHandle();
	LRESULT CDDS_ITEMPOSTPAINT(NMTVCUSTOMDRAW* nmcd, int wParam, int lParam);
	LRESULT CDDS_ITEMPREPAINT(NMTVCUSTOMDRAW* nmcd, int wParam, int lParam);
	LRESULT CDDS_POSTPAINT(NMTVCUSTOMDRAW* nmcd, int wParam, int lParam);
	LRESULT CDDS_PREPAINT(NMTVCUSTOMDRAW* nmcd, int wParam, int lParam);
	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	override void checkBuffered();
	bool checkData(TreeItem item, bool redraw);
	bool checkData(TreeItem item, int index, bool redraw);
	override bool checkHandle(HWND hwnd);
	bool checkScroll(HANDLE hItem);
	protected override void checkSubclass();

	public void clear(int index, bool all);

	void clear(HANDLE hItem, TVITEM* tvItem);
	public void clearAll(bool all);

	void clearAll(HANDLE hItem, TVITEM* tvItem, bool all);
	private extern (Windows) static int CompareFunc(int lParam1, int lParam2, int lParamSort);


	int CompareProc(int lParam1, int lParam2, int lParamSort);
	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	void createHeaderToolTips();
	void createItem(TreeColumn column, int index);
	void createItem(TreeItem item, HANDLE hParent, HANDLE hInsertAfter, HANDLE hItem);
	void createItemToolTips();
	void createParent();
	override void createWidget();
	override int defaultBackground();
	override void deregister();
	void deselect(HANDLE hItem, TVITEM* tvItem, HANDLE hIgnoreItem);
	public void deselect(TreeItem item);

	public void deselectAll();

	void destroyItem(TreeColumn column);
	void destroyItem(TreeItem item, HANDLE hItem);
	override void destroyScrollBar(int type);
	override void enableDrag(bool enabled);
	override void enableWidget(bool enabled);
	bool findCell(int x, int y, ref TreeItem item, ref int index, ref RECT* cellRect, ref RECT* itemRect);
	int findIndex(HANDLE hFirstItem, HANDLE hItem);
	override Widget findItem(HANDLE hItem);
	HANDLE findItem(HANDLE hFirstItem, int index);
	TreeItem getFocusItem();
	public int getGridLineWidth();

	public int getHeaderHeight();

	public bool getHeaderVisible();

	Point getImageSize();
	HANDLE getBottomItem();
	public TreeColumn getColumn(int index);

	public int getColumnCount();

	public int[] getColumnOrder();

	public TreeColumn[] getColumns();

	public TreeItem getItem(int index);

	TreeItem getItem(NMTVCUSTOMDRAW* nmcd);
	public TreeItem getItem(Point point);

	public int getItemCount();

	int getItemCount(HANDLE hItem);
	public int getItemHeight();

	public TreeItem[] getItems();

	TreeItem[] getItems(HANDLE hTreeItem);
	public bool getLinesVisible();

	HANDLE getNextSelection(HANDLE hItem, TVITEM* tvItem);
	public TreeItem getParentItem();

	int getSelection(HANDLE hItem, TVITEM* tvItem, TreeItem[] selection, int index, int count, bool bigSelection, bool all);
	public TreeItem[] getSelection();

	public int getSelectionCount();

	public TreeColumn getSortColumn();

	int getSortColumnPixel();
	public int getSortDirection();

	public TreeItem getTopItem();

	bool hitTestSelection(HANDLE hItem, int x, int y);
	int imageIndex(Image image, int index);
	int imageIndexHeader(Image image);
	public int indexOf(TreeColumn column);

	public int indexOf(TreeItem item);

	bool isCustomToolTip();
	bool isItemSelected(NMTVCUSTOMDRAW* nmcd);
	void redrawSelection();
	override void register();
	void releaseItem(HANDLE hItem, TVITEM* tvItem, bool release);
	void releaseItems(HANDLE hItem, TVITEM* tvItem);
	override void releaseHandle();
	override void releaseChildren(bool destroy);
	override void releaseWidget();
	public void removeAll();

	public void removeSelectionListener(SelectionListener listener);

	public void removeTreeListener(TreeListener listener);

	public void setInsertMark(TreeItem item, bool before);

	public void setItemCount(int count);

	void setItemCount(int count, HANDLE hParent, HANDLE hItem);
	void setItemHeight(int itemHeight);
	public void setLinesVisible(bool show);

	override HWND scrolledHandle();
	void select(HANDLE hItem, TVITEM* tvItem);
	public void select(TreeItem item);

	public void selectAll();

	Event sendEraseItemEvent(TreeItem item, NMTTCUSTOMDRAW* nmcd, int column, RECT* cellRect);
	Event sendMeasureItemEvent(TreeItem item, int index, HDC hDC);
	Event sendPaintItemEvent(TreeItem item, NMTTCUSTOMDRAW* nmcd, int column, RECT* itemRect);
	override void setBackgroundImage(HBITMAP hBitmap);
	override void setBackgroundPixel(int pixel);
	override void setCursor();
	public void setColumnOrder(int[] order);

	void setCheckboxImageList();
	public override void setFont(Font font);

	override void setForegroundPixel(int pixel);
	public void setHeaderVisible(bool show);

	public override void setRedraw(bool redraw);

	void setScrollWidth();
	void setScrollWidth(int width);
	void setSelection(HANDLE hItem, TVITEM* tvItem, TreeItem[] selection);
	public void setSelection(TreeItem item);

	public void setSelection(TreeItem[] items);

	public void setSortColumn(TreeColumn column);

	public void setSortDirection(int direction);

	public void setTopItem(TreeItem item);

	void showItem(HANDLE hItem);
	public void showColumn(TreeColumn column);

	public void showItem(TreeItem item);

	public void showSelection();

	void sort();
	void sort(HANDLE hParent, bool all);
	override void subclass();
	RECT* toolTipInset(RECT* rect);
	RECT* toolTipRect(RECT* rect);
	override String toolTipText(NMTTDISPINFO* hdr);
	override HWND topHandle();
	void updateFullSelection();
	void updateHeaderToolTips();
	void updateImageList();
	override void updateImages();
	void updateScrollBar();
	override void unsubclass();
	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override int windowProc(HWND hwnd, int msg, int wParam, int lParam);
	override LRESULT WM_CHAR(int wParam, int lParam);
	override LRESULT WM_ERASEBKGND(int wParam, int lParam);
	override LRESULT WM_GETOBJECT(int wParam, int lParam);
	override LRESULT WM_HSCROLL(int wParam, int lParam);
	override LRESULT WM_KEYDOWN(int wParam, int lParam);
	override LRESULT WM_KILLFOCUS(int wParam, int lParam);
	override LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam);
	override LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_MOUSEMOVE(int wParam, int lParam);
	override LRESULT WM_MOVE(int wParam, int lParam);
	override LRESULT WM_RBUTTONDOWN(int wParam, int lParam);
	override LRESULT WM_PAINT(int wParam, int lParam);
	override LRESULT WM_PRINTCLIENT(int wParam, int lParam);
	override LRESULT WM_SETFOCUS(int wParam, int lParam);
	override LRESULT WM_SETFONT(int wParam, int lParam);
	override LRESULT WM_SETREDRAW(int wParam, int lParam);
	override LRESULT WM_SIZE(int wParam, int lParam);
	override LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam);
	override LRESULT WM_VSCROLL(int wParam, int lParam);
	override LRESULT wmColorChild(int wParam, int lParam);
	override LRESULT wmNotify(NMHDR* hdr, int wParam, int lParam);
	override LRESULT wmNotifyChild(NMHDR* hdr, int wParam, int lParam);
	LRESULT wmNotifyHeader(NMHDR* hdr, int wParam, int lParam);
	LRESULT wmNotifyToolTip(NMHDR* hdr, int wParam, int lParam);
	LRESULT wmNotifyToolTip(NMTTCUSTOMDRAW* nmcd, int lParam);
}

