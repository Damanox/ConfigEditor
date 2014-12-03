// D import file generated from 'org\eclipse\swt\custom\TableCursor.d'
module org.eclipse.swt.custom.TableCursor;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;
public class TableCursor : Canvas
{
	alias Canvas.dispose dispose;
	Table table;
	TableItem row = null;
	TableColumn column = null;
	Listener tableListener;
	Listener resizeListener;
	Listener disposeItemListener;
	Listener disposeColumnListener;
	Color background = null;
	Color foreground = null;
	static const int BACKGROUND = SWT.COLOR_LIST_SELECTION_TEXT;

	static const int FOREGROUND = SWT.COLOR_LIST_SELECTION;

	public this(Table parent, int style);

	public void addSelectionListener(SelectionListener listener);

	void dispose(Event event);
	void keyDown(Event event);
	void paint(Event event);
	void tableFocusIn(Event event);
	void tableMouseDown(Event event);
	void setRowColumn(int row, int column, bool notify);
	void setRowColumn(TableItem row, TableColumn column, bool notify);
	public override void setVisible(bool visible);

	public void removeSelectionListener(SelectionListener listener);

	void _resize();
	public int getColumn();

	public override Color getBackground();

	public override Color getForeground();

	public TableItem getRow();

	public override void setBackground(Color color);

	public override void setForeground(Color color);

	public void setSelection(int row, int column);

	public void setSelection(TableItem row, int column);

	void unhookRowColumnListeners();
}

