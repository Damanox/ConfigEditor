// D import file generated from 'java\io\PushbackReader.d'
module java.io.PushbackReader;
import java.lang.all;
import java.io.Reader;
class PushbackReader : Reader
{
	this(Reader reader);
	void unread(char c);
	override int read(char[] cbuf, int off, int len);
	override void close();
}
