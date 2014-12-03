// D import file generated from 'org\eclipse\swt\custom\ControlEditor.d'
module org.eclipse.swt.custom.ControlEditor;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
public class ControlEditor
{
	public int horizontalAlignment = SWT.CENTER;

	public bool grabHorizontal = false;

	public int minimumWidth = 0;

	public int verticalAlignment = SWT.CENTER;

	public bool grabVertical = false;

	public int minimumHeight = 0;

	Composite parent;
	Control editor;
	private bool hadFocus;

	private Listener controlListener;

	private Listener scrollbarListener;

	private static const int[] EVENTS = [SWT.KeyDown, SWT.KeyUp, SWT.MouseDown, SWT.MouseUp, SWT.Resize];


	public this(Composite parent);

	Rectangle computeBounds();
	public void dispose();

	public Control getEditor();

	public void layout();

	void scroll(Event e);
	public void setEditor(Control editor);

}

