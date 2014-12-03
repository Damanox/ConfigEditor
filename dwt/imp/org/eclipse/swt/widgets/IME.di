// D import file generated from 'org\eclipse\swt\widgets\IME.d'
module org.eclipse.swt.widgets.IME;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.WINTYPES;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Display;
import java.lang.all;
import java.nonstandard.UnsafeUtf;
public class IME : Widget
{
	Canvas parent;
	int caretOffset;
	int startOffset;
	int commitCount;
	String text;
	int[] ranges;
	TextStyle[] styles;
	mixin(gshared!"static const int WM_MSIME_MOUSE;");
	mixin(gshared!"static byte [16] IID_ITfInputProcessorProfiles;");
	mixin(gshared!"static byte [16] IID_ITfDisplayAttributeProvider;");
	mixin(gshared!"static byte [16] CLSID_TF_InputProcessorProfiles;");
	mixin(gshared!"static byte [16] GUID_TFCAT_TIP_KEYBOARD;");
	mixin(sharedStaticThis!"{\x0a        WM_MSIME_MOUSE = OS.RegisterWindowMessage (StrToTCHARz (\"MSIMEMouseOperation\"));\x0a\x0a        OS.IIDFromString (\"{1F02B6C5-7842-4EE6-8A0B-9A24183A95CA}\\0\"w.ptr, IID_ITfInputProcessorProfiles.ptr);\x0a        OS.IIDFromString (\"{fee47777-163c-4769-996a-6e9c50ad8f54}\\0\"w.ptr, IID_ITfDisplayAttributeProvider.ptr);\x0a        OS.IIDFromString (\"{33C53A50-F456-4884-B049-85FD643ECFED}\\0\"w.ptr, CLSID_TF_InputProcessorProfiles.ptr);\x0a        OS.IIDFromString (\"{34745C63-B2F0-4784-8B67-5E12C8701A31}\\0\"w.ptr, GUID_TFCAT_TIP_KEYBOARD.ptr);\x0a    }");
	static const int UNDERLINE_IME_DOT = 1 << 16;

	static const int UNDERLINE_IME_DASH = 2 << 16;

	static const int UNDERLINE_IME_THICK = 3 << 16;

	this();
	public this(Canvas parent, int style);

	void createWidget();
	public int getCaretOffset();

	public int getCommitCount();

	public int getCompositionOffset();

	TF_DISPLAYATTRIBUTE* getDisplayAttribute(short langid, int attInfo);
	public int[] getRanges();

	public TextStyle[] getStyles();

	public String getText();

	public bool getWideCaret();

	bool isInlineEnabled();
	override void releaseParent();
	override void releaseWidget();
	public void setCompositionOffset(int offset);

	LRESULT WM_IME_COMPOSITION(int wParam, int lParam);
	LRESULT WM_IME_COMPOSITION_START(int wParam, int lParam);
	LRESULT WM_IME_ENDCOMPOSITION(int wParam, int lParam);
	LRESULT WM_KILLFOCUS(int wParam, int lParam);
	LRESULT WM_LBUTTONDOWN(int wParam, int lParam);
}

