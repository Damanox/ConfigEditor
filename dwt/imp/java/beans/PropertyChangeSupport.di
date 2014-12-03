// D import file generated from 'java\beans\PropertyChangeSupport.d'
module java.beans.PropertyChangeSupport;
import java.lang.all;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeEvent;
version (Tango)
{
	static import tango.core.Array;
}
else
{
}
class PropertyChangeSupport
{
	PropertyChangeListener[][String] listeners;
	Object obj;
	this(Object obj);
	void addPropertyChangeListener(PropertyChangeListener listener);
	void addPropertyChangeListener(String propertyName, PropertyChangeListener listener);
	void firePropertyChange(String propertyName, bool oldValue, bool newValue);
	void firePropertyChange(String propertyName, int oldValue, int newValue);
	void firePropertyChange(String propertyName, Object oldValue, Object newValue);
	void removePropertyChangeListener(PropertyChangeListener listener);
	void removePropertyChangeListener(String propertyName, PropertyChangeListener listener);
}
