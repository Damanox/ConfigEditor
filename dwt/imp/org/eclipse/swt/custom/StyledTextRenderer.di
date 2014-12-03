// D import file generated from 'org\eclipse\swt\custom\StyledTextRenderer.d'
module org.eclipse.swt.custom.StyledTextRenderer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GlyphMetrics;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.IME;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.TextChangingEvent;
import org.eclipse.swt.custom.ST;
import org.eclipse.swt.custom.StyledTextEvent;
import java.lang.all;
import java.nonstandard.UnsafeUtf;
class StyledTextRenderer
{
	Device device;
	StyledText styledText;
	StyledTextContent content;
	Font regularFont;
	Font boldFont;
	Font italicFont;
	Font boldItalicFont;
	int tabWidth;
	int ascent;
	int descent;
	int averageCharWidth;
	int topIndex = -1;
	TextLayout[] layouts;
	int lineCount;
	int[] lineWidth;
	int[] lineHeight;
	LineInfo[] lines;
	int maxWidth;
	int maxWidthLineIndex;
	bool idleRunning;
	Bullet[] bullets;
	int[] bulletsIndices;
	int[] redrawLines;
	int[] ranges;
	int styleCount;
	StyleRange[] styles;
	StyleRange[] stylesSet;
	int stylesSetCount = 0;
	static const int BULLET_MARGIN = 8;

	static const bool COMPACT_STYLES = true;

	static const bool MERGE_STYLES = true;

	static const int GROW = 32;

	static const int IDLE_TIME = 50;

	static const int CACHE_SIZE = 128;

	static const int BACKGROUND = 1 << 0;

	static const int ALIGNMENT = 1 << 1;

	static const int INDENT = 1 << 2;

	static const int JUSTIFY = 1 << 3;

	static const int SEGMENTS = 1 << 5;

	static class LineInfo
	{
		int flags;
		Color background;
		int alignment;
		int indent;
		bool justify;
		int[] segments;
		public this();

		public this(LineInfo info);

	}

	this(Device device, StyledText styledText);
	int addMerge(int[] mergeRanges, StyleRange[] mergeStyles, int mergeCount, int modifyStart, int modifyEnd);
	int addMerge(StyleRange[] mergeStyles, int mergeCount, int modifyStart, int modifyEnd);
	void calculate(int startLine, int lineCount);
	void calculateClientArea();
	void calculateIdle();
	void clearLineBackground(int startLine, int count);
	void clearLineStyle(int startLine, int count);
	void copyInto(StyledTextRenderer renderer);
	void dispose();
	void disposeTextLayout(TextLayout layout);
	void drawBullet(Bullet bullet, GC gc, int paintX, int paintY, int index, int lineAscent, int lineDescent);
	int drawLine(int lineIndex, int paintX, int paintY, GC gc, Color widgetBackground, Color widgetForeground);
	int getBaseline();
	Font getFont(int style);
	FontData[] getFontData(int style);
	int getHeight();
	int getLineAlignment(int index, int defaultAlignment);
	Color getLineBackground(int index, Color defaultBackground);
	Bullet getLineBullet(int index, Bullet defaultBullet);
	int getLineHeight();
	int getLineHeight(int lineIndex);
	int getLineIndent(int index, int defaultIndent);
	bool getLineJustify(int index, bool defaultJustify);
	int[] getLineSegments(int index, int[] defaultSegments);
	int getRangeIndex(int offset, int low, int high);
	int[] getRanges(int start, int length);
	StyleRange[] getStyleRanges(int start, int length, bool includeRanges);
	StyleRange getStyleRange(StyleRange style);
	TextLayout getTextLayout(int lineIndex);
	TextLayout getTextLayout(int lineIndex, int orientation, int width, int lineSpacing);
	int getWidth();
	void reset();
	void reset(int startLine, int lineCount);
	void setContent(StyledTextContent content);
	void setFont(Font font, int tabs);
	void setLineAlignment(int startLine, int count, int alignment);
	void setLineBackground(int startLine, int count, Color background);
	void setLineBullet(int startLine, int count, Bullet bullet);
	void setLineIndent(int startLine, int count, int indent);
	void setLineJustify(int startLine, int count, bool justify);
	void setLineSegments(int startLine, int count, int[] segments);
	void setStyleRanges(int[] newRanges, StyleRange[] newStyles);
	void textChanging(TextChangingEvent event);
	void updateBullets(int startLine, int replaceLineCount, int newLineCount, bool update);
	void updateRanges(int start, int replaceCharCount, int newCharCount);
}
