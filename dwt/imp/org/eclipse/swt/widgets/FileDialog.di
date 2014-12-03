// D import file generated from 'org\eclipse\swt\widgets\FileDialog.d'
module org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Display;
import java.lang.all;
public class FileDialog : Dialog
{
	String[] filterNames;
	String[] filterExtensions;
	String[] fileNames;
	String filterPath = "";
	String fileName = "";
	int filterIndex = 0;
	bool overwrite = false;
	static const String FILTER = "*.*";

	static int BUFFER_SIZE = 1024 * 32;

	mixin(gshared!"static bool USE_HOOK = true;");
	mixin(sharedStaticThis!"{\x0a        /*\x0a        *  Feature in Vista.  When OFN_ENABLEHOOK is set in the\x0a        *  save or open file dialog,  Vista uses the old XP look\x0a        *  and feel.  OFN_ENABLEHOOK is used to grow the file\x0a        *  name buffer in a multi-select file dialog.  The fix\x0a        *  is to only use OFN_ENABLEHOOK when the buffer has\x0a        *  overrun.\x0a        */\x0a        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION (6, 0)) {\x0a            USE_HOOK = false;\x0a        }\x0a    }");
	public this(Shell parent);

	public this(Shell parent, int style);

	public String getFileName();

	public String[] getFileNames();

	public String[] getFilterExtensions();

	public int getFilterIndex();

	public String[] getFilterNames();

	public String getFilterPath();

	public bool getOverwrite();

	private extern (Windows) static uint OFNHookProc(HWND hdlg, uint uiMsg, uint wParam, int lParam);


	public String open();

	public void setFileName(String string);

	public void setFilterExtensions(String[] extensions);

	public void setFilterIndex(int index);

	public void setFilterNames(String[] names);

	public void setFilterPath(String string);

	public void setOverwrite(bool overwrite);

}

