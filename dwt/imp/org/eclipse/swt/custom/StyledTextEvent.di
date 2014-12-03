// D import file generated from 'org\eclipse\swt\custom\StyledTextEvent.d'
module org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.StyledTextContent;
class StyledTextEvent : Event
{
	int[] ranges;
	StyleRange[] styles;
	int alignment;
	int indent;
	bool justify;
	Bullet bullet;
	int bulletIndex;
	Color lineBackground;
	int[] segments;
	int replaceCharCount;
	int newCharCount;
	int replaceLineCount;
	int newLineCount;
	int x;
	int y;
	int ascent;
	int descent;
	StyleRange style;
	this(StyledTextContent content);
}
