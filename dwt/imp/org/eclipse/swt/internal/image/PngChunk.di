// D import file generated from 'org\eclipse\swt\internal\image\PngChunk.d'
module org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngPlteChunk;
import org.eclipse.swt.internal.image.PngIdatChunk;
import org.eclipse.swt.internal.image.PngIendChunk;
import org.eclipse.swt.internal.image.PngTrnsChunk;
import java.lang.all;
class PngChunk
{
	byte[] reference;
	static const int LENGTH_OFFSET = 0;

	static const int TYPE_OFFSET = 4;

	static const int DATA_OFFSET = 8;

	static const int TYPE_FIELD_LENGTH = 4;

	static const int LENGTH_FIELD_LENGTH = 4;

	static const int MIN_LENGTH = 12;

	static const int CHUNK_UNKNOWN = -1;

	static const int CHUNK_IHDR = 0;

	static const int CHUNK_PLTE = 1;

	static const int CHUNK_IDAT = 2;

	static const int CHUNK_IEND = 3;

	static const int CHUNK_tRNS = 5;

	static const byte[] TYPE_IHDR = cast(byte[])"IHDR";

	static const byte[] TYPE_PLTE = cast(byte[])"PLTE";

	static const byte[] TYPE_IDAT = cast(byte[])"IDAT";

	static const byte[] TYPE_IEND = cast(byte[])"IEND";

	static const byte[] TYPE_tRNS = cast(byte[])"tRNS";

	mixin(gshared!"private static int[] _CRC_TABLE = null;");
	static int[] CRC_TABLE();
	private static void static_this();

	int length;
	this(byte[] reference);
	this(int dataLength);
	byte[] getReference();
	void setReference(byte[] reference);
	int getInt16(int offset);
	void setInt16(int offset, int value);
	int getInt32(int offset);
	void setInt32(int offset, int value);
	int getLength();
	void setLength(int value);
	byte[] getTypeBytes();
	void setType(in byte[] value);
	byte[] getData();
	void setData(in byte[] data);
	int getCRC();
	void setCRC(int value);
	int getSize();
	bool checkCRC();
	int computeCRC();
	bool typeMatchesArray(in byte[] array);
	bool isCritical();
	int getChunkType();
	static PngChunk readNextFromStream(LEDataInputStream stream);
	void validate(PngFileReadState readState, PngIhdrChunk headerChunk);
	String contributeToString();
	public override String toString();

}
