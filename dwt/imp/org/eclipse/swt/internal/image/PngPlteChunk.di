// D import file generated from 'org\eclipse\swt\internal\image\PngPlteChunk.d'
module org.eclipse.swt.internal.image.PngPlteChunk;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;
class PngPlteChunk : PngChunk
{
	int paletteSize;
	this(PaletteData palette);
	this(byte[] reference);
	override int getChunkType();
	int getPaletteSize();
	PaletteData getPaletteData();
	void setPaletteData(PaletteData palette);
	override void validate(PngFileReadState readState, PngIhdrChunk headerChunk);
	override String contributeToString();
}
