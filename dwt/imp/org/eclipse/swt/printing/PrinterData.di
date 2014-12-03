// D import file generated from 'org\eclipse\swt\printing\PrinterData.d'
module org.eclipse.swt.printing.PrinterData;
import org.eclipse.swt.graphics.DeviceData;
import java.lang.all;
public final class PrinterData : DeviceData
{
	public String driver;

	public String name;

	public int scope_ = ALL_PAGES;

	public int startPage = 0;

	public int endPage = 0;

	public bool printToFile = false;

	public String fileName;

	public int copyCount = 1;

	public bool collate = false;

	public static const int ALL_PAGES = 0;


	public static const int PAGE_RANGE = 1;


	public static const int SELECTION = 2;


	byte[] otherData;
	public this();

	public this(String driver, String name);

	public override String toString();

}


