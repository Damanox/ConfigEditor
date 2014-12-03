// D import file generated from 'java\io\PrintWriter.d'
module java.io.PrintWriter;
import java.lang.all;
import java.io.OutputStream;
import java.io.Writer;
class PrintWriter
{
	this(OutputStream out_);
	this(OutputStream out_, bool autoFlush);
	this(Writer out_);
	this(Writer out_, bool autoFlush);
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

	void write(int c);
	void write(String s);
	void write(String s, int off, int len);
}
