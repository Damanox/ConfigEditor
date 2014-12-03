// D import file generated from 'org\eclipse\swt\widgets\TabItem.d'
module org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.widgets.Control;
import java.lang.all;
public class TabItem : Item
{
	TabFolder parent;
	Control control;
	String toolTipText;
	public this(TabFolder parent, int style);

	public this(TabFolder parent, int style, int index);

	void _setText(int index, String string);
	protected override void checkSubclass();

	override void destroyWidget();
	public Control getControl();

	public Rectangle getBounds();

	public TabFolder getParent();

	public String getToolTipText();

	override void releaseHandle();
	override void releaseParent();
	override void releaseWidget();
	public void setControl(Control control);

	public override void setImage(Image image);

	public override void setText(String string);

	public void setToolTipText(String string);

}

