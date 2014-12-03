// D import file generated from 'org\eclipse\swt\custom\DefaultContent.d'
module org.eclipse.swt.custom.DefaultContent;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.TextChangeListener;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.custom.StyledTextListener;
import org.eclipse.swt.custom.StyledText;
import java.lang.all;
import java.nonstandard.UnsafeUtf;
version (Tango)
{
	static import tango.io.model.IFile;
}
else
{
	static import std.string;
}
class DefaultContent : StyledTextContent
{
	version (Tango)
	{
		private static const String LineDelimiter = tango.io.model.IFile.FileConst.NewlineString;


	}
	else
	{
		private static const String LineDelimiter = std.ascii.newline;


	}
	StyledTextListener[] textListeners;
	char[] textStore;
	int gapStart = -1;
	int gapEnd = -1;
	int gapLine = -1;
	int highWatermark = 300;
	int lowWatermark = 50;
	int[][] lines;
	int lineCount_ = 0;
	int expandExp = 1;
	int replaceExpandExp = 1;
	this();
	void addLineIndex(int start, int length);
	int[][] addLineIndex(int start, int length, int[][] linesArray, int count);
	public void addTextChangeListener(TextChangeListener listener);

	void adjustGap(int position, int sizeHint, int line);
	void indexLines();
	bool isDelimiter(char ch);
	protected bool isValidReplace(int start, int replaceLength, String newText);

	int[][] indexLines(int offset, int length, int numLines);
	void insert(int position, String text);
	void moveAndResizeGap(int position, int size, int newGapLine);
	int lineCount(int startOffset, int length);
	int lineCount(String text);
	public int getCharCount();

	public String getLine(int index);

	public String getLineDelimiter();

	String getFullLine(int index);
	String getPhysicalLine(int index);
	public int getLineCount();

	public int getLineAtOffset(int charPosition);

	int getLineAtPhysicalOffset(int position);
	public int getOffsetAtLine(int lineIndex);

	void expandLinesBy(int numLines);
	void error(int code);
	bool gapExists();
	String getPhysicalText(int start, int length_);
	public String getTextRange(int start, int length_);

	public void removeTextChangeListener(TextChangeListener listener);

	public void replaceTextRange(int start, int replaceLength, String newText);

	void sendTextEvent(StyledTextEvent event);
	public void setText(String text);

	void delete_(int position, int length_, int numLines);
}
