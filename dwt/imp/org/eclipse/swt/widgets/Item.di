// D import file generated from 'org\eclipse\swt\widgets\Item.d'
module org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Image;
import java.lang.all;
public abstract class Item : Widget
{
	String text;
	Image image;
	public this(Widget parent, int style);

	public this(Widget parent, int style, int index);

	protected override void checkSubclass();

	public Image getImage();

	override String getNameText();
	public String getText();

	override void releaseWidget();
	public void setImage(Image image);

	public void setText(String string);

}


