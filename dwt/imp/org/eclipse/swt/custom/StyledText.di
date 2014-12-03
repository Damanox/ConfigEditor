// D import file generated from 'org\eclipse\swt\custom\StyledText.d'
module org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.accessibility.ACC;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleTextAdapter;
import org.eclipse.swt.accessibility.AccessibleTextEvent;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.RTFTransfer;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GlyphMetrics;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.internal.BidiUtil;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.printing.Printer;
import org.eclipse.swt.printing.PrinterData;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Caret;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.IME;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.TextChangeListener;
import org.eclipse.swt.custom.StyledTextRenderer;
import org.eclipse.swt.custom.StyledTextPrintOptions;
import org.eclipse.swt.custom.ExtendedModifyListener;
import org.eclipse.swt.custom.BidiSegmentListener;
import org.eclipse.swt.custom.LineBackgroundListener;
import org.eclipse.swt.custom.LineStyleListener;
import org.eclipse.swt.custom.PaintObjectListener;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.custom.MovementListener;
import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.TextChangedEvent;
import org.eclipse.swt.custom.TextChangingEvent;
import org.eclipse.swt.custom.DefaultContent;
import org.eclipse.swt.custom.StyledTextDropTargetEffect;
import org.eclipse.swt.custom.StyledTextListener;
import org.eclipse.swt.custom.ST;
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
public class StyledText : Canvas
{
	alias Canvas.computeSize computeSize;
	package 
	{
		static const char TAB = '\x09';

		version (Tango)
		{
			static const String PlatformLineDelimiter = tango.io.model.IFile.FileConst.NewlineString;

		}
		else
		{
			static const String PlatformLineDelimiter = std.ascii.newline;

		}
		static const int BIDI_CARET_WIDTH = 3;

		static const int DEFAULT_WIDTH = 64;

		static const int DEFAULT_HEIGHT = 64;

		static const int V_SCROLL_RATE = 50;

		static const int H_SCROLL_RATE = 10;

		static const int ExtendedModify = 3000;

		static const int LineGetBackground = 3001;

		static const int LineGetStyle = 3002;

		static const int TextChanging = 3003;

		static const int TextSet = 3004;

		static const int VerifyKey = 3005;

		static const int TextChanged = 3006;

		static const int LineGetSegments = 3007;

		static const int PaintObject = 3008;

		static const int WordNext = 3009;

		static const int WordPrevious = 3010;

		static const int PREVIOUS_OFFSET_TRAILING = 0;

		static const int OFFSET_LEADING = 1;

		Color selectionBackground;
		Color selectionForeground;
		StyledTextContent content;
		StyledTextRenderer renderer;
		Listener listener;
		TextChangeListener textChangeListener;
		int verticalScrollOffset = 0;
		int horizontalScrollOffset = 0;
		int topIndex = 0;
		int topIndexY;
		int clientAreaHeight = 0;
		int clientAreaWidth = 0;
		int tabLength = 4;
		int leftMargin;
		int topMargin;
		int rightMargin;
		int bottomMargin;
		int columnX;
		int caretOffset = 0;
		int caretAlignment;
		Point selection;
		Point clipboardSelection;
		bool selectedTextValid = true;
		int selectionAnchor;
		Point doubleClickSelection;
		bool editable = true;
		bool wordWrap = false;
		bool doubleClickEnabled = true;
		bool overwrite = false;
		int textLimit = -1;
		int[int] keyActionMap;
		Color background = null;
		Color foreground = null;
		Clipboard clipboard;
		int clickCount;
		int autoScrollDirection = SWT.NULL;
		int autoScrollDistance = 0;
		int lastTextChangeStart;
		int lastTextChangeNewLineCount;
		int lastTextChangeNewCharCount;
		int lastTextChangeReplaceLineCount;
		int lastTextChangeReplaceCharCount;
		int lastLineBottom;
		bool isMirrored_;
		bool bidiColoring = false;
		Image leftCaretBitmap = null;
		Image rightCaretBitmap = null;
		int caretDirection = SWT.NULL;
		int caretWidth = 0;
		Caret defaultCaret = null;
		bool updateCaretDirection = true;
		bool fixedLineHeight;
		bool dragDetect_ = true;
		IME ime;
		int alignment;
		bool justify;
		int indent;
		int lineSpacing;
		mixin(gshared!"const static bool IS_CARBON, IS_GTK, IS_MOTIF;");
		mixin(sharedStaticThis!"{\x0a        String platform = SWT.getPlatform();\x0a        IS_CARBON = (\"carbon\" == platform);\x0a        IS_GTK    = (\"gtk\"    == platform);\x0a        IS_MOTIF  = (\"motif\"  == platform);\x0a    }");
		static class Printing : Runnable
		{
			static const int LEFT = 0;

			static const int CENTER = 1;

			static const int RIGHT = 2;

			Printer printer;
			StyledTextRenderer printerRenderer;
			StyledTextPrintOptions printOptions;
			Rectangle clientArea;
			FontData fontData;
			Font printerFont;
			Resource[Resource] resources;
			int tabLength;
			GC gc;
			int pageWidth;
			int startPage;
			int endPage;
			int startLine;
			int endLine;
			bool singleLine;
			Point selection = null;
			bool mirrored;
			int lineSpacing;
			int printMargin;
			this(StyledText styledText, Printer printer, StyledTextPrintOptions printOptions);
			void cacheLineData(StyledText styledText);
			StyledTextContent copyContent(StyledTextContent original);
			void dispose();
			void init_();
			void print();
			void printDecoration(int page, bool header, TextLayout layout);
			void printDecorationSegment(String segment, int alignment, int page, bool header, TextLayout layout);
			void printLine(int x, int y, GC gc, Color foreground, Color background, TextLayout layout, TextLayout printLayout, int index);
			public void run();

		}

		class RTFWriter : TextWriter
		{
			alias TextWriter.write write;
			static const int DEFAULT_FOREGROUND = 0;

			static const int DEFAULT_BACKGROUND = 1;

			Color[] colorTable;
			Font[] fontTable;
			bool WriteUnicode;
			public this(int start, int length);

			public override void close();

			int getColorIndex(Color color, int defaultIndex);
			int getFontIndex(Font font);
			void setUnicode();
			void write(String string, int start, int end);
			void writeHeader();
			public override void writeLine(String line, int lineOffset);

			public override void writeLineDelimiter(String lineDelimiter);

			void writeStyledLine(String line, int lineOffset, int[] ranges, StyleRange[] styles, Color lineBackground, int indent, int alignment, bool justify);
		}
		class TextWriter
		{
			private StringBuffer buffer;

			private int startOffset;

			private int endOffset;

			private bool isClosed_ = false;

			public this(int start, int length);

			public void close();

			public int getCharCount();

			public int getStart();

			public bool isClosed();

			public override String toString();

			void write(String string);
			void write(String string, int offset);
			void write(int i);
			void write(char i);
			public void writeLine(String line, int lineOffset);

			public void writeLineDelimiter(String lineDelimiter);

		}
		public this(Composite parent, int style);

		public void addExtendedModifyListener(ExtendedModifyListener extendedModifyListener);

		public void addBidiSegmentListener(BidiSegmentListener listener);

		public void addLineBackgroundListener(LineBackgroundListener listener);

		public void addLineStyleListener(LineStyleListener listener);

		public void addModifyListener(ModifyListener modifyListener);

		public void addPaintObjectListener(PaintObjectListener listener);

		public void addSelectionListener(SelectionListener listener);

		public void addVerifyKeyListener(VerifyKeyListener listener);

		public void addVerifyListener(VerifyListener verifyListener);

		public void addWordMovementListener(MovementListener movementListener);

		public void append(String string);

		void calculateScrollBars();
		void calculateTopIndex(int delta);
		static int checkStyle(int style);
		void claimBottomFreeSpace();
		void claimRightFreeSpace();
		void clearSelection(bool sendEvent);
		public override Point computeSize(int wHint, int hHint, bool changed);

		public void copy();

		public void copy(int clipboardType);

		public int getAlignment();

		int getAvailableHeightAbove(int height);
		int getAvailableHeightBellow(int height);
		String getModelDelimitedText(String text);
		bool checkDragDetect(Event event);
		void createKeyBindings();
		void createCaretBitmaps();
		public void cut();

		void doAutoScroll(Event event);
		void doAutoScroll(int direction, int distance);
		void doBackspace();
		void doContent(dchar key);
		void doContentEnd();
		void doContentStart();
		void doCursorPrevious();
		void doCursorNext();
		void doDelete();
		void doDeleteWordNext();
		void doDeleteWordPrevious();
		void doLineDown(bool select);
		void doLineEnd();
		void doLineStart();
		void doLineUp(bool select);
		void doMouseLocationChange(int x, int y, bool select);
		void doMouseSelection();
		int doMouseWordSelect(int x, int newCaretOffset, int line);
		void doPageDown(bool select, int height);
		void doPageEnd();
		void doPageStart();
		void doPageUp(bool select, int height);
		void doSelection(int direction);
		void doSelectionCursorNext();
		void doSelectionCursorPrevious();
		void doSelectionLineDown();
		void doSelectionLineUp();
		void doSelectionPageDown(int pixels);
		void doSelectionPageUp(int pixels);
		void doSelectionWordNext();
		void doSelectionWordPrevious();
		void doVisualPrevious();
		void doVisualNext();
		void doWordNext();
		void doWordPrevious();
		void endAutoScroll();
		public override Color getBackground();

		public int getBaseline();

		public int getBaseline(int offset);

		public bool getBidiColoring();

		int getBottomIndex();
		Rectangle getBoundsAtOffset(int offset);
		public int getCaretOffset();

		int getCaretWidth();
		Object getClipboardContent(int clipboardType);
		int getClusterNext(int offset, int lineIndex);
		int getClusterPrevious(int offset, int lineIndex);
		public StyledTextContent getContent();

		public override bool getDragDetect();

		public bool getDoubleClickEnabled();

		public bool getEditable();

		public override Color getForeground();

		int getHorizontalIncrement();
		public int getHorizontalIndex();

		public int getHorizontalPixel();

		public int getIndent();

		public bool getJustify();

		public int getKeyBinding(int key);

		public int getCharCount();

		public String getLine(int lineIndex);

		public int getLineAlignment(int index);

		public int getLineAtOffset(int offset);

		public Color getLineBackground(int index);

		public Bullet getLineBullet(int index);

		StyledTextEvent getLineBackgroundData(int lineOffset, String line);
		public int getLineCount();

		int getLineCountWhole();
		public String getLineDelimiter();

		public int getLineHeight();

		public int getLineHeight(int offset);

		public int getLineIndent(int index);

		public bool getLineJustify(int index);

		public int getLineSpacing();

		StyledTextEvent getLineStyleData(int lineOffset, String line);
		public int getLinePixel(int lineIndex);

		public int getLineIndex(int y);

		public Point getLocationAtOffset(int offset);

		public int getOffsetAtLine(int lineIndex);

		public int getOffsetAtLocation(Point point);

		int getOffsetAtPoint(int x, int y);
		int getOffsetAtPoint(int x, int y, int lineIndex);
		int getOffsetAtPoint(int x, int y, int[] trailing, bool inTextOnly);
		public int getOrientation();

		int getPartialBottomIndex();
		int getPartialTopIndex();
		String getPlatformDelimitedText(TextWriter writer);
		public int[] getRanges();

		public int[] getRanges(int start, int length);

		public Point getSelection();

		public Point getSelectionRange();

		public Color getSelectionBackground();

		public int getSelectionCount();

		public Color getSelectionForeground();

		public String getSelectionText();

		public override int getStyle();

		int[] getBidiSegments(int lineOffset, String line);
		int[] getBidiSegmentsCompatibility(String line, int lineOffset);
		public StyleRange getStyleRangeAtOffset(int offset);

		public StyleRange[] getStyleRanges();

		public StyleRange[] getStyleRanges(bool includeRanges);

		public StyleRange[] getStyleRanges(int start, int length);

		public StyleRange[] getStyleRanges(int start, int length, bool includeRanges);

		public int getTabs();

		public String getText();

		public String getText(int start, int end);

		public Rectangle getTextBounds(int start, int end);

		public String getTextRange(int start, int length);

		public int getTextLimit();

		public int getTopIndex();

		public int getTopPixel();

		int getVerticalIncrement();
		int getVerticalScrollOffset();
		int getVisualLineIndex(TextLayout layout, int offsetInLine);
		int getCaretDirection();
		int getCaretLine();
		int getWrapWidth();
		int getWordNext(int offset, int movement);
		int getWordPrevious(int offset, int movement);
		public bool getWordWrap();

		Point getPointAtOffset(int offset);
		public void insert(String string);

		void installDefaultContent();
		void installListeners();
		void internalRedrawRange(int start, int length);
		void handleCompositionOffset(Event event);
		void handleCompositionSelection(Event event);
		void handleCompositionChanged(Event event);
		void handleDispose(Event event);
		void handleHorizontalScroll(Event event);
		void handleKey(Event event);
		void handleKeyDown(Event event);
		void handleKeyUp(Event event);
		void handleMouseDown(Event event);
		void handleMouseMove(Event event);
		void handleMouseUp(Event event);
		void handlePaint(Event event);
		void handleResize(Event event);
		void handleTextChanged(TextChangedEvent event);
		void handleTextChanging(TextChangingEvent event);
		void handleTextSet(TextChangedEvent event);
		void handleTraverse(Event event);
		void handleVerticalScroll(Event event);
		void initializeAccessible();
		Label getAssociatedLabel();
		String stripMnemonic(String string);
		dchar _findMnemonic(String string);
		public void invokeAction(int action);

		bool isBidi();
		bool isBidiCaret();
		bool isFixedLineHeight();
		bool isLineDelimiter(int offset);
		bool isMirrored();
		bool isSingleLine();
		void modifyContent(Event event, bool updateCaret);
		void paintObject(GC gc, int x, int y, int ascent, int descent, StyleRange style, Bullet bullet, int bulletIndex);
		public void paste();

		public void print();

		public Runnable print(Printer printer);

		public Runnable print(Printer printer, StyledTextPrintOptions options);

		public override void redraw();

		public override void redraw(int x, int y, int width, int height, bool all);

		void redrawLines(int startLine, int lineCount);
		void redrawLinesBullet(int[] redrawLines);
		public void redrawRange(int start, int length, bool clearBackground);

		public void removeBidiSegmentListener(BidiSegmentListener listener);

		public void removeExtendedModifyListener(ExtendedModifyListener extendedModifyListener);

		public void removeLineBackgroundListener(LineBackgroundListener listener);

		public void removeLineStyleListener(LineStyleListener listener);

		public void removeModifyListener(ModifyListener modifyListener);

		public void removePaintObjectListener(PaintObjectListener listener);

		public void removeSelectionListener(SelectionListener listener);

		public void removeVerifyListener(VerifyListener verifyListener);

		public void removeVerifyKeyListener(VerifyKeyListener listener);

		public void removeWordMovementListener(MovementListener listener);

		public void replaceStyleRanges(int start, int length, StyleRange[] ranges);

		public void replaceTextRange(int start, int length, String text);

		void reset();
		void resetCache(int firstLine, int count);
		void resetSelection();
		public override void scroll(int destX, int destY, int x, int y, int width, int height, bool all);

		bool scrollHorizontal(int pixels, bool adjustScrollBar);
		bool scrollVertical(int pixels, bool adjustScrollBar);
		void scrollText(int srcY, int destY);
		public void selectAll();

		void sendKeyEvent(Event event);
		StyledTextEvent sendLineEvent(int eventType, int lineOffset, String line);
		void sendModifyEvent(Event event);
		void sendSelectionEvent();
		int sendWordBoundaryEvent(int eventType, int movement, int offset, int newOffset, String lineText, int lineOffset);
		public void setAlignment(int alignment);

		public override void setBackground(Color color);

		public override void setCaret(Caret caret);

		public void setBidiColoring(bool mode);

		void setCaretLocation();
		void setCaretLocation(Point location, int direction);
		public void setCaretOffset(int offset);

		void setClipboardContent(int start, int length, int clipboardType);
		public void setContent(StyledTextContent newContent);

		public override void setCursor(Cursor cursor);

		public void setDoubleClickEnabled(bool enable);

		public override void setDragDetect(bool dragDetect_);

		public void setEditable(bool editable);

		public override void setFont(Font font);

		public override void setForeground(Color color);

		public void setHorizontalIndex(int offset);

		public void setHorizontalPixel(int pixel);

		public void setIndent(int indent);

		public void setJustify(bool justify);

		public void setKeyBinding(int key, int action);

		public void setLineAlignment(int startLine, int lineCount, int alignment);

		public void setLineBackground(int startLine, int lineCount, Color background);

		public void setLineBullet(int startLine, int lineCount, Bullet bullet);

		void setVariableLineHeight();
		public void setLineIndent(int startLine, int lineCount, int indent);

		public void setLineJustify(int startLine, int lineCount, bool justify);

		public void setLineSpacing(int lineSpacing);

		void setMargins(int leftMargin, int topMargin, int rightMargin, int bottomMargin);
		void setMouseWordSelectionAnchor();
		public void setOrientation(int orientation);

		void setScrollBars(bool vertical);
		public void setSelection(int start);

		public void setSelection(Point point);

		public void setSelectionBackground(Color color);

		public void setSelectionForeground(Color color);

		public void setSelection(int start, int end);

		void setSelection(int start, int length, bool sendEvent);
		public void setSelectionRange(int start, int length);

		public void setStyleRange(StyleRange range);

		public void setStyleRanges(int start, int length, int[] ranges, StyleRange[] styles);

		public void setStyleRanges(int[] ranges, StyleRange[] styles);

		void setStyleRanges(int start, int length, int[] ranges, StyleRange[] styles, bool reset);
		public void setStyleRanges(StyleRange[] ranges);

		public void setTabs(int tabs);

		public void setText(String text);

		public void setTextLimit(int limit);

		public void setTopIndex(int topIndex);

		public void setTopPixel(int pixel);

		public void setWordWrap(bool wrap);

		bool showLocation(Rectangle rect, bool scrollPage);
		void showCaret();
		public void showSelection();

		void updateSelection(int startOffset, int replacedLength, int newLength);
		int getPreviousCharOffset(String F = __FILE__, uint L = __LINE__)(int lineIndex, int offsetInLine)
		{
			String line = content.getLine(lineIndex);
			if (offsetInLine < 0 || offsetInLine > line.length)
			{
				getDwtLogger().warn(F, L, Format("Clamped UTF-8 offset:\x0aoffsetInLine = {}, line.length = {}, line = {}", offsetInLine, line.length, line));
				return offsetInLine - 1;
			}
			return line.offsetBefore(offsetInLine);
		}
	}
}

