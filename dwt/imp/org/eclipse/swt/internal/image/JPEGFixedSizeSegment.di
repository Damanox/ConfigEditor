// D import file generated from 'org\eclipse\swt\internal\image\JPEGFixedSizeSegment.d'
module org.eclipse.swt.internal.image.JPEGFixedSizeSegment;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.JPEGSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;
abstract class JPEGFixedSizeSegment : JPEGSegment
{
	public this();

	public this(byte[] reference);

	public this(LEDataInputStream byteStream);

	public abstract int fixedSize();

	public override int getSegmentLength();

	public override void setSegmentLength(int length);

}

