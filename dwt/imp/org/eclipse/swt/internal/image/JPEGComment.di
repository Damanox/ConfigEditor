// D import file generated from 'org\eclipse\swt\internal\image\JPEGComment.d'
module org.eclipse.swt.internal.image.JPEGComment;
import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.JPEGFileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;
final class JPEGComment : JPEGVariableSizeSegment
{
	public this(byte[] reference);

	public this(LEDataInputStream byteStream);

	public override int signature();

}

