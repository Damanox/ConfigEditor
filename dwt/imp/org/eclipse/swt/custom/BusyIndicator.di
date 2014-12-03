// D import file generated from 'org\eclipse\swt\custom\BusyIndicator.d'
module org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import java.lang.all;
public class BusyIndicator
{
	static int nextBusyId = 1;

	static const String BUSYID_NAME = "SWT BusyIndicator";

	static const String BUSY_CURSOR = "SWT BusyIndicator Cursor";

	public static void showWhile(Display display, Runnable runnable);

}

