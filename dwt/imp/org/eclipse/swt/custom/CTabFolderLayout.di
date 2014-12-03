// D import file generated from 'org\eclipse\swt\custom\CTabFolderLayout.d'
module org.eclipse.swt.custom.CTabFolderLayout;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.custom.CTabItem;
class CTabFolderLayout : Layout
{
	protected override Point computeSize(Composite composite, int wHint, int hHint, bool flushCache);

	protected override bool flushCache(Control control);

	protected override void layout(Composite composite, bool flushCache);

}
