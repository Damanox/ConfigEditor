// D import file generated from 'org\eclipse\swt\custom\PopupList.d'
module org.eclipse.swt.custom.PopupList;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
public class PopupList
{
	Shell shell;
	List list;
	int minimumWidth;
	public this(Shell parent);

	public this(Shell parent, int style);

	private static int checkStyle(int style);

	public Font getFont();

	public String[] getItems();

	public int getMinimumWidth();

	public String open(Rectangle rect);

	public void select(String string);

	public void setFont(Font font);

	public void setItems(String[] strings);

	public void setMinimumWidth(int width);

}

