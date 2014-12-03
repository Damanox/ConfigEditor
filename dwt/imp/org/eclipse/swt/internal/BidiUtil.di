// D import file generated from 'org\eclipse\swt\internal\BidiUtil.d'
module org.eclipse.swt.internal.BidiUtil;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Control;
import java.lang.all;
import java.lang.Runnable;
public class BidiUtil
{
	public static const int KEYBOARD_NON_BIDI = 0;


	public static const int KEYBOARD_BIDI = 1;


	static int isBidiPlatform_ = -1;

	public static const int CLASSIN = 1;


	public static const int LINKBEFORE = 2;


	public static const int LINKAFTER = 4;


	static Runnable[HWND] languageMap;

	static Runnable[HWND] keyMap;

	static WNDPROC[HWND] oldProcMap;

	static const String CLASS_NAME = "org.eclipse.swt.internal.BidiUtil";

	static const int GCP_REORDER = 2;

	static const int GCP_GLYPHSHAPE = 16;

	static const int GCP_LIGATE = 32;

	static const int GCP_CLASSIN = 524288;

	static const byte GCPCLASS_ARABIC = 2;

	static const byte GCPCLASS_HEBREW = 2;

	static const byte GCPCLASS_LOCALNUMBER = 4;

	static const byte GCPCLASS_LATINNUMBER = 5;

	static const int GCPGLYPH_LINKBEFORE = 32768;

	static const int GCPGLYPH_LINKAFTER = 16384;

	static const int ETO_CLIPPED = 4;

	static const int ETO_GLYPH_INDEX = 16;

	static const int LANG_ARABIC = 1;

	static const int LANG_HEBREW = 13;

	static const String CD_PG_HEBREW = "1255";

	static const String CD_PG_ARABIC = "1256";

	static const int HKL_NEXT = 1;

	static const int HKL_PREV = 0;

	public static const int CLASS_HEBREW = GCPCLASS_ARABIC;


	public static const int CLASS_ARABIC = GCPCLASS_HEBREW;


	public static const int CLASS_LOCALNUMBER = GCPCLASS_LOCALNUMBER;


	public static const int CLASS_LATINNUMBER = GCPCLASS_LATINNUMBER;


	public static const int REORDER = GCP_REORDER;


	public static const int LIGATE = GCP_LIGATE;


	public static const int GLYPHSHAPE = GCP_GLYPHSHAPE;


	public static void addLanguageListener(HWND hwnd, Runnable runnable);

	public static void addLanguageListener(Control control, Runnable runnable);

	extern (Windows) static int EnumSystemLanguageGroupsProc(uint lpLangGrpId, wchar* lpLangGrpIdString, wchar* lpLangGrpName, uint options, int lParam);

	public static void drawGlyphs(GC gc, wchar[] renderBuffer, int[] renderDx, int x, int y);

	public static String getRenderInfo(GC gc, String text, int[] order, byte[] classBuffer, int[] dx, int flags, int[] offsets);

	public static void getOrderInfo(GC gc, String text, int[] order, byte[] classBuffer, int flags, int[] offsets);

	public static int getFontBidiAttributes(GC gc);

	public static int getKeyboardLanguage();

	static void*[] getKeyboardLanguageList();
	public static bool isBidiPlatform();

	public static bool isKeyboardBidi();

	public static void removeLanguageListener(HWND hwnd);

	public static void removeLanguageListener(Control control);

	public static void setKeyboardLanguage(int language);

	public static bool setOrientation(HWND hwnd, int orientation);

	public static bool setOrientation(Control control, int orientation);

	static void subclass(HWND hwnd);
	static void reverse(wchar[] charArray);
	static void reverse(int[] intArray);
	static void translateOrder(int[] orderArray, int glyphCount, bool isRightOriented);
	static void unsubclass(HWND hwnd);
	extern (Windows) static int windowProc(HWND hwnd, uint msg, uint wParam, int lParam);

}

