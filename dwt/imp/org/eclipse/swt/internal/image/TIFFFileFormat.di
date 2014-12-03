// D import file generated from 'org\eclipse\swt\internal\image\TIFFFileFormat.d'
module org.eclipse.swt.internal.image.TIFFFileFormat;
import org.eclipse.swt.internal.image.TIFFRandomFileAccess;
import org.eclipse.swt.internal.image.TIFFDirectory;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.internal.image.FileFormat;
import java.lang.all;
final class TIFFFileFormat : FileFormat
{
	override bool isFileFormat(LEDataInputStream stream);
	override ImageData[] loadFromByteStream();
	override void unloadIntoByteStream(ImageLoader loader);
}

