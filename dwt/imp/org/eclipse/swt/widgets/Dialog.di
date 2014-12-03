// D import file generated from 'org\eclipse\swt\widgets\Dialog.d'
module org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Widget;
import java.lang.all;
public abstract class Dialog
{
	int style;
	Shell parent;
	String title;
	public this(Shell parent);

	public this(Shell parent, int style);

	protected void checkSubclass();

	void checkParent(Shell parent);
	static int checkStyle(Shell parent, int style);
	void error(int code);
	public Shell getParent();

	public int getStyle();

	public String getText();

	public void setText(String string);

}


