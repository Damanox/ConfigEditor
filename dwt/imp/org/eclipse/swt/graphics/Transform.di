// D import file generated from 'org\eclipse\swt\graphics\Transform.d'
module org.eclipse.swt.graphics.Transform;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.Device;
import java.lang.all;
public class Transform : Resource
{
	alias Resource.init_ init_;
	public Gdip.Matrix handle;

	public this(Device device);

	public this(Device device, float[] elements);

	public this(Device device, float m11, float m12, float m21, float m22, float dx, float dy);

	static float[] checkTransform(float[] elements);
	override void destroy();
	public void getElements(float[] elements);

	public void identity();

	public void invert();

	public override bool isDisposed();

	public bool isIdentity();

	public void multiply(Transform matrix);

	public void rotate(float angle);

	public void scale(float scaleX, float scaleY);

	public void setElements(float m11, float m12, float m21, float m22, float dx, float dy);

	public void shear(float shearX, float shearY);

	public void transform(float[] pointArray);

	public void translate(float offsetX, float offsetY);

	public override String toString();

}

