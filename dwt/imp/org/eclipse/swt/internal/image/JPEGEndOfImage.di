// D import file generated from 'org\eclipse\swt\internal\image\JPEGEndOfImage.d'
module org.eclipse.swt.internal.image.JPEGEndOfImage;
import org.eclipse.swt.internal.image.JPEGFixedSizeSegment;
import org.eclipse.swt.internal.image.JPEGFileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;
final class JPEGEndOfImage : JPEGFixedSizeSegment
{
	public this();

	public this(byte[] reference);

	public override int signature();

	public override int fixedSize();

}

