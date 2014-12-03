// D import file generated from 'org\eclipse\swt\graphics\TextLayout.d'
module org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.GlyphMetrics;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.TextStyle;
import java.lang.all;
import java.nonstandard.SafeUtf;
public final class TextLayout : Resource
{
	alias Resource.init_ init_;
	private 
	{
		Font font;
		String text;
		String16 wtext;
		String segmentsText;
		String16 segmentsWText;
		UTF16index[] index8to16;
		UTF8index[] index16to8;
		int lineSpacing;
		int ascent;
		int descent;
		int alignment;
		int wrapWidth;
		int orientation;
		int indent;
		bool justify;
		int[] tabs;
		UTF8index[] segments;
		UTF16index[] wsegments;
		StyleItem[] styles;
		int stylesCount;
		StyleItem[] allRuns;
		StyleItem[][] runs;
		UTF8index[] lineOffset;
		int[] lineY;
		int[] lineWidth;
		void* mLangFontLink2;
		static const 
		{
			dchar LTR_MARK = '\U0000200e';
			dchar RTL_MARK = '\U0000200f';
		}
		static const 
		{
			wchar LTR_MARKw = '\U0000200e';
			wchar RTL_MARKw = '\U0000200f';
		}
		static const 
		{
			String STR_LTR_MARK = "\xe2\x80\x8e";
			String STR_RTL_MARK = "\xe2\x80\x8f";
		}
		static const 
		{
			wchar[] WSTR_LTR_MARK = "\xe2\x80\x8e"w;
			wchar[] WSTR_RTL_MARK = "\xe2\x80\x8f"w;
		}
		static const UTF8shift MARK_SIZE = {STR_LTR_MARK.length};

		static const UTF16shift WMARK_SIZE = WSTR_LTR_MARK.length;

		static assert(MARK_SIZE.internalValue == 3 && WMARK_SIZE == 1);
		static const int SCRIPT_VISATTR_SIZEOF = 2;

		static const int GOFFSET_SIZEOF = 8;

		mixin(gshared!"\x0a    static byte[16] CLSID_CMultiLanguage;\x0a    static byte[16] IID_IMLangFontLink2;\x0a    static bool static_this_completed = false;\x0a");
		private static void static_this();

		static const int UNDERLINE_IME_DOT = 1 << 16;

		static const int UNDERLINE_IME_DASH = 2 << 16;

		static const int UNDERLINE_IME_THICK = 3 << 16;

		static class StyleItem
		{
			TextStyle style;
			UTF8index UTF8start;
			UTF8shift UTF8length;
			UTF8index UTF8end();
			bool lineBreak;
			bool softBreak;
			bool tab;
			SCRIPT_ANALYSIS analysis;
			SCRIPT_CACHE* psc;
			WORD* glyphs;
			int glyphCount;
			WORD* clusters;
			SCRIPT_VISATTR* visAttrs;
			int* advances;
			GOFFSET* goffsets;
			int width;
			int ascent;
			int descent;
			int leading;
			int x;
			int underlinePos;
			int underlineThickness;
			int strikeoutPos;
			int strikeoutThickness;
			int* justify;
			SCRIPT_LOGATTR* psla;
			HFONT fallbackFont;
			void free();
			public override String toString();

		}

		public this(Device device);

		void breakRun(StyleItem run);
		void checkLayout();
		void computeRuns(GC gc);
		void destroy();
		SCRIPT_ANALYSIS cloneScriptAnalysis(ref SCRIPT_ANALYSIS src);
		public void draw(GC gc, int x, int y);

		public void draw(GC gc, int x, int y, int i_selectionStart, int i_selectionEnd, Color selectionForeground, Color selectionBackground);

		public void draw(GC gc, int x, int y, int i_selectionStart, int i_selectionEnd, Color selectionForeground, Color selectionBackground, int flags);

		void drawLines(bool advance, void* graphics, int x, int lineBaseline, int lineUnderlinePos, int lineBottom, StyleItem[] line, int index, void* color, RECT* clipRect, int alpha);
		RECT* drawBorder(bool advance, void* graphics, int x, int y, int lineHeight, void* color, void* selectionColor, bool fullSelection, RECT* clipRect, RECT* rect, int alpha, StyleItem[] line, int index, UTF8index selectionStart, UTF8index selectionEnd);
		int[] computePolyline(int left, int top, int right, int bottom);
		void freeRuns();
		public int getAlignment();

		public int getAscent();

		public Rectangle getBounds();

		public Rectangle getBounds(int i_start, int i_end);

		public int getDescent();

		public Font getFont();

		public int getIndent();

		public bool getJustify();

		HFONT getItemFont(StyleItem item);
		public int getLevel(int i_offset);

		public Rectangle getLineBounds(int lineIndex);

		public int getLineCount();

		int getLineIndent(int lineIndex);
		public int getLineIndex(int i_offset);

		public FontMetrics getLineMetrics(int lineIndex);

		public int[] getLineOffsets();

		public Point getLocation(int i_offset, bool trailing);

		public int getNextOffset(int i_offset, int movement);

		int _getOffset(int i_offset, int movement, bool forward);
		public int getOffset(Point point, int[] trailing);

		public int getOffset(int x, int y, int[] trailing);

		public int getOrientation();

		public int getPreviousOffset(int i_offset, int movement);

		public int[] getRanges();

		public int[] getSegments();

		void getSegmentsText(out String resUtf8, out String16 resUtf16);
		public int getSpacing();

		public TextStyle getStyle(int i_offset);

		public TextStyle[] getStyles();

		public int[] getTabs();

		public String getText();

		public int getWidth();

		public override bool isDisposed();

		StyleItem[] itemize();
		StyleItem[] merge(SCRIPT_ITEM* items, int itemCount);
		StyleItem[] reorder(StyleItem[] runs, bool terminate);
		public void setAlignment(int alignment);

		public void setAscent(int ascent);

		public void setDescent(int descent);

		public void setFont(Font font);

		public void setIndent(int indent);

		public void setJustify(bool justify);

		public void setOrientation(int orientation);

		public void setSegments(int[] i_segments);

		public void setSpacing(int spacing);

		public void setStyle(TextStyle style, int i_start, int i_end);

		public void setTabs(int[] tabs);

		public void setText(String text);

		public void setWidth(int width);

		bool shape(HDC hdc, StyleItem run, String16 wchars, int[] glyphCount, int maxGlyphs, SCRIPT_PROPERTIES* sp);
		void shape(HDC hdc, StyleItem run);
		UTF8index getUTF8index(UTF16index i);
		UTF16index getUTF16index(UTF8index i);
		UTF8index addUTF16shift(UTF8index i, UTF16shift dw);
		UTF16shift getUTF16length(StyleItem run);
		UTF8index validadeOffset(UTF8index offset, UCSindex step);
		public override String toString();

		UTF8index translateOffset(UTF8index offset);
		int untranslateOffset(UTF8index offset);
	}
}


