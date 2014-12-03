// D import file generated from 'org\eclipse\swt\widgets\MessageBox.d'
module org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Display;
import java.lang.all;
public class MessageBox : Dialog
{
	alias Dialog.checkStyle checkStyle;
	String message = "";
	private bool allowNullParent = false;

	public this(Shell parent);

	public this(Shell parent, int style);

	public this(int style);

	override void checkParent(Shell parent);
	static int checkStyle(int style);
	public String getMessage();

	public int open();

	public void setMessage(String string);

	public static int showMessageBox(String str, String title, Shell shell, int style);

	public static int showInfo(String str, String title = null, Shell shell = null);

	alias showInfo showInformation;
	public static int showWarning(String str, String title = null, Shell shell = null);

	public static int showError(String str, String title = null, Shell shell = null);

}

