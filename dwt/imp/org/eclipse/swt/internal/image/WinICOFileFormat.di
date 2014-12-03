// D import file generated from 'org\eclipse\swt\internal\image\WinICOFileFormat.d'
module org.eclipse.swt.internal.image.WinICOFileFormat;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.internal.image.WinBMPFileFormat;
import org.eclipse.swt.SWT;
import java.lang.all;
public final class WinICOFileFormat : FileFormat
{
	byte[] bitInvertData(byte[] data, int startIndex, int endIndex);
	static final byte[] convertPad(byte[] data, int width, int height, int depth, int pad, int newPad);
	int iconSize(ImageData i);
	override bool isFileFormat(LEDataInputStream stream);
	bool isValidIcon(ImageData i);
	int loadFileHeader(LEDataInputStream byteStream);
	int loadFileHeader(LEDataInputStream byteStream, bool hasHeader);
	override ImageData[] loadFromByteStream();
	ImageData loadIcon(int[] iconHeader);
	int[][] loadIconHeaders(int numIcons);
	byte[] loadInfoHeader(int[] iconHeader);
	void unloadIcon(ImageData icon);
	void unloadIconHeader(ImageData i);
	override void unloadIntoByteStream(ImageLoader loader);
	void unloadMaskData(ImageData icon);
	void unloadShapeData(ImageData icon);
}


