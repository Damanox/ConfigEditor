// D import file generated from 'org\eclipse\swt\internal\image\JPEGSegment.d'
module org.eclipse.swt.internal.image.JPEGSegment;
import org.eclipse.swt.internal.image.LEDataOutputStream;
class JPEGSegment
{
	public byte[] reference;

	this();
	public this(byte[] reference);

	public int signature();

	public bool verify();

	public int getSegmentMarker();

	public void setSegmentMarker(int marker);

	public int getSegmentLength();

	public void setSegmentLength(int length);

	public bool writeToStream(LEDataOutputStream byteStream);

}
