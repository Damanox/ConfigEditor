// D import file generated from 'org\eclipse\swt\widgets\DateTime.d'
module org.eclipse.swt.widgets.DateTime;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.TypedListener;
import java.lang.all;
public class DateTime : Composite
{
	alias Composite.computeSize computeSize;
	alias Composite.windowProc windowProc;
	bool ignoreSelection;
	SYSTEMTIME* lastSystemTime;
	SYSTEMTIME time;
	mixin(gshared!"static /+const+/ WNDPROC DateTimeProc;");
	mixin(gshared!"static const TCHAR[] DateTimeClass = OS.DATETIMEPICK_CLASS;");
	mixin(gshared!"static /+const+/ WNDPROC CalendarProc;");
	mixin(gshared!"static const TCHAR[] CalendarClass = OS.MONTHCAL_CLASS;");
	mixin(gshared!"private static bool static_this_completed = false;");
	private static void static_this();

	static const int MARGIN = 4;

	static const int MAX_DIGIT = 9;

	static const int MAX_DAY = 31;

	static const int MAX_12HOUR = 12;

	static const int MAX_24HOUR = 24;

	static const int MAX_MINUTE = 60;

	static const int MONTH_DAY_YEAR = 0;

	static const int DAY_MONTH_YEAR = 1;

	static const int YEAR_MONTH_DAY = 2;

	static const char SINGLE_QUOTE = '\'';

	static const char DAY_FORMAT_CONSTANT = 'd';

	static const char MONTH_FORMAT_CONSTANT = 'M';

	static const char YEAR_FORMAT_CONSTANT = 'y';

	static const char HOURS_FORMAT_CONSTANT = 'h';

	static const char MINUTES_FORMAT_CONSTANT = 'm';

	static const char SECONDS_FORMAT_CONSTANT = 's';

	static const char AMPM_FORMAT_CONSTANT = 't';

	static const int[] MONTH_NAMES = [OS.LOCALE_SMONTHNAME1, OS.LOCALE_SMONTHNAME2, OS.LOCALE_SMONTHNAME3, OS.LOCALE_SMONTHNAME4, OS.LOCALE_SMONTHNAME5, OS.LOCALE_SMONTHNAME6, OS.LOCALE_SMONTHNAME7, OS.LOCALE_SMONTHNAME8, OS.LOCALE_SMONTHNAME9, OS.LOCALE_SMONTHNAME10, OS.LOCALE_SMONTHNAME11, OS.LOCALE_SMONTHNAME12];

	public this(Composite parent, int style);

	public void addSelectionListener(SelectionListener listener);

	override int callWindowProc(HWND hwnd, int msg, int wParam, int lParam);
	static int checkStyle(int style);
	protected override void checkSubclass();

	public override Point computeSize(int wHint, int hHint, bool changed);

	override void createHandle();
	override int defaultBackground();
	String getComputeSizeString();
	String getCustomShortDateFormat();
	String getCustomShortTimeFormat();
	String getLongDateFormat();
	String getShortDateFormat();
	int getShortDateFormatOrdering();
	String getTimeFormat();
	bool is24HourTime();
	public int getDay();

	public int getHours();

	public int getMinutes();

	public int getMonth();

	override String getNameText();
	public int getSeconds();

	public int getYear();

	override void releaseWidget();
	public void removeSelectionListener(SelectionListener listener);

	public void setDate(int year, int month, int day);

	public void setDay(int day);

	public void setHours(int hours);

	public void setMinutes(int minutes);

	public void setMonth(int month);

	public void setSeconds(int seconds);

	public void setTime(int hours, int minutes, int seconds);

	public void setYear(int year);

	override int widgetStyle();
	override String windowClass();
	override int windowProc();
	override LRESULT wmNotifyChild(NMHDR* hdr, int wParam, int lParam);
	override LRESULT WM_TIMER(int wParam, int lParam);
}

