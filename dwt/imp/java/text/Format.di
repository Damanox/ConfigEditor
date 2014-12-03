// D import file generated from 'java\text\Format.d'
module java.text.Format;
import java.lang.all;
import java.text.FieldPosition;
import java.text.AttributedCharacterIterator;
import java.text.ParsePosition;
class Format
{
	static class Field
	{
		protected this(String name);

	}

	this();
	Object clone();
	String format(Object obj);
	abstract StringBuffer format(Object obj, StringBuffer toAppendTo, FieldPosition pos);
	AttributedCharacterIterator formatToCharacterIterator(Object obj);
	Object parseObject(String source);
	abstract Object parseObject(String source, ParsePosition pos);
}
