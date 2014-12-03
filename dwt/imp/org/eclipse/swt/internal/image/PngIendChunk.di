// D import file generated from 'org\eclipse\swt\internal\image\PngIendChunk.d'
module org.eclipse.swt.internal.image.PngIendChunk;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngChunk;
class PngIendChunk : PngChunk
{
	this();
	this(byte[] reference);
	override int getChunkType();
	override void validate(PngFileReadState readState, PngIhdrChunk headerChunk);
}
