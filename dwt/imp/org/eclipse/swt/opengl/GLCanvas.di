// D import file generated from 'org\eclipse\swt\opengl\GLCanvas.d'
module org.eclipse.swt.opengl.GLCanvas;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.opengl.win32.WGL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.opengl.GLData;
public class GLCanvas : Canvas
{
	HGLRC context;
	int pixelFormat;
	public this(Composite parent, int style, GLData data);

	public GLData getGLData();

	public bool isCurrent();

	public void setCurrent();

	public void swapBuffers();

}

