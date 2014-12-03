// D import file generated from 'org\eclipse\swt\internal\image\FileFormat.d'
module org.eclipse.swt.internal.image.FileFormat;
import java.lang.all;
public import org.eclipse.swt.graphics.ImageLoader;

public import org.eclipse.swt.graphics.ImageData;

public import org.eclipse.swt.internal.image.LEDataInputStream;

public import org.eclipse.swt.internal.image.LEDataOutputStream;

import org.eclipse.swt.SWT;
public import java.io.InputStream;

public import java.io.OutputStream;

import org.eclipse.swt.internal.image.GIFFileFormat;
import org.eclipse.swt.internal.image.WinBMPFileFormat;
import org.eclipse.swt.internal.image.WinICOFileFormat;
import org.eclipse.swt.internal.image.TIFFFileFormat;
import org.eclipse.swt.internal.image.OS2BMPFileFormat;
import org.eclipse.swt.internal.image.JPEGFileFormat;
import org.eclipse.swt.internal.image.PNGFileFormat;
version (Tango)
{
	import tango.core.Tuple;
}
else
{
	import std.typetuple;
	alias TypeTuple Tuple;
}
public abstract class FileFormat
{
	static const String FORMAT_PACKAGE = "org.eclipse.swt.internal.image";

	static const String FORMAT_SUFFIX = "FileFormat";

	static const String[] FORMATS = ["WinBMP"[], "WinBMP", "GIF", "WinICO", "JPEG", "PNG", "TIFF", "OS2BMP"];

	alias Tuple!(WinBMPFileFormat, WinBMPFileFormat, GIFFileFormat, WinICOFileFormat, JPEGFileFormat, PNGFileFormat, TIFFFileFormat, OS2BMPFileFormat) TFormats;
	LEDataInputStream inputStream;
	LEDataOutputStream outputStream;
	ImageLoader loader;
	int compression;
	abstract bool isFileFormat(LEDataInputStream stream);
	abstract ImageData[] loadFromByteStream();
	public ImageData[] loadFromStream(LEDataInputStream stream);

	public static ImageData[] load(InputStream istr, ImageLoader loader);

	public static void save(OutputStream os, int format, ImageLoader loader);

	abstract void unloadIntoByteStream(ImageLoader loader);
	public void unloadIntoStream(ImageLoader loader, LEDataOutputStream stream);

}


