// D import file generated from 'org\eclipse\swt\internal\image\LEDataOutputStream.d'
module org.eclipse.swt.internal.image.LEDataOutputStream;
import java.io.OutputStream;
final class LEDataOutputStream : OutputStream
{
	alias OutputStream.write write;
	OutputStream ostr;
	public this(OutputStream output);

	public override void write(in byte[] b, int off, int len);

	public override void write(int b);

	public void writeByte(byte b);

	public void writeInt(int theInt);

	public void writeShort(int theShort);

}

