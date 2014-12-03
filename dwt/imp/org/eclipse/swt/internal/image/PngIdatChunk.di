// D import file generated from 'org\eclipse\swt\internal\image\PngIdatChunk.d'
module org.eclipse.swt.internal.image.PngIdatChunk;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngChunk;
import java.lang.all;
class PngIdatChunk : PngChunk
{
	static const int HEADER_BYTES_LENGTH = 2;

	static const int ADLER_FIELD_LENGTH = 4;

	static const int HEADER_BYTE1_DATA_OFFSET = DATA_OFFSET + 0;

	static const int HEADER_BYTE2_DATA_OFFSET = DATA_OFFSET + 1;

	static const int ADLER_DATA_OFFSET = DATA_OFFSET + 2;

	this(byte headerByte1, byte headerByte2, byte[] data, int adler);
	this(byte[] reference);
	override int getChunkType();
	override void validate(PngFileReadState readState, PngIhdrChunk headerChunk);
	byte getDataByteAtOffset(int offset);
}
