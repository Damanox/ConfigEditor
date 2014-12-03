// D import file generated from 'java\io\BufferedReader.d'
module java.io.BufferedReader;
import java.lang.all;
import java.io.Reader;
class BufferedReader : Reader
{
	this(Reader reader);
	public override int read(char[] cbuf, int off, int len);

	public override void close();

	public String readLine();

}
