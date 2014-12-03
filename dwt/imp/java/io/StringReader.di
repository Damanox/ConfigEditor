// D import file generated from 'java\io\StringReader.d'
module java.io.StringReader;
import java.lang.all;
import java.io.Reader;
class StringReader : Reader
{
	String str;
	this(String str);
	public override int read(char[] cbuf, int off, int len);

	public override void close();

}
