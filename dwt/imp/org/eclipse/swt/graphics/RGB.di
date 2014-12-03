// D import file generated from 'org\eclipse\swt\graphics\RGB.d'
module org.eclipse.swt.graphics.RGB;
public import org.eclipse.swt.internal.SerializableCompatibility;

import org.eclipse.swt.SWT;
import java.lang.all;
public final class RGB : SerializableCompatibility
{
	public int red;

	public int green;

	public int blue;

	public this(int red, int green, int blue);

	public this(float hue, float saturation, float brightness);

	public float[] getHSB();

	public override equals_t opEquals(Object object);

	public override hash_t toHash();

	public override String toString();

}


alias TryConst!RGB constRGB;
