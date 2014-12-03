// D import file generated from 'org\eclipse\swt\dnd\DND.d'
module org.eclipse.swt.dnd.DND;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import java.lang.all;
public class DND
{
	public static const int CLIPBOARD = 1 << 0;


	public static const int SELECTION_CLIPBOARD = 1 << 1;


	public static const int DROP_NONE = 0;


	public static const int DROP_COPY = 1 << 0;


	public static const int DROP_MOVE = 1 << 1;


	public static const int DROP_LINK = 1 << 2;


	public static const int DROP_TARGET_MOVE = 1 << 3;


	public static const int DROP_DEFAULT = 1 << 4;


	public static const int DragEnd = 2000;


	public static const int DragSetData = 2001;


	public static const int DragEnter = 2002;


	public static const int DragLeave = 2003;


	public static const int DragOver = 2004;


	public static const int DragOperationChanged = 2005;


	public static const int Drop = 2006;


	public static const int DropAccept = 2007;


	public static const int DragStart = 2008;


	public static const int FEEDBACK_NONE = 0;


	public static const int FEEDBACK_SELECT = 1;


	public static const int FEEDBACK_INSERT_BEFORE = 2;


	public static const int FEEDBACK_INSERT_AFTER = 4;


	public static const int FEEDBACK_SCROLL = 8;


	public static const int FEEDBACK_EXPAND = 16;


	public static const int ERROR_CANNOT_INIT_DRAG = 2000;


	public static const int ERROR_CANNOT_INIT_DROP = 2001;


	public static const int ERROR_CANNOT_SET_CLIPBOARD = 2002;


	public static const int ERROR_INVALID_DATA = 2003;


	public static const String DROP_TARGET_KEY = "DropTarget";


	public static const String DRAG_SOURCE_KEY = "DragSource";


	static const String INIT_DRAG_MESSAGE = "Cannot initialize Drag";

	static const String INIT_DROP_MESSAGE = "Cannot initialize Drop";

	static const String CANNOT_SET_CLIPBOARD_MESSAGE = "Cannot set data in clipboard";

	static const String INVALID_DATA_MESSAGE = "Data does not have correct format for type";

	public static void error(int code);

	public static void error(int code, int hresult);

}

