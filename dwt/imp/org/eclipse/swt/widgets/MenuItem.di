// D import file generated from 'org\eclipse\swt\widgets\MenuItem.d'
module org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ArmListener;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import java.lang.all;
public class MenuItem : Item
{
	Menu parent;
	Menu menu;
	HBITMAP hBitmap;
	int id;
	int accelerator;
	mixin(gshared!"private static int MARGIN_WIDTH_;");
	public static int MARGIN_WIDTH();

	private static int MARGIN_HEIGHT_;


	public static int MARGIN_HEIGHT();

	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	public this(Menu parent, int style);

	public this(Menu parent, int style, int index);

	this(Menu parent, Menu menu, int style, int index);
	public void addArmListener(ArmListener listener);

	public void addHelpListener(HelpListener listener);

	public void addSelectionListener(SelectionListener listener);

	protected override void checkSubclass();

	static int checkStyle(int style);
	override void destroyWidget();
	bool fillAccel(ACCEL* accel);
	void fixMenus(Decorations newParent);
	public int getAccelerator();

	Rectangle getBounds();
	public bool getEnabled();

	public override Menu getMenu();

	override String getNameText();
	public Menu getParent();

	public bool getSelection();

	public bool isEnabled();

	override void releaseChildren(bool destroy);
	override void releaseHandle();
	override void releaseParent();
	override void releaseWidget();
	public void removeArmListener(ArmListener listener);

	public void removeHelpListener(HelpListener listener);

	public void removeSelectionListener(SelectionListener listener);

	void selectRadio();
	public void setAccelerator(int accelerator);

	public void setEnabled(bool enabled);

	public override void setImage(Image image);

	public void setMenu(Menu menu);

	void setMenu(Menu menu, bool dispose);
	bool setRadioSelection(bool value);
	public void setSelection(bool selected);

	public override void setText(String string);

	int widgetStyle();
	LRESULT wmCommandChild(int wParam, int lParam);
	LRESULT wmDrawChild(int wParam, int lParam);
	LRESULT wmMeasureChild(int wParam, int lParam);
}

