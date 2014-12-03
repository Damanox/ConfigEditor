// D import file generated from 'org\eclipse\swt\internal\image\PNGFileFormat.d'
module org.eclipse.swt.internal.image.PNGFileFormat;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngPlteChunk;
import org.eclipse.swt.internal.image.PngChunkReader;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngTrnsChunk;
import org.eclipse.swt.internal.image.PngIdatChunk;
import org.eclipse.swt.internal.image.PngEncoder;
import org.eclipse.swt.internal.image.PngInputStream;
import org.eclipse.swt.internal.image.PngDecodingDataStream;
import java.lang.all;
import java.io.BufferedInputStream;
final class PNGFileFormat : FileFormat
{
	static const int SIGNATURE_LENGTH = 8;

	static const int PRIME = 65521;

	PngIhdrChunk headerChunk;
	PngPlteChunk paletteChunk;
	ImageData imageData;
	byte[] data;
	byte[] alphaPalette;
	byte headerByte1;
	byte headerByte2;
	int adler;
	void readSignature();
	override ImageData[] loadFromByteStream();
	void readNextChunk(PngChunkReader chunkReader);
	override void unloadIntoByteStream(ImageLoader loader);
	override bool isFileFormat(LEDataInputStream stream);
	byte[] validateBitDepth(byte[] data);
	void setPixelData(byte[] data, ImageData imageData);
	void setImageDataValues(byte[] data, ImageData imageData);
	void readPixelData(PngIdatChunk chunk, PngChunkReader chunkReader);
	int getAlignedBytesPerRow();
	int getBytesPerRow();
	int getBytesPerPixel();
	int getBytesPerRow(int rowWidthInPixels);
	void readInterlaceFrame(InputStream inputStream, int rowInterval, int columnInterval, int startRow, int startColumn, int frameCount);
	void readInterlacedImage(InputStream inputStream);
	void fireInterlacedFrameEvent(int frameCount);
	void readNonInterlacedImage(InputStream inputStream);
	static void compress16BitDepthTo8BitDepth(byte[] source, int sourceOffset, byte[] destination, int destinationOffset, int numberOfValues);
	static int compress16BitDepthTo8BitDepth(int value);
	void filterRow(byte[] row, byte[] previousRow, int filterType);
}

