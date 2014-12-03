// D import file generated from 'org\eclipse\swt\internal\image\LEDataInputStream.d'
module org.eclipse.swt.internal.image.LEDataInputStream;
import java.io.InputStream;
import java.lang.all;
final class LEDataInputStream : InputStream
{
	alias InputStream.read read;
	InputStream host;
	int position;
	protected byte[] buf;

	protected int pos;

	public this(InputStream input);

	public this(InputStream input, int bufferSize);

	public override void close();

	public int getPosition();

	public override int available();

	public override int read();

	public override int read(byte[] b, int off, int len);

	private int readData(byte[] buffer, int offset, int len);

	public int readInt();

	public short readShort();

	public void unread(byte[] b);

}

