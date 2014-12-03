// D import file generated from 'java\text\CharacterIterator.d'
module java.text.CharacterIterator;
import java.lang.all;
interface CharacterIterator
{
	static const wchar DONE = '\xff';

	Object clone();
	char current();
	char first();
	int getBeginIndex();
	int getEndIndex();
	int getIndex();
	char last();
	char next();
	char previous();
	char setIndex(int position);
}
