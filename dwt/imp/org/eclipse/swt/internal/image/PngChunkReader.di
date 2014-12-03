// D import file generated from 'org\eclipse\swt\internal\image\PngChunkReader.d'
module org.eclipse.swt.internal.image.PngChunkReader;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngPlteChunk;
import org.eclipse.swt.internal.image.PngTrnsChunk;
import org.eclipse.swt.internal.image.PngChunk;
public class PngChunkReader
{
	LEDataInputStream inputStream;
	PngFileReadState readState;
	PngIhdrChunk headerChunk;
	PngPlteChunk paletteChunk;
	this(LEDataInputStream inputStream);
	PngIhdrChunk getIhdrChunk();
	PngChunk readNextChunk();
	bool readPixelData();
	bool hasMoreChunks();
}

