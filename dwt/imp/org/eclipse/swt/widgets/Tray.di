// D import file generated from 'org\eclipse\swt\widgets\Tray.d'
module org.eclipse.swt.widgets.Tray;
import org.eclipse.swt.SWT;
import java.lang.System;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.TrayItem;
import java.lang.all;
public class Tray : Widget
{
	int itemCount;
	TrayItem[] items;
	this(Display display, int style);
	void createItem(TrayItem item, int index);
	void destroyItem(TrayItem item);
	public TrayItem getItem(int index);

	public int getItemCount();

	public TrayItem[] getItems();

	override void releaseChildren(bool destroy);
	override void releaseParent();
}

