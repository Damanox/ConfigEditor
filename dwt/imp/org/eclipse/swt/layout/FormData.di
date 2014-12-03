// D import file generated from 'org\eclipse\swt\layout\FormData.d'
module org.eclipse.swt.layout.FormData;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.layout.FormAttachment;
import java.lang.all;
public final class FormData
{
	public int width = SWT.DEFAULT;

	public int height = SWT.DEFAULT;

	public FormAttachment left;

	public FormAttachment right;

	public FormAttachment top;

	public FormAttachment bottom;

	int cacheWidth = -1;
	int cacheHeight = -1;
	int defaultWhint;
	int defaultHhint;
	int defaultWidth = -1;
	int defaultHeight = -1;
	int currentWhint;
	int currentHhint;
	int currentWidth = -1;
	int currentHeight = -1;
	FormAttachment cacheLeft;
	FormAttachment cacheRight;
	FormAttachment cacheTop;
	FormAttachment cacheBottom;
	bool isVisited;
	bool needed;
	public this();

	public this(int width, int height);

	void computeSize(Control control, int wHint, int hHint, bool flushCache_);
	void flushCache();
	int getWidth(Control control, bool flushCache);
	int getHeight(Control control, bool flushCache);
	FormAttachment getBottomAttachment(Control control, int spacing, bool flushCache);
	FormAttachment getLeftAttachment(Control control, int spacing, bool flushCache);
	String getName();
	FormAttachment getRightAttachment(Control control, int spacing, bool flushCache);
	FormAttachment getTopAttachment(Control control, int spacing, bool flushCache);
	public override String toString();

}


