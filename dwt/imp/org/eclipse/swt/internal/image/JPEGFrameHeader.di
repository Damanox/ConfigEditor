// D import file generated from 'org\eclipse\swt\internal\image\JPEGFrameHeader.d'
module org.eclipse.swt.internal.image.JPEGFrameHeader;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.JPEGFileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;
import java.lang.all;
final class JPEGFrameHeader : JPEGVariableSizeSegment
{
	int maxVFactor;
	int maxHFactor;
	public int[] componentIdentifiers;

	public int[][] componentParameters;

	public this(byte[] reference);

	public this(LEDataInputStream byteStream);

	public int getSamplePrecision();

	public int getNumberOfLines();

	public int getSamplesPerLine();

	public int getNumberOfImageComponents();

	public void setSamplePrecision(int precision);

	public void setNumberOfLines(int anInteger);

	public void setSamplesPerLine(int samples);

	public void setNumberOfImageComponents(int anInteger);

	public int getMaxHFactor();

	public int getMaxVFactor();

	public void setMaxHFactor(int anInteger);

	public void setMaxVFactor(int anInteger);

	void initializeComponentParameters();
	public void initializeContents();

	int roundUpToMultiple(int anInteger, int mInteger);
	public override bool verify();

	public bool isProgressive();

	public bool isArithmeticCoding();

}

