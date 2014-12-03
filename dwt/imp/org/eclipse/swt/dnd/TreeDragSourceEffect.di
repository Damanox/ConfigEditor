// D import file generated from 'org\eclipse\swt\dnd\TreeDragSourceEffect.d'
module org.eclipse.swt.dnd.TreeDragSourceEffect;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.dnd.DragSourceEffect;
import org.eclipse.swt.dnd.DragSourceEvent;
import java.lang.all;
public class TreeDragSourceEffect : DragSourceEffect
{
	Image dragSourceImage = null;
	public this(Tree tree);

	public override void dragFinished(DragSourceEvent event);

	public override void dragStart(DragSourceEvent event);

	Image getDragSourceImage(DragSourceEvent event);
}

