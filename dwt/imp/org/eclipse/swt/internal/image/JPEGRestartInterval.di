// D import file generated from 'org\eclipse\swt\internal\image\JPEGRestartInterval.d'
module org.eclipse.swt.internal.image.JPEGRestartInterval;
import org.eclipse.swt.internal.image.JPEGFixedSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.JPEGFileFormat;
final class JPEGRestartInterval : JPEGFixedSizeSegment
{
	public this(LEDataInputStream byteStream);

	public override int signature();

	public int getRestartInterval();

	public override int fixedSize();

}

