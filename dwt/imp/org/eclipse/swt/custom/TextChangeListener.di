// D import file generated from 'org\eclipse\swt\custom\TextChangeListener.d'
module org.eclipse.swt.custom.TextChangeListener;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.custom.TextChangingEvent;
import org.eclipse.swt.custom.TextChangedEvent;
public interface TextChangeListener : SWTEventListener
{
	public void textChanging(TextChangingEvent event);

	public void textChanged(TextChangedEvent event);

	public void textSet(TextChangedEvent event);

}

