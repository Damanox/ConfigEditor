// D import file generated from 'org\eclipse\swt\internal\image\PngInputStream.d'
module org.eclipse.swt.internal.image.PngInputStream;
import java.io.InputStream;
import org.eclipse.swt.internal.image.PngIdatChunk;
import org.eclipse.swt.internal.image.PngChunkReader;
import org.eclipse.swt.internal.image.PngChunk;
import java.lang.all;
public class PngInputStream : InputStream
{
	alias InputStream.read read;
	PngChunkReader reader;
	PngChunk chunk;
	int offset;
	int length;
	static const int DATA_OFFSET = 8;

	public this(PngIdatChunk chunk, PngChunkReader reader);

	private bool checkChunk();

	public override void close();

	public override int read();

	public override int read(byte[] b, int off, int len);

}

