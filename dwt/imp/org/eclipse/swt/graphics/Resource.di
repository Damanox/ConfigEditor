// D import file generated from 'org\eclipse\swt\graphics\Resource.d'
module org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
public abstract class Resource
{
	public bool disposeChecking = true;

	public static bool globalDisposeChecking = true;


	Device device;
	public this();

	this(Device device);
	~this();
	void destroy();
	public void dispose();

	public Device getDevice();

	void init_();
	public abstract bool isDisposed();

}


