// D import file generated from 'org\eclipse\swt\widgets\TrayItem.d'
module org.eclipse.swt.widgets.TrayItem;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.MenuDetectListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.ToolTip;
import org.eclipse.swt.widgets.Tray;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Display;
import java.lang.all;
public class TrayItem : Item
{
	Tray parent;
	int id;
	Image image2;
	ToolTip toolTip;
	String toolTipText;
	bool visible = true;
	public this(Tray parent, int style);

	public void addSelectionListener(SelectionListener listener);

	public void addMenuDetectListener(MenuDetectListener listener);

	protected override void checkSubclass();

	void createWidget();
	override void destroyWidget();
	public Tray getParent();

	public ToolTip getToolTip();

	public String getToolTipText();

	public bool getVisible();

	int messageProc(HWND hwnd, int msg, int wParam, int lParam);
	void recreate();
	override void releaseHandle();
	override void releaseWidget();
	public void removeSelectionListener(SelectionListener listener);

	public void removeMenuDetectListener(MenuDetectListener listener);

	public override void setImage(Image image);

	public void setToolTip(ToolTip toolTip);

	public void setToolTipText(String value);

	public void setVisible(bool visible);

}

