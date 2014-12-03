// D import file generated from 'org\eclipse\swt\custom\Bullet.d'
module org.eclipse.swt.custom.Bullet;
import java.lang.all;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.ST;
public class Bullet
{
	public int type;

	public StyleRange style;

	public String text;

	int[] linesIndices;
	int count;
	public this(StyleRange style);

	public this(int type, StyleRange style);

	void addIndices(int startLine, int lineCount);
	int indexOf(int lineIndex);
	public override hash_t toHash();

	int[] removeIndices(int startLine, int replaceLineCount, int newLineCount, bool update);
	int size();
}

