// D import file generated from 'org\eclipse\swt\ole\win32\OleAutomation.d'
module org.eclipse.swt.ole.win32.OleAutomation;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMTYPES;
import org.eclipse.swt.internal.ole.win32.OAIDL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.ole.win32.OleClientSite;
import org.eclipse.swt.ole.win32.OlePropertyDescription;
import org.eclipse.swt.ole.win32.OleFunctionDescription;
import org.eclipse.swt.ole.win32.OleParameterDescription;
import org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.ole.win32.OLE;
import java.lang.all;
public final class OleAutomation
{
	private IDispatch objIDispatch;

	private String exceptionDescription;

	private ITypeInfo objITypeInfo;

	this(IDispatch idispatch);
	public this(OleClientSite clientSite);

	public void dispose();

	IDispatch getAddress();
	public String getHelpFile(int dispId);

	public String getDocumentation(int dispId);

	public OlePropertyDescription getPropertyDescription(int index);

	public OleFunctionDescription getFunctionDescription(int index);

	public TYPEATTR* getTypeInfoAttributes();

	public String getName(int dispId);

	public String[] getNames(int dispId, int maxSize);

	public int[] getIDsOfNames(String[] names);

	public String getLastError();

	public Variant getProperty(int dispIdMember);

	public Variant getProperty(int dispIdMember, Variant[] rgvarg);

	public Variant getProperty(int dispIdMember, Variant[] rgvarg, int[] rgdispidNamedArgs);

	public Variant invoke(int dispIdMember);

	public Variant invoke(int dispIdMember, Variant[] rgvarg);

	public Variant invoke(int dispIdMember, Variant[] rgvarg, int[] rgdispidNamedArgs);

	private int invoke(int dispIdMember, ushort wFlags, Variant[] rgvarg, int[] rgdispidNamedArgs, Variant pVarResult);

	public void invokeNoReply(int dispIdMember);

	public void invokeNoReply(int dispIdMember, Variant[] rgvarg);

	public void invokeNoReply(int dispIdMember, Variant[] rgvarg, int[] rgdispidNamedArgs);

	private void manageExcepinfo(int hResult, EXCEPINFO* excepInfo);

	public bool setProperty(int dispIdMember, Variant rgvarg);

	public bool setProperty(int dispIdMember, Variant[] rgvarg);

}


