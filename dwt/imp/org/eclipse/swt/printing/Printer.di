// D import file generated from 'org\eclipse\swt\printing\Printer.d'
module org.eclipse.swt.printing.Printer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.DeviceData;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.printing.PrinterData;
import java.lang.all;
public final class Printer : Device
{
	public HANDLE handle;

	PrinterData data;
	bool isGCCreated = false;
	mixin(gshared!"static StringT profile;");
	mixin(gshared!"static StringT appName;");
	mixin(gshared!"static StringT keyName;");
	mixin(sharedStaticThis!"{\x0a        profile = StrToTCHARs(0, \"PrinterPorts\", true); //$NON-NLS-1$\x0a        appName = StrToTCHARs(0, \"windows\", true); //$NON-NLS-1$\x0a        keyName = StrToTCHARs(0, \"device\", true); //$NON-NLS-1$\x0a    }");
	public static PrinterData[] getPrinterList();

	public static PrinterData getDefaultPrinterData();

	static DeviceData checkNull(PrinterData data);
	public this();

	public this(PrinterData data);

	protected override void create(DeviceData deviceData);

	public override HDC internal_new_GC(GCData data);

	public override void internal_dispose_GC(HDC hDC, GCData data);

	public bool startJob(String jobName);

	public void endJob();

	public void cancelJob();

	public bool startPage();

	public void endPage();

	public override Point getDPI();

	public override Rectangle getBounds();

	public override Rectangle getClientArea();

	public Rectangle computeTrim(int x, int y, int width, int height);

	public PrinterData getPrinterData();

	protected override void checkDevice();

	protected override void release();

	protected override void destroy();

}


