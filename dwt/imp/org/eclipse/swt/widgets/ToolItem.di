// D import file generated from 'org\eclipse\swt\widgets\ToolItem.d'
module org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.TypedListener;
import java.lang.all;
public class ToolItem : Item
{
	ToolBar parent;
	Control control;
	String toolTipText;
	Image disabledImage;
	Image hotImage;
	Image disabledImage2;
	int id;
	public this(ToolBar parent, int style);

	public this(ToolBar parent, int style, int index);

	public void addSelectionListener(SelectionListener listener);

	static int checkStyle(int style);
	protected override void checkSubclass();

	void click(bool dropDown);
	override void destroyWidget();
	public Rectangle getBounds();

	public Control getControl();

	public Image getDisabledImage();

	public bool getEnabled();

	public Image getHotImage();

	public ToolBar getParent();

	public bool getSelection();

	public String getToolTipText();

	public int getWidth();

	public bool isEnabled();

	override void releaseWidget();
	override void releaseHandle();
	void releaseImages();
	public void removeSelectionListener(SelectionListener listener);

	void resizeControl();
	void selectRadio();
	public void setControl(Control control);

	public void setEnabled(bool enabled);

	public void setDisabledImage(Image image);

	public void setHotImage(Image image);

	public override void setImage(Image image);

	bool setRadioSelection(bool value);
	public void setSelection(bool selected);

	public override void setText(String string);

	public void setToolTipText(String string);

	public void setWidth(int width);

	void updateImages(bool enabled);
	int widgetStyle();
	LRESULT wmCommandChild(int wParam, int lParam);
}

