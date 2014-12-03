// D import file generated from 'org\eclipse\swt\internal\image\JPEGStartOfImage.d'
module org.eclipse.swt.internal.image.JPEGStartOfImage;
import org.eclipse.swt.internal.image.JPEGFixedSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.JPEGFileFormat;
final class JPEGStartOfImage : JPEGFixedSizeSegment
{
	public this();

	public this(byte[] reference);

	public this(LEDataInputStream byteStream);

	public override int signature();

	public override int fixedSize();

}

