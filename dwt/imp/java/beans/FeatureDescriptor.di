// D import file generated from 'java\beans\FeatureDescriptor.d'
module java.beans.FeatureDescriptor;
import java.lang.all;
import java.util.Enumeration;
class FeatureDescriptor
{
	this();
	Enumeration attributeNames();
	String getDisplayName();
	String getName();
	String getShortDescription();
	Object getValue(String attributeName);
	bool isExpert();
	bool isHidden();
	bool isPreferred();
	void setDisplayName(String displayName);
	void setExpert(bool expert);
	void setHidden(bool hidden);
	void setName(String name);
	void setPreferred(bool preferred);
	void setShortDescription(String text);
	void setValue(String attributeName, Object value);
}
