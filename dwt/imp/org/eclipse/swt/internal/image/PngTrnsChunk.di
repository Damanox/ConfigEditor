// D import file generated from 'org\eclipse\swt\internal\image\PngTrnsChunk.d'
module org.eclipse.swt.internal.image.PngTrnsChunk;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PNGFileFormat;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngPlteChunk;
public class PngTrnsChunk : PngChunk
{
	alias PngChunk.validate validate;
	static const int TRANSPARENCY_TYPE_PIXEL = 0;

	static const int TRANSPARENCY_TYPE_ALPHAS = 1;

	static const int RGB_DATA_LENGTH = 6;

	this(RGB rgb);
	this(byte[] reference);
	override int getChunkType();
	void validateLength(PngIhdrChunk header, PngPlteChunk paletteChunk);
	void validate(PngFileReadState readState, PngIhdrChunk headerChunk, PngPlteChunk paletteChunk);
	int getTransparencyType(PngIhdrChunk header);
	int getSwtTransparentPixel(PngIhdrChunk header);
	byte[] getAlphaValues(PngIhdrChunk header, PngPlteChunk paletteChunk);
}

