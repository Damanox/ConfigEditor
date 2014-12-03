// D import file generated from 'java\beans\PropertyChangeEvent.d'
module java.beans.PropertyChangeEvent;
import java.lang.all;
import java.util.EventObject;
class PropertyChangeEvent : EventObject
{
	private String propertyName;

	private Object oldValue;

	private Object newValue;

	private Object propagationId;

	this(Object source, String propertyName, Object oldValue, Object newValue);
	Object getNewValue();
	Object getOldValue();
	Object getPropagationId();
	String getPropertyName();
	void setPropagationId(Object propagationId);
	public override String toString();

}
