// D import file generated from 'org\eclipse\swt\graphics\PaletteData.d'
module org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.RGB;
public final class PaletteData
{
	public bool isDirect;

	public RGB[] colors;

	public int redMask;

	public int greenMask;

	public int blueMask;

	public int redShift;

	public int greenShift;

	public int blueShift;

	public this(RGB[] colors);

	public this(int redMask, int greenMask, int blueMask);

	public int getPixel(RGB rgb);

	public RGB getRGB(int pixel);

	public RGB[] getRGBs();

	int shiftForMask(int mask);
}


