// D import file generated from 'org\eclipse\swt\custom\MovementListener.d'
module org.eclipse.swt.custom.MovementListener;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.custom.MovementEvent;
public interface MovementListener : SWTEventListener
{
	public void getNextOffset(MovementEvent event);

	public void getPreviousOffset(MovementEvent event);

}

