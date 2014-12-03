// D import file generated from 'org\eclipse\swt\widgets\DirectoryDialog.d'
module org.eclipse.swt.widgets.DirectoryDialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.C;
import java.lang.all;
public class DirectoryDialog : Dialog
{
	static String message = "";

	static String filterPath = "";

	static String directoryPath;

	public this(Shell parent);

	public this(Shell parent, int style);

	extern (Windows) static int BrowseCallbackProc(HWND hwnd, uint uMsg, int lParam, int lpData);

	public String getFilterPath();

	public String getMessage();

	public String open();

	public void setFilterPath(String string);

	public void setMessage(String string);

}

