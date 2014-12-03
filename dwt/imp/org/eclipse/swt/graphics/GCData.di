// D import file generated from 'org\eclipse\swt\graphics\GCData.d'
module org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.win32.WINTYPES;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Pattern;
import org.eclipse.swt.graphics.Font;
public final class GCData
{
	public Device device;

	public 
	{
		int style;
		int state = -1;
	}
	public int foreground = -1;

	public int background = -1;

	public Font font;

	public Pattern foregroundPattern;

	public Pattern backgroundPattern;

	public int lineStyle = SWT.LINE_SOLID;

	public float lineWidth = 0;

	public int lineCap = SWT.CAP_FLAT;

	public int lineJoin = SWT.JOIN_MITER;

	public float lineDashesOffset = 0;

	public float[] lineDashes;

	public float lineMiterLimit = 10;

	public int alpha = 255;

	public Image image;

	public 
	{
		HPEN hPen;
		HPEN hOldPen;
	}
	public 
	{
		HBRUSH hBrush;
		HBRUSH hOldBrush;
	}
	public HBITMAP hNullBitmap;

	public HWND hwnd;

	public PAINTSTRUCT* ps;

	public int layout = -1;

	public Gdip.Graphics gdipGraphics;

	public Gdip.Pen gdipPen;

	public Gdip.Brush gdipBrush;

	public Gdip.SolidBrush gdipFgBrush;

	public Gdip.SolidBrush gdipBgBrush;

	public Gdip.Font gdipFont;

	public 
	{
		float gdipXOffset = 0;
		float gdipYOffset = 0;
	}
	public int uiState = 0;

	public bool focusDrawn;

}


