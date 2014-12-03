// D import file generated from 'org\eclipse\swt\widgets\Monitor.d'
module org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.WINTYPES;
public final class Monitor
{
	HMONITOR handle;
	int x;
	int y;
	int width;
	int height;
	int clientX;
	int clientY;
	int clientWidth;
	int clientHeight;
	this();
	public override equals_t opEquals(Object object);

	public Rectangle getBounds();

	public Rectangle getClientArea();

	public override hash_t toHash();

}


