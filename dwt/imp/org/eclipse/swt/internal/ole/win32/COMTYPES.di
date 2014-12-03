// D import file generated from 'org\eclipse\swt\internal\ole\win32\COMTYPES.d'
module org.eclipse.swt.internal.ole.win32.COMTYPES;
private import org.eclipse.swt.internal.win32.WINTYPES;

private import org.eclipse.swt.internal.ole.win32.extras;

import java.lang.util;
alias WCHAR OLECHAR;
alias OLECHAR* LPOLESTR;
alias TryConst!OLECHAR* LPCOLESTR;
alias IID* LPIID;
alias HRESULT STDAPI;
alias DWORD OLE_COLOR;
struct CAUUID
{
	ULONG cElems;
	GUID* pElems;
}
struct CONNECTDATA
{
	LPUNKNOWN pUnk;
	DWORD dwCookie;
}
struct CONTROLINFO
{
	ULONG cb;
	HACCEL hAccel;
	USHORT cAccel;
	DWORD dwFlags;
}
struct LICINFO
{
	ULONG cbLicInfo;
	BOOL fRuntimeKeyAvail;
	BOOL fLicVerified;
}
struct POINTF
{
	FLOAT x;
	FLOAT y;
}
