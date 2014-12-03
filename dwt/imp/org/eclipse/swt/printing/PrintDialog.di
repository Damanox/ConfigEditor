// D import file generated from 'org\eclipse\swt\printing\PrintDialog.d'
module org.eclipse.swt.printing.PrintDialog;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.printing.Printer;
import org.eclipse.swt.printing.PrinterData;
import java.lang.all;
public class PrintDialog : Dialog
{
	PrinterData printerData;
	int scope_ = PrinterData.ALL_PAGES;
	int startPage = 1;
	int endPage = 1;
	bool printToFile = false;
	public this(Shell parent);

	public this(Shell parent, int style);

	public void setPrinterData(PrinterData data);

	public PrinterData getPrinterData();

	public int getScope();

	public void setScope(int scope_);

	public int getStartPage();

	public void setStartPage(int startPage);

	public int getEndPage();

	public void setEndPage(int endPage);

	public bool getPrintToFile();

	public void setPrintToFile(bool printToFile);

	protected override void checkSubclass();

	public PrinterData open();

}

