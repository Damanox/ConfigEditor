// D import file generated from 'org\eclipse\swt\ole\win32\Variant.d'
module org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMTYPES;
import org.eclipse.swt.internal.ole.win32.OAIDL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.ole.win32.OleAutomation;
import org.eclipse.swt.ole.win32.OLE;
import java.lang.all;
public final class Variant
{
	private short type;

	private bool booleanData;

	private byte byteData;

	private short shortData;

	private wchar charData;

	private int intData;

	private long longData;

	private float floatData = 0;

	private double doubleData = 0;

	private String stringData;

	private void* byRefPtr;

	private IDispatch dispatchData;

	private IUnknown unknownData;

	public static void win32_copy(VARIANT* pVarDest, Variant varSrc);

	public static Variant win32_new(VARIANT* pVariant);

	public this();

	public this(float val);

	public this(double val);

	public this(int val);

	public this(uint val);

	public this(void* ptr, ushort byRefType);

	public this(OleAutomation automation);

	public this(IDispatch idispatch);

	public this(IUnknown unknown);

	public this(long val);

	public this(String string);

	public this(short val);

	public this(bool val);

	public void dispose();

	public OleAutomation getAutomation();

	public IDispatch getDispatch();

	public bool getBoolean();

	public void* getByRef();

	public byte getByte();

	public wchar getChar();

	void getData(VARIANT* pData);
	public double getDouble();

	public float getFloat();

	public int getInt();

	public long getLong();

	public short getShort();

	public String getString();

	public short getType();

	public IUnknown getUnknown();

	public void setByRef(bool val);

	public void setByRef(float val);

	public void setByRef(int val);

	public void setByRef(short val);

	void setData(VARIANT* pData);
	public override String toString();

}


