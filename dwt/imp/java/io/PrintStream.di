// D import file generated from 'java\io\PrintStream.d'
module java.io.PrintStream;
import java.lang.all;
import java.lang.String;
import java.io.OutputStream;
class PrintStream
{
	this(OutputStream out_);
	this(OutputStream out_, bool autoFlush);
	this(OutputStream out_, bool autoFlush, String encoding);
	bool checkError();
	void close();
	void flush();
	void print(bool b);
	void print(char c);
	void print(double d);
	void print(float f);
	void print(int i);
	void print(long l);
	void print(Object obj);
	void print(String s);
	void println();
	void println(bool x);
	void println(char x);
	void println(double x);
	void println(float x);
	void println(int x);
	void println(long x);
	void println(Object x);
	void println(String x);
	protected void setError();

	void write(byte[] buf, int off, int len);
	void write(int b);
}
