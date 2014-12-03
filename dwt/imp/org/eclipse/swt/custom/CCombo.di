// D import file generated from 'org\eclipse\swt\custom\CCombo.d'
module org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.accessibility.ACC;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleTextAdapter;
import org.eclipse.swt.accessibility.AccessibleTextEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;
import java.lang.all;
import java.nonstandard.UnsafeUtf;
public final class CCombo : Composite
{
	alias Composite.computeSize computeSize;
	Text text;
	List list;
	int visibleItemCount = 5;
	Shell popup;
	Button arrow;
	bool hasFocus;
	Listener listener;
	Listener filter;
	Color foreground;
	Color background;
	Font font;
	public this(Composite parent, int style);

	static int checkStyle(int style);
	public void add(String string);

	public void add(String string, int index);

	public void addModifyListener(ModifyListener listener);

	public void addSelectionListener(SelectionListener listener);

	public void addVerifyListener(VerifyListener listener);

	void arrowEvent(Event event);
	public void clearSelection();

	void comboEvent(Event event);
	public override Point computeSize(int wHint, int hHint, bool changed);

	public void copy();

	void createPopup(String[] items, int selectionIndex);
	public void cut();

	public void deselect(int index);

	public void deselectAll();

	void dropDown(bool drop);
	dchar _findMnemonic(String str);
	Label getAssociatedLabel();
	public override Control[] getChildren();

	public bool getEditable();

	public String getItem(int index);

	public int getItemCount();

	public int getItemHeight();

	public String[] getItems();

	public bool getListVisible();

	public override Menu getMenu();

	public Point getSelection();

	public int getSelectionIndex();

	public override int getStyle();

	public String getText();

	public int getTextHeight();

	public int getTextLimit();

	public int getVisibleItemCount();

	void handleFocus(int type);
	public int indexOf(String string);

	public int indexOf(String string, int start);

	void initAccessible();
	bool isDropped();
	public override bool isFocusControl();

	void internalLayout(bool changed);
	void listEvent(Event event);
	public void paste();

	void popupEvent(Event event);
	public override void redraw();

	public override void redraw(int x, int y, int width, int height, bool all);

	public void remove(int index);

	public void remove(int start, int end);

	public void remove(String string);

	public void removeAll();

	public void removeModifyListener(ModifyListener listener);

	public void removeSelectionListener(SelectionListener listener);

	public void removeVerifyListener(VerifyListener listener);

	public void select(int index);

	public override void setBackground(Color color);

	public void setEditable(bool editable);

	public override void setEnabled(bool enabled);

	public override bool setFocus();

	public override void setFont(Font font);

	public override void setForeground(Color color);

	public void setItem(int index, String string);

	public void setItems(String[] items);

	public override void setLayout(Layout layout);

	public void setListVisible(bool visible);

	public override void setMenu(Menu menu);

	public void setSelection(Point selection);

	public void setText(String string);

	public void setTextLimit(int limit);

	public override void setToolTipText(String string);

	public override void setVisible(bool visible);

	public void setVisibleItemCount(int count);

	String stripMnemonic(String string);
	void textEvent(Event event);
}


