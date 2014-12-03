// D import file generated from 'org\eclipse\swt\custom\StyledTextContent.d'
module org.eclipse.swt.custom.StyledTextContent;
import java.lang.all;
import org.eclipse.swt.custom.TextChangeListener;
public interface StyledTextContent
{
	public void addTextChangeListener(TextChangeListener listener);

	public int getCharCount();

	public String getLine(int lineIndex);

	public int getLineAtOffset(int offset);

	public int getLineCount();

	public String getLineDelimiter();

	public int getOffsetAtLine(int lineIndex);

	public String getTextRange(int start, int length);

	public void removeTextChangeListener(TextChangeListener listener);

	public void replaceTextRange(int start, int replaceLength, String text);

	public void setText(String text);

}

