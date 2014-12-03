// D import file generated from 'org\eclipse\swt\graphics\Rectangle.d'
module org.eclipse.swt.graphics.Rectangle;
public import org.eclipse.swt.graphics.Point;

public import org.eclipse.swt.internal.SerializableCompatibility;

import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import java.lang.all;
public final class Rectangle : SerializableCompatibility
{
	public int x;

	public int y;

	public int width;

	public int height;

	public this(int x, int y, int width, int height);

	public void add(Rectangle rect);

	public bool contains(int x, int y);

	public bool contains(Point pt);

	public override equals_t opEquals(Object object);

	public override hash_t toHash();

	public void intersect(Rectangle rect);

	public Rectangle intersection(Rectangle rect);

	public bool intersects(int x, int y, int width, int height);

	public bool intersects(Rectangle rect);

	public bool isEmpty();

	public override String toString();

	public Rectangle makeUnion(Rectangle rect);

}


