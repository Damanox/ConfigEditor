// D import file generated from 'org\eclipse\swt\graphics\Device.d'
module org.eclipse.swt.graphics.Device;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Path;
import org.eclipse.swt.graphics.Pattern;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.Transform;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.DeviceData;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Color;
import java.lang.Runnable;
import java.lang.System;
import java.lang.all;
public abstract class Device : Drawable
{
	private struct CallbackData
	{
		Device device;
		bool scalable;
	}

	public static bool DEBUG = true;


	bool debug_;
	bool tracking;
	Exception[] errors;
	Object[] objects;
	Object trackingLock;
	public HPALETTE hPalette;

	int[] colorRefCount;
	Font systemFont;
	int nFonts = 256;
	LOGFONT*[] logFonts;
	TEXTMETRIC metrics;
	int[] pixels;
	SCRIPT_PROPERTIES*[] scripts;
	ULONG_PTR gdipToken;
	bool disposed;
	mixin(gshared!"protected static Device CurrentDevice;");
	mixin(gshared!"protected static Runnable DeviceFinder;");
	static Device getDevice();
	public this();

	public this(DeviceData data);

	protected void checkDevice();

	void checkGDIP();
	protected void create(DeviceData data);

	int computePixels(float height);
	float computePoints(LOGFONT* logFont, HFONT hFont);
	protected void destroy();

	public void dispose();

	void dispose_Object(Object object);
	extern (Windows) static int EnumFontFamFunc(ENUMLOGFONT* lpelfe, NEWTEXTMETRIC* lpntme, int FontType, int lParam);

	int EnumFontFamProc(ENUMLOGFONT* lpelfe, NEWTEXTMETRIC* lpntme, DWORD FontType, bool scalable);
	public Rectangle getBounds();

	public DeviceData getDeviceData();

	public Rectangle getClientArea();

	public int getDepth();

	public Point getDPI();

	public FontData[] getFontList(String faceName, bool scalable);

	String getLastError();
	String getLastErrorText();
	public Color getSystemColor(int id);

	public Font getSystemFont();

	public bool getWarnings();

	protected void init_();

	public abstract HDC internal_new_GC(GCData data);

	public abstract void internal_dispose_GC(HDC hDC, GCData data);

	public bool isDisposed();

	public bool loadFont(String path);

	void new_Object(Object object);
	void printErrors();
	protected void release();

	public void setWarnings(bool warnings);

}


