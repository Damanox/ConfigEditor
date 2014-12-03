// D import file generated from 'java\text\AttributedCharacterIterator.d'
module java.text.AttributedCharacterIterator;
import java.text.CharacterIterator;
import java.util.Set;
import java.util.Map;
import java.lang.all;
interface AttributedCharacterIterator : CharacterIterator
{
	static class Attribute
	{
		static AttributedCharacterIterator.Attribute INPUT_METHOD_SEGMENT;

		static AttributedCharacterIterator.Attribute LANGUAGE;

		static AttributedCharacterIterator.Attribute READING;

		protected this(String name);

		override equals_t opEquals(Object obj);
		protected String getName();

		override hash_t toHash();
		protected Object readResolve();

		override String toString();
	}

	Set getAllAttributeKeys();
	Object getAttribute(AttributedCharacterIterator.Attribute attribute);
	Map getAttributes();
	int getRunLimit();
	int getRunLimit(AttributedCharacterIterator.Attribute attribute);
	int getRunLimit(Set attributes);
	int getRunStart();
	int getRunStart(AttributedCharacterIterator.Attribute attribute);
	int getRunStart(Set attributes);
}
