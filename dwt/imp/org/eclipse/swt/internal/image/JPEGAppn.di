// D import file generated from 'org\eclipse\swt\internal\image\JPEGAppn.d'
module org.eclipse.swt.internal.image.JPEGAppn;
import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.JPEGFileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;
final class JPEGAppn : JPEGVariableSizeSegment
{
	public this(byte[] reference);

	public this(LEDataInputStream byteStream);

	public override bool verify();

}

