// D import file generated from 'org\eclipse\swt\custom\StyledTextListener.d'
module org.eclipse.swt.custom.StyledTextListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.ExtendedModifyEvent;
import org.eclipse.swt.custom.ExtendedModifyListener;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.custom.LineBackgroundEvent;
import org.eclipse.swt.custom.BidiSegmentEvent;
import org.eclipse.swt.custom.LineStyleEvent;
import org.eclipse.swt.custom.PaintObjectEvent;
import org.eclipse.swt.custom.MovementEvent;
import org.eclipse.swt.custom.TextChangedEvent;
import org.eclipse.swt.custom.TextChangingEvent;
import org.eclipse.swt.custom.LineBackgroundListener;
import org.eclipse.swt.custom.BidiSegmentListener;
import org.eclipse.swt.custom.LineStyleListener;
import org.eclipse.swt.custom.PaintObjectListener;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.TextChangeListener;
import org.eclipse.swt.custom.MovementListener;
class StyledTextListener : TypedListener
{
	this(SWTEventListener listener);
	public override void handleEvent(Event e);

}
