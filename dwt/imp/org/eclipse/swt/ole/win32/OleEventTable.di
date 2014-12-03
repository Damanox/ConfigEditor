// D import file generated from 'org\eclipse\swt\ole\win32\OleEventTable.d'
module org.eclipse.swt.ole.win32.OleEventTable;
import org.eclipse.swt.ole.win32.OleListener;
import org.eclipse.swt.ole.win32.OleEvent;
import java.lang.all;
class OleEventTable
{
	int[] types;
	OleListener[] handlers;
	void hook(int eventType, OleListener handler);
	bool hooks(int eventType);
	void sendEvent(OleEvent event);
	void unhook(int eventType, OleListener handler);
	bool hasEntries();
}
