// D import file generated from 'org\eclipse\swt\graphics\ImageLoader.d'
module org.eclipse.swt.graphics.ImageLoader;
public import org.eclipse.swt.graphics.ImageLoaderListener;

public import org.eclipse.swt.graphics.ImageLoaderEvent;

public import org.eclipse.swt.graphics.ImageData;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.image.FileFormat;
import java.util.Vector;
import java.lang.all;
public class ImageLoader
{
	public ImageData[] data;

	public int logicalScreenWidth;

	public int logicalScreenHeight;

	public int backgroundPixel;

	public int repeatCount;

	Vector imageLoaderListeners;
	public this();

	void reset();
	public ImageData[] load(InputStream stream);

	public ImageData[] load(String filename);

	public void save(OutputStream stream, int format);

	public void save(String filename, int format);

	public void addImageLoaderListener(ImageLoaderListener listener);

	public void removeImageLoaderListener(ImageLoaderListener listener);

	public bool hasListeners();

	public void notifyListeners(ImageLoaderEvent event);

}

