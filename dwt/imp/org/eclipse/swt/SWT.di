// D import file generated from 'org\eclipse\swt\SWT.d'
module org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.Platform;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import java.lang.all;
version (build)
{
	pragma (link, "advapi32");
	pragma (link, "comctl32");
	pragma (link, "comdlg32");
	pragma (link, "gdi32");
	pragma (link, "kernel32");
	pragma (link, "shell32");
	pragma (link, "ole32");
	pragma (link, "oleaut32");
	pragma (link, "olepro32");
	pragma (link, "oleacc");
	pragma (link, "user32");
	pragma (link, "usp10");
	pragma (link, "msimg32");
	pragma (link, "opengl32");
	pragma (link, "shlwapi");
}
pragma (lib, "advapi32.lib");
pragma (lib, "comctl32.lib");
pragma (lib, "comdlg32.lib");
pragma (lib, "gdi32.lib");
pragma (lib, "kernel32.lib");
pragma (lib, "shell32.lib");
pragma (lib, "ole32.lib");
pragma (lib, "oleaut32.lib");
pragma (lib, "olepro32.lib");
pragma (lib, "oleacc.lib");
pragma (lib, "user32.lib");
pragma (lib, "usp10.lib");
pragma (lib, "msimg32.lib");
pragma (lib, "opengl32.lib");
pragma (lib, "shlwapi.lib");
public class SWT
{
	public static const int None = 0;


	public static const int KeyDown = 1;


	public static const int KeyUp = 2;


	public static const int MouseDown = 3;


	public static const int MouseUp = 4;


	public static const int MouseMove = 5;


	public static const int MouseEnter = 6;


	public static const int MouseExit = 7;


	public static const int MouseDoubleClick = 8;


	public static const int Paint = 9;


	public static const int Move = 10;


	public static const int Resize = 11;


	public static const int Dispose = 12;


	public static const int Selection = 13;


	public static const int DefaultSelection = 14;


	public static const int FocusIn = 15;


	public static const int FocusOut = 16;


	public static const int Expand = 17;


	public static const int Collapse = 18;


	public static const int Iconify = 19;


	public static const int Deiconify = 20;


	public static const int Close = 21;


	public static const int Show = 22;


	public static const int Hide = 23;


	public static const int Modify = 24;


	public static const int Verify = 25;


	public static const int Activate = 26;


	public static const int Deactivate = 27;


	public static const int Help = 28;


	public static const int DragDetect = 29;


	public static const int Arm = 30;


	public static const int Traverse = 31;


	public static const int MouseHover = 32;


	public static const int HardKeyDown = 33;


	public static const int HardKeyUp = 34;


	public static const int MenuDetect = 35;


	public static const int SetData = 36;


	public static const int MouseWheel = 37;


	public static const int Settings = 39;


	public static const int EraseItem = 40;


	public static const int MeasureItem = 41;


	public static const int PaintItem = 42;


	public static const int ImeComposition = 43;


	public static const int COMPOSITION_CHANGED = 1;


	public static const int COMPOSITION_OFFSET = 2;


	public static const int COMPOSITION_SELECTION = 3;


	public static const int DRAG = 1;


	public static const int SELECTED = 1 << 1;


	public static const int FOCUSED = 1 << 2;


	public static const int BACKGROUND = 1 << 3;


	public static const int FOREGROUND = 1 << 4;


	public static const int HOT = 1 << 5;


	public static const int TRAVERSE_NONE = 0;


	public static const int TRAVERSE_ESCAPE = 1 << 1;


	public static const int TRAVERSE_RETURN = 1 << 2;


	public static const int TRAVERSE_TAB_PREVIOUS = 1 << 3;


	public static const int TRAVERSE_TAB_NEXT = 1 << 4;


	public static const int TRAVERSE_ARROW_PREVIOUS = 1 << 5;


	public static const int TRAVERSE_ARROW_NEXT = 1 << 6;


	public static const int TRAVERSE_MNEMONIC = 1 << 7;


	public static const int TRAVERSE_PAGE_PREVIOUS = 1 << 8;


	public static const int TRAVERSE_PAGE_NEXT = 1 << 9;


	public static const int NONE = 0;


	public static const int NULL = 0;


	public static const int DEFAULT = -1;


	public static const int OFF = 0;


	public static const int ON = 1;


	public static const int LOW = 1;


	public static const int HIGH = 2;


	public static const int BAR = 1 << 1;


	public static const int DROP_DOWN = 1 << 2;


	public static const int POP_UP = 1 << 3;


	public static const int SEPARATOR = 1 << 1;


	public static const int TOGGLE = 1 << 1;


	public static const int ARROW = 1 << 2;


	public static const int PUSH = 1 << 3;


	public static const int RADIO = 1 << 4;


	public static const int CHECK = 1 << 5;


	public static const int CASCADE = 1 << 6;


	public static const int MULTI = 1 << 1;


	public static const int SINGLE = 1 << 2;


	public static const int READ_ONLY = 1 << 3;


	public static const int WRAP = 1 << 6;


	public static const int SEARCH = 1 << 7;


	public static const int SIMPLE = 1 << 6;


	public static const int PASSWORD = 1 << 22;


	public static const int SHADOW_IN = 1 << 2;


	public static const int SHADOW_OUT = 1 << 3;


	public static const int SHADOW_ETCHED_IN = 1 << 4;


	public static const int SHADOW_ETCHED_OUT = 1 << 6;


	public static const int SHADOW_NONE = 1 << 5;


	public static const int INDETERMINATE = 1 << 1;


	public static const int TOOL = 1 << 2;


	public static const int NO_TRIM = 1 << 3;


	public static const int RESIZE = 1 << 4;


	public static const int TITLE = 1 << 5;


	public static const int CLOSE = 1 << 6;


	public static const int MENU = CLOSE;


	public static const int MIN = 1 << 7;


	public static const int MAX = 1 << 10;


	public static const int H_SCROLL = 1 << 8;


	public static const int V_SCROLL = 1 << 9;


	public static const int NO_SCROLL = 1 << 4;


	public static const int BORDER = 1 << 11;


	public static const int CLIP_CHILDREN = 1 << 12;


	public static const int CLIP_SIBLINGS = 1 << 13;


	public static const int ON_TOP = 1 << 14;


	public static const int SHELL_TRIM = CLOSE | TITLE | MIN | MAX | RESIZE;


	public static const int DIALOG_TRIM = TITLE | CLOSE | BORDER;


	public static const int MODELESS = 0;


	public static const int PRIMARY_MODAL = 1 << 15;


	public static const int APPLICATION_MODAL = 1 << 16;


	public static const int SYSTEM_MODAL = 1 << 17;


	public static const int HIDE_SELECTION = 1 << 15;


	public static const int FULL_SELECTION = 1 << 16;


	public static const int FLAT = 1 << 23;


	public static const int SMOOTH = 1 << 16;


	public static const int NO_BACKGROUND = 1 << 18;


	public static const int NO_FOCUS = 1 << 19;


	public static const int NO_REDRAW_RESIZE = 1 << 20;


	public static const int NO_MERGE_PAINTS = 1 << 21;


	public static const int NO_RADIO_GROUP = 1 << 22;


	public static const int LEFT_TO_RIGHT = 1 << 25;


	public static const int RIGHT_TO_LEFT = 1 << 26;


	public static const int MIRRORED = 1 << 27;


	public static const int EMBEDDED = 1 << 24;


	public static const int VIRTUAL = 1 << 28;


	public static const int DOUBLE_BUFFERED = 1 << 29;


	public static const int TRANSPARENT = 1 << 30;


	public static const int UP = 1 << 7;


	public static const int UNDERLINE_SINGLE = 0;


	public static const int UNDERLINE_DOUBLE = 1;


	public static const int UNDERLINE_ERROR = 2;


	public static const int UNDERLINE_SQUIGGLE = 3;


	public static const int BORDER_SOLID = 1;


	public static const int BORDER_DASH = 2;


	public static const int BORDER_DOT = 4;


	public static const int TOP = UP;


	public static const int DOWN = 1 << 10;


	public static const int BOTTOM = DOWN;


	public static const int LEAD = 1 << 14;


	public static const int LEFT = LEAD;


	public static const int TRAIL = 1 << 17;


	public static const int RIGHT = TRAIL;


	public static const int CENTER = 1 << 24;


	public static const int HORIZONTAL = 1 << 8;


	public static const int VERTICAL = 1 << 9;


	public static const int DATE = 1 << 5;


	public static const int TIME = 1 << 7;


	public static const int CALENDAR = 1 << 10;


	public static const int SHORT = 1 << 15;


	public static const int MEDIUM = 1 << 16;


	public static const int LONG = 1 << 28;


	public static const int MOZILLA = 1 << 15;


	public static const int BALLOON = 1 << 12;


	public static const int BEGINNING = 1;


	public static const int FILL = 4;


	public static const int DBCS = 1 << 1;


	public static const int ALPHA = 1 << 2;


	public static const int NATIVE = 1 << 3;


	public static const int PHONETIC = 1 << 4;


	public static const int ROMAN = 1 << 5;


	public static const char BS = '\x08';


	public static const char CR = '\x0d';


	public static const char DEL = 127;


	public static const char ESC = 27;


	public static const char LF = '\x0a';


	public static const char TAB = '\x09';


	public static const int ALT = 1 << 16;


	public static const int SHIFT = 1 << 17;


	public static const int CTRL = 1 << 18;


	public static const int CONTROL = CTRL;


	public static const int COMMAND = 1 << 22;


	public static const int MODIFIER_MASK = ALT | SHIFT | CTRL | COMMAND;


	public static const int BUTTON1 = 1 << 19;


	public static const int BUTTON2 = 1 << 20;


	public static const int BUTTON3 = 1 << 21;


	public static const int BUTTON4 = 1 << 23;


	public static const int BUTTON5 = 1 << 25;


	public static const int BUTTON_MASK = BUTTON1 | BUTTON2 | BUTTON3 | BUTTON4 | BUTTON5;


	public static const int MOD1 = CONTROL;


	public static const int MOD2 = SHIFT;


	public static const int MOD3 = ALT;


	public static const int MOD4 = 0;


	public static const int SCROLL_LINE = 1;


	public static const int SCROLL_PAGE = 2;


	public static const int KEYCODE_BIT = 1 << 24;


	public static const int KEY_MASK = KEYCODE_BIT + 65535;


	public static const int ARROW_UP = KEYCODE_BIT + 1;


	public static const int ARROW_DOWN = KEYCODE_BIT + 2;


	public static const int ARROW_LEFT = KEYCODE_BIT + 3;


	public static const int ARROW_RIGHT = KEYCODE_BIT + 4;


	public static const int PAGE_UP = KEYCODE_BIT + 5;


	public static const int PAGE_DOWN = KEYCODE_BIT + 6;


	public static const int HOME = KEYCODE_BIT + 7;


	public static const int END = KEYCODE_BIT + 8;


	public static const int INSERT = KEYCODE_BIT + 9;


	public static const int F1 = KEYCODE_BIT + 10;


	public static const int F2 = KEYCODE_BIT + 11;


	public static const int F3 = KEYCODE_BIT + 12;


	public static const int F4 = KEYCODE_BIT + 13;


	public static const int F5 = KEYCODE_BIT + 14;


	public static const int F6 = KEYCODE_BIT + 15;


	public static const int F7 = KEYCODE_BIT + 16;


	public static const int F8 = KEYCODE_BIT + 17;


	public static const int F9 = KEYCODE_BIT + 18;


	public static const int F10 = KEYCODE_BIT + 19;


	public static const int F11 = KEYCODE_BIT + 20;


	public static const int F12 = KEYCODE_BIT + 21;


	public static const int F13 = KEYCODE_BIT + 22;


	public static const int F14 = KEYCODE_BIT + 23;


	public static const int F15 = KEYCODE_BIT + 24;


	public static const int KEYPAD_MULTIPLY = KEYCODE_BIT + 42;


	public static const int KEYPAD_ADD = KEYCODE_BIT + 43;


	public static const int KEYPAD_SUBTRACT = KEYCODE_BIT + 45;


	public static const int KEYPAD_DECIMAL = KEYCODE_BIT + 46;


	public static const int KEYPAD_DIVIDE = KEYCODE_BIT + 47;


	public static const int KEYPAD_0 = KEYCODE_BIT + 48;


	public static const int KEYPAD_1 = KEYCODE_BIT + 49;


	public static const int KEYPAD_2 = KEYCODE_BIT + 50;


	public static const int KEYPAD_3 = KEYCODE_BIT + 51;


	public static const int KEYPAD_4 = KEYCODE_BIT + 52;


	public static const int KEYPAD_5 = KEYCODE_BIT + 53;


	public static const int KEYPAD_6 = KEYCODE_BIT + 54;


	public static const int KEYPAD_7 = KEYCODE_BIT + 55;


	public static const int KEYPAD_8 = KEYCODE_BIT + 56;


	public static const int KEYPAD_9 = KEYCODE_BIT + 57;


	public static const int KEYPAD_EQUAL = KEYCODE_BIT + 61;


	public static const int KEYPAD_CR = KEYCODE_BIT + 80;


	public static const int HELP = KEYCODE_BIT + 81;


	public static const int CAPS_LOCK = KEYCODE_BIT + 82;


	public static const int NUM_LOCK = KEYCODE_BIT + 83;


	public static const int SCROLL_LOCK = KEYCODE_BIT + 84;


	public static const int PAUSE = KEYCODE_BIT + 85;


	public static const int BREAK = KEYCODE_BIT + 86;


	public static const int PRINT_SCREEN = KEYCODE_BIT + 87;


	public static const int ICON_ERROR = 1;


	public static const int ICON_INFORMATION = 1 << 1;


	public static const int ICON_QUESTION = 1 << 2;


	public static const int ICON_WARNING = 1 << 3;


	public static const int ICON_WORKING = 1 << 4;


	public static const int OK = 1 << 5;


	public static const int YES = 1 << 6;


	public static const int NO = 1 << 7;


	public static const int CANCEL = 1 << 8;


	public static const int ABORT = 1 << 9;


	public static const int RETRY = 1 << 10;


	public static const int IGNORE = 1 << 11;


	public static const int OPEN = 1 << 12;


	public static const int SAVE = 1 << 13;


	public static const int INHERIT_NONE = 0;


	public static const int INHERIT_DEFAULT = 1;


	public static const int INHERIT_FORCE = 2;


	public static const int COLOR_WHITE = 1;


	public static const int COLOR_BLACK = 2;


	public static const int COLOR_RED = 3;


	public static const int COLOR_DARK_RED = 4;


	public static const int COLOR_GREEN = 5;


	public static const int COLOR_DARK_GREEN = 6;


	public static const int COLOR_YELLOW = 7;


	public static const int COLOR_DARK_YELLOW = 8;


	public static const int COLOR_BLUE = 9;


	public static const int COLOR_DARK_BLUE = 10;


	public static const int COLOR_MAGENTA = 11;


	public static const int COLOR_DARK_MAGENTA = 12;


	public static const int COLOR_CYAN = 13;


	public static const int COLOR_DARK_CYAN = 14;


	public static const int COLOR_GRAY = 15;


	public static const int COLOR_DARK_GRAY = 16;


	public static const int COLOR_WIDGET_DARK_SHADOW = 17;


	public static const int COLOR_WIDGET_NORMAL_SHADOW = 18;


	public static const int COLOR_WIDGET_LIGHT_SHADOW = 19;


	public static const int COLOR_WIDGET_HIGHLIGHT_SHADOW = 20;


	public static const int COLOR_WIDGET_FOREGROUND = 21;


	public static const int COLOR_WIDGET_BACKGROUND = 22;


	public static const int COLOR_WIDGET_BORDER = 23;


	public static const int COLOR_LIST_FOREGROUND = 24;


	public static const int COLOR_LIST_BACKGROUND = 25;


	public static const int COLOR_LIST_SELECTION = 26;


	public static const int COLOR_LIST_SELECTION_TEXT = 27;


	public static const int COLOR_INFO_FOREGROUND = 28;


	public static const int COLOR_INFO_BACKGROUND = 29;


	public static const int COLOR_TITLE_FOREGROUND = 30;


	public static const int COLOR_TITLE_BACKGROUND = 31;


	public static const int COLOR_TITLE_BACKGROUND_GRADIENT = 32;


	public static const int COLOR_TITLE_INACTIVE_FOREGROUND = 33;


	public static const int COLOR_TITLE_INACTIVE_BACKGROUND = 34;


	public static const int COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT = 35;


	public static const int DRAW_TRANSPARENT = 1 << 0;


	public static const int DRAW_DELIMITER = 1 << 1;


	public static const int DRAW_TAB = 1 << 2;


	public static const int DRAW_MNEMONIC = 1 << 3;


	public static const int DELIMITER_SELECTION = 1 << 17;


	public static const int LAST_LINE_SELECTION = 1 << 20;


	public static const int ERROR_UNSPECIFIED = 1;


	public static const int ERROR_NO_HANDLES = 2;


	public static const int ERROR_NO_MORE_CALLBACKS = 3;


	public static const int ERROR_NULL_ARGUMENT = 4;


	public static const int ERROR_INVALID_ARGUMENT = 5;


	public static const int ERROR_INVALID_RANGE = 6;


	public static const int ERROR_CANNOT_BE_ZERO = 7;


	public static const int ERROR_CANNOT_GET_ITEM = 8;


	public static const int ERROR_CANNOT_GET_SELECTION = 9;


	public static const int ERROR_CANNOT_INVERT_MATRIX = 10;


	public static const int ERROR_CANNOT_GET_ITEM_HEIGHT = 11;


	public static const int ERROR_CANNOT_GET_TEXT = 12;


	public static const int ERROR_CANNOT_SET_TEXT = 13;


	public static const int ERROR_ITEM_NOT_ADDED = 14;


	public static const int ERROR_ITEM_NOT_REMOVED = 15;


	public static const int ERROR_NO_GRAPHICS_LIBRARY = 16;


	public static const int ERROR_NOT_IMPLEMENTED = 20;


	public static const int ERROR_MENU_NOT_DROP_DOWN = 21;


	public static const int ERROR_THREAD_INVALID_ACCESS = 22;


	public static const int ERROR_WIDGET_DISPOSED = 24;


	public static const int ERROR_MENUITEM_NOT_CASCADE = 27;


	public static const int ERROR_CANNOT_SET_SELECTION = 28;


	public static const int ERROR_CANNOT_SET_MENU = 29;


	public static const int ERROR_CANNOT_SET_ENABLED = 30;


	public static const int ERROR_CANNOT_GET_ENABLED = 31;


	public static const int ERROR_INVALID_PARENT = 32;


	public static const int ERROR_MENU_NOT_BAR = 33;


	public static const int ERROR_CANNOT_GET_COUNT = 36;


	public static const int ERROR_MENU_NOT_POP_UP = 37;


	public static const int ERROR_UNSUPPORTED_DEPTH = 38;


	public static const int ERROR_IO = 39;


	public static const int ERROR_INVALID_IMAGE = 40;


	public static const int ERROR_UNSUPPORTED_FORMAT = 42;


	public static const int ERROR_INVALID_SUBCLASS = 43;


	public static const int ERROR_GRAPHIC_DISPOSED = 44;


	public static const int ERROR_DEVICE_DISPOSED = 45;


	public static const int ERROR_FAILED_EXEC = 46;


	public static const int ERROR_FAILED_LOAD_LIBRARY = 47;


	public static const int ERROR_INVALID_FONT = 48;


	public static const int BITMAP = 0;


	public static const int ICON = 1;


	public static const int IMAGE_COPY = 0;


	public static const int IMAGE_DISABLE = 1;


	public static const int IMAGE_GRAY = 2;


	public static const int ERROR = 1;


	public static const int PAUSED = 1 << 2;


	public static const int NORMAL = 0;


	public static const int BOLD = 1 << 0;


	public static const int ITALIC = 1 << 1;


	public static const int CURSOR_ARROW = 0;


	public static const int CURSOR_WAIT = 1;


	public static const int CURSOR_CROSS = 2;


	public static const int CURSOR_APPSTARTING = 3;


	public static const int CURSOR_HELP = 4;


	public static const int CURSOR_SIZEALL = 5;


	public static const int CURSOR_SIZENESW = 6;


	public static const int CURSOR_SIZENS = 7;


	public static const int CURSOR_SIZENWSE = 8;


	public static const int CURSOR_SIZEWE = 9;


	public static const int CURSOR_SIZEN = 10;


	public static const int CURSOR_SIZES = 11;


	public static const int CURSOR_SIZEE = 12;


	public static const int CURSOR_SIZEW = 13;


	public static const int CURSOR_SIZENE = 14;


	public static const int CURSOR_SIZESE = 15;


	public static const int CURSOR_SIZESW = 16;


	public static const int CURSOR_SIZENW = 17;


	public static const int CURSOR_UPARROW = 18;


	public static const int CURSOR_IBEAM = 19;


	public static const int CURSOR_NO = 20;


	public static const int CURSOR_HAND = 21;


	public static const int CAP_FLAT = 1;


	public static const int CAP_ROUND = 2;


	public static const int CAP_SQUARE = 3;


	public static const int JOIN_MITER = 1;


	public static const int JOIN_ROUND = 2;


	public static const int JOIN_BEVEL = 3;


	public static const int LINE_SOLID = 1;


	public static const int LINE_DASH = 2;


	public static const int LINE_DOT = 3;


	public static const int LINE_DASHDOT = 4;


	public static const int LINE_DASHDOTDOT = 5;


	public static const int LINE_CUSTOM = 6;


	public static const int PATH_MOVE_TO = 1;


	public static const int PATH_LINE_TO = 2;


	public static const int PATH_QUAD_TO = 3;


	public static const int PATH_CUBIC_TO = 4;


	public static const int PATH_CLOSE = 5;


	public static const int FILL_EVEN_ODD = 1;


	public static const int FILL_WINDING = 2;


	public static const int IMAGE_UNDEFINED = -1;


	public static const int IMAGE_BMP = 0;


	public static const int IMAGE_BMP_RLE = 1;


	public static const int IMAGE_GIF = 2;


	public static const int IMAGE_ICO = 3;


	public static const int IMAGE_JPEG = 4;


	public static const int IMAGE_PNG = 5;


	public static const int IMAGE_TIFF = 6;


	public static const int IMAGE_OS2_BMP = 7;


	public static const int DM_UNSPECIFIED = 0;


	public static const int DM_FILL_NONE = 1;


	public static const int DM_FILL_BACKGROUND = 2;


	public static const int DM_FILL_PREVIOUS = 3;


	public static const int TRANSPARENCY_NONE = 0;


	public static const int TRANSPARENCY_ALPHA = 1 << 0;


	public static const int TRANSPARENCY_MASK = 1 << 1;


	public static const int TRANSPARENCY_PIXEL = 1 << 2;


	public static const int MOVEMENT_CHAR = 1 << 0;


	public static const int MOVEMENT_CLUSTER = 1 << 1;


	public static const int MOVEMENT_WORD = 1 << 2;


	public static const int MOVEMENT_WORD_END = 1 << 3;


	public static const int MOVEMENT_WORD_START = 1 << 4;


	static String findErrorText(int code);
	public static String getMessage(String key);

	public static String getPlatform();

	public static int getVersion();

	public static void error(String file, long line, int code);

	public static void error(int code);

	public static void error(int code, Exception throwable);

	public static void error(int code, Exception throwable, String detail);

}

