// D import file generated from 'org\eclipse\swt\graphics\Path.d'
module org.eclipse.swt.graphics.Path;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.PathData;
import java.lang.System;
import java.lang.all;
public class Path : Resource
{
	alias Resource.init_ init_;
	public Gdip.Path handle;

	Gdip.PointF currentPoint;
	Gdip.PointF startPoint;
	public this(Device device);

	public this(Device device, Path path, float flatness);

	public this(Device device, PathData data);

	public void addArc(float x, float y, float width, float height, float startAngle, float arcAngle);

	public void addPath(Path path);

	public void addRectangle(float x, float y, float width, float height);

	public void addString(String string, float x, float y, Font font);

	public void close();

	public bool contains(float x, float y, GC gc, bool outline);

	public void cubicTo(float cx1, float cy1, float cx2, float cy2, float x, float y);

	override void destroy();
	public void getBounds(float[] bounds);

	public void getCurrentPoint(float[] point);

	public PathData getPathData();

	public void lineTo(float x, float y);

	void init_(PathData data);
	public override bool isDisposed();

	public void moveTo(float x, float y);

	public void quadTo(float cx, float cy, float x, float y);

	public override String toString();

}

