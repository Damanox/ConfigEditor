// D import file generated from 'java\util\regex\Pattern.d'
module java.util.regex.Pattern;
import java.lang.all;
import java.util.regex.Matcher;
class Pattern
{
	public static const int MULTILINE;


	public static const int CASE_INSENSITIVE;


	public static const int UNICODE_CASE;


	public String pattern();

	public int flags();

	public static Pattern compile(String regex);

	public static Pattern compile(String regex, int flags);

	public Matcher matcher(CharSequence input);

	public Matcher matcher(String input);

}
