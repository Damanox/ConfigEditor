// D import file generated from 'org\eclipse\swt\internal\image\PngEncoder.d'
module org.eclipse.swt.internal.image.PngEncoder;
import java.lang.all;
import org.eclipse.swt.internal.image.LEDataOutputStream;
import org.eclipse.swt.internal.image.PngDeflater;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.image.PngChunk;
final class PngEncoder
{
	static const byte[] SIGNATURE = [cast(byte)'\x89', cast(byte)'P', cast(byte)'N', cast(byte)'G', cast(byte)'\x0d', cast(byte)'\x0a', cast(byte)'\x1a', cast(byte)'\x0a'];

	static const byte[] TAG_IHDR = [cast(byte)'I', cast(byte)'H', cast(byte)'D', cast(byte)'R'];

	static const byte[] TAG_PLTE = [cast(byte)'P', cast(byte)'L', cast(byte)'T', cast(byte)'E'];

	static const byte[] TAG_TRNS = [cast(byte)'t', cast(byte)'R', cast(byte)'N', cast(byte)'S'];

	static const byte[] TAG_IDAT = [cast(byte)'I', cast(byte)'D', cast(byte)'A', cast(byte)'T'];

	static const byte[] TAG_IEND = [cast(byte)'I', cast(byte)'E', cast(byte)'N', cast(byte)'D'];

	ByteArrayOutputStream bytes;
	PngChunk chunk;
	ImageLoader loader;
	ImageData data;
	int transparencyType;
	int width;
	int height;
	int bitDepth;
	int colorType;
	int compressionMethod = 0;
	int filterMethod = 0;
	int interlaceMethod = 0;
	public this(ImageLoader loader);

	void writeShort(ByteArrayOutputStream baos, int theShort);
	void writeInt(ByteArrayOutputStream baos, int theInt);
	void writeChunk(in byte[] tag, in byte[] buffer);
	void writeSignature();
	void writeHeader();
	void writePalette();
	void writeTransparency();
	void writeImageData();
	void writeEnd();
	public void encode(LEDataOutputStream outputStream);

}

