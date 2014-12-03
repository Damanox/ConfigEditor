// D import file generated from 'org\eclipse\swt\internal\image\JPEGScanHeader.d'
module org.eclipse.swt.internal.image.JPEGScanHeader;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.JPEGFileFormat;
import java.lang.all;
final class JPEGScanHeader : JPEGVariableSizeSegment
{
	public int[][] componentParameters;

	public this(byte[] reference);

	public this(LEDataInputStream byteStream);

	public int getApproxBitPositionHigh();

	public int getApproxBitPositionLow();

	public int getEndOfSpectralSelection();

	public int getNumberOfImageComponents();

	public int getStartOfSpectralSelection();

	void initializeComponentParameters();
	public void initializeContents();

	public void setEndOfSpectralSelection(int anInteger);

	public void setNumberOfImageComponents(int anInteger);

	public void setStartOfSpectralSelection(int anInteger);

	public override int signature();

	public bool verifyProgressiveScan();

	public bool isACProgressiveScan();

	public bool isDCProgressiveScan();

	public bool isFirstScan();

}

