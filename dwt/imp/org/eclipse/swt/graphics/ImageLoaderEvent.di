// D import file generated from 'org\eclipse\swt\graphics\ImageLoaderEvent.d'
module org.eclipse.swt.graphics.ImageLoaderEvent;
public import org.eclipse.swt.internal.SWTEventObject;

public import org.eclipse.swt.graphics.ImageLoader;

public import org.eclipse.swt.graphics.ImageData;

import java.lang.all;
public class ImageLoaderEvent : SWTEventObject
{
	public ImageData imageData;

	public int incrementCount;

	public bool endOfImage;

	public this(ImageLoader source, ImageData imageData, int incrementCount, bool endOfImage);

	public override String toString();

}

