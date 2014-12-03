// D import file generated from 'org\eclipse\swt\layout\FillData.d'
module org.eclipse.swt.layout.FillData;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
class FillData
{
	int defaultWidth = -1;
	int defaultHeight = -1;
	int currentWhint;
	int currentHhint;
	int currentWidth = -1;
	int currentHeight = -1;
	Point computeSize(Control control, int wHint, int hHint, bool flushCache_);
	void flushCache();
}
