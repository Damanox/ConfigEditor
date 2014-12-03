// D import file generated from 'org\eclipse\swt\accessibility\Accessible.d'
module org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.OAIDL;
import org.eclipse.swt.internal.ole.win32.ifs;
import org.eclipse.swt.internal.ole.win32.extras;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.swt.accessibility.ACC;
import org.eclipse.swt.accessibility.AccessibleControlListener;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.accessibility.AccessibleTextListener;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import java.lang.all;
import java.util.Vector;
import java.lang.Thread;
public class Accessible
{
	int refCount = 0;
	int enumIndex = 0;
	_IAccessibleImpl objIAccessible;
	_IEnumVARIANTImpl objIEnumVARIANT;
	IAccessible iaccessible;
	Vector accessibleListeners;
	Vector accessibleControlListeners;
	Vector textListeners;
	Object[] variants;
	Control control;
	this(Control control);
	public static Accessible internal_new_Accessible(Control control);

	public void addAccessibleListener(AccessibleListener listener);

	public void addAccessibleControlListener(AccessibleControlListener listener);

	public void addAccessibleTextListener(AccessibleTextListener listener);

	public Control getControl();

	public void internal_dispose_Accessible();

	public int internal_WM_GETOBJECT(int wParam, int lParam);

	public void removeAccessibleListener(AccessibleListener listener);

	public void removeAccessibleControlListener(AccessibleControlListener listener);

	public void removeAccessibleTextListener(AccessibleTextListener listener);

	public void selectionChanged();

	public void setFocus(int childID);

	public void textCaretMoved(int index);

	public void textChanged(int type, int startIndex, int length);

	public void textSelectionChanged();

	HRESULT QueryInterface(REFCIID riid, void** ppvObject);
	ULONG AddRef();
	ULONG Release();
	HRESULT accDoDefaultAction(VARIANT variant);
	HRESULT accHitTest(LONG xLeft, LONG yTop, VARIANT* pvarChild);
	HRESULT accLocation(LONG* pxLeft, LONG* pyTop, LONG* pcxWidth, LONG* pcyHeight, VARIANT variant);
	HRESULT accNavigate(LONG navDir, VARIANT variant, VARIANT* pvarEndUpAt);
	HRESULT accSelect(LONG flagsSelect, VARIANT variant);
	HRESULT get_accChild(VARIANT variant, LPDISPATCH* ppdispChild);
	HRESULT get_accChildCount(LONG* pcountChildren);
	HRESULT get_accDefaultAction(VARIANT variant, BSTR* pszDefaultAction);
	HRESULT get_accDescription(VARIANT variant, BSTR* pszDescription);
	HRESULT get_accFocus(VARIANT* pvarChild);
	HRESULT get_accHelp(VARIANT variant, BSTR* pszHelp);
	HRESULT get_accHelpTopic(BSTR* pszHelpFile, VARIANT variant, LONG* pidTopic);
	HRESULT get_accKeyboardShortcut(VARIANT variant, BSTR* pszKeyboardShortcut);
	HRESULT get_accName(VARIANT variant, BSTR* pszName);
	HRESULT get_accParent(LPDISPATCH* ppdispParent);
	HRESULT get_accRole(VARIANT variant, VARIANT* pvarRole);
	HRESULT get_accSelection(VARIANT* pvarChildren);
	HRESULT get_accState(VARIANT variant, VARIANT* pvarState);
	HRESULT get_accValue(VARIANT variant, BSTR* pszValue);
	HRESULT put_accName(VARIANT variant, BSTR* szName);
	HRESULT put_accValue(VARIANT variant, BSTR* szValue);
	HRESULT Next(ULONG celt, VARIANT* rgvar, ULONG* pceltFetched);
	HRESULT Skip(ULONG celt);
	HRESULT Reset();
	int Clone(IEnumVARIANT* ppEnum);
	int childIDToOs(int childID);
	int osToChildID(int osChildID);
	int stateToOs(int state);
	int osToState(int osState);
	int roleToOs(int role);
	int osToRole(int osRole);
	void checkWidget();
	WINBOOL isValidThread();
}

class _IAccessibleImpl : IAccessible
{
	Accessible parent;
	this(Accessible p);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT GetTypeInfoCount(UINT* pctinfo);
		HRESULT GetTypeInfo(UINT iTInfo, LCID lcid, ITypeInfo* ppTInfo);
		HRESULT GetIDsOfNames(REFCIID riid, LPCOLESTR* rgszNames, UINT cNames, LCID lcid, DISPID* rgDispId);
		HRESULT Invoke(DISPID dispIdMember, REFIID riid, LCID lcid, WORD wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, UINT* puArgErr);
		HRESULT get_accParent(LPDISPATCH* ppdispParent);
		HRESULT get_accChildCount(LONG* pcountChildren);
		HRESULT get_accChild(VARIANT varChildID, LPDISPATCH* ppdispChild);
		HRESULT get_accName(VARIANT varID, BSTR* pszName);
		HRESULT get_accValue(VARIANT varID, BSTR* pszValue);
		HRESULT get_accDescription(VARIANT varID, BSTR* pszDescription);
		HRESULT get_accRole(VARIANT varID, VARIANT* pvarRole);
		HRESULT get_accState(VARIANT varID, VARIANT* pvarState);
		HRESULT get_accHelp(VARIANT varID, BSTR* pszHelp);
		HRESULT get_accHelpTopic(BSTR* pszHelpFile, VARIANT varChild, LONG* pidTopic);
		HRESULT get_accKeyboardShortcut(VARIANT varID, BSTR* pszKeyboardShortcut);
		HRESULT get_accFocus(VARIANT* pvarID);
		HRESULT get_accSelection(VARIANT* pvarChildren);
		HRESULT get_accDefaultAction(VARIANT varID, BSTR* pszDefaultAction);
		HRESULT accSelect(LONG flagsSelect, VARIANT varID);
		HRESULT accLocation(LONG* pxLeft, LONG* pyTop, LONG* pcxWidth, LONG* pcyHeight, VARIANT varID);
		HRESULT accNavigate(LONG navDir, VARIANT varStart, VARIANT* pvarEnd);
		HRESULT accHitTest(LONG xLeft, LONG yTop, VARIANT* pvarID);
		HRESULT accDoDefaultAction(VARIANT varID);
		HRESULT put_accName(VARIANT varID, BSTR* szName);
		HRESULT put_accValue(VARIANT varID, BSTR* szValue);
	}
}
class _IEnumVARIANTImpl : IEnumVARIANT
{
	Accessible parent;
	this(Accessible a);
	extern (Windows) 
	{
		HRESULT QueryInterface(REFCIID riid, void** ppvObject);
		ULONG AddRef();
		ULONG Release();
		HRESULT Next(ULONG celt, VARIANT* rgvar, ULONG* pceltFetched);
		HRESULT Skip(ULONG celt);
		HRESULT Reset();
		HRESULT Clone(LPENUMVARIANT* ppenum);
	}
}
