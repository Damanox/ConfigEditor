// D import file generated from 'org\eclipse\swt\internal\image\TIFFRandomFileAccess.d'
module org.eclipse.swt.internal.image.TIFFRandomFileAccess;
import org.eclipse.swt.internal.image.LEDataInputStream;
import java.lang.all;
final class TIFFRandomFileAccess
{
	LEDataInputStream inputStream;
	int start;
	int current;
	int next;
	byte[][] buffers;
	static const int CHUNK_SIZE = 8192;

	static const int LIST_SIZE = 128;

	public this(LEDataInputStream stream);

	void seek(int pos);
	void read(byte[] b);
}

