// D import file generated from 'org\eclipse\swt\graphics\Region.d'
module org.eclipse.swt.graphics.Region;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Device;
import java.lang.all;
public final class Region : Resource
{
	alias Resource.init_ init_;
	public HRGN handle;

	public this();

	public this(Device device);

	this(Device device, HRGN handle);
	public void add(int[] pointArray);

	public void add(Rectangle rect);

	public void add(int x, int y, int width, int height);

	public void add(Region region);

	public bool contains(int x, int y);

	public bool contains(Point pt);

	override void destroy();
	public override equals_t opEquals(Object object);

	public Rectangle getBounds();

	public override hash_t toHash();

	public void intersect(Rectangle rect);

	public void intersect(int x, int y, int width, int height);

	public void intersect(Region region);

	public bool intersects(int x, int y, int width, int height);

	public bool intersects(Rectangle rect);

	public override bool isDisposed();

	public bool isEmpty();

	public void subtract(int[] pointArray);

	public void subtract(Rectangle rect);

	public void subtract(int x, int y, int width, int height);

	public void subtract(Region region);

	public void translate(int x, int y);

	public void translate(Point pt);

	public override String toString();

	public static Region win32_new(Device device, HRGN handle);

}


