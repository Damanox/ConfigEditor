// D import file generated from 'java\util\Locale.d'
module java.util.Locale;
import java.lang.all;
class Locale : Cloneable
{
	static Locale CANADA;

	static Locale CANADA_FRENCH;

	static Locale CHINA;

	static Locale CHINESE;

	static Locale ENGLISH;

	static Locale FRANCE;

	static Locale FRENCH;

	static Locale GERMAN;

	static Locale GERMANY;

	static Locale ITALIAN;

	static Locale ITALY;

	static Locale JAPAN;

	static Locale JAPANESE;

	static Locale KOREA;

	static Locale KOREAN;

	static Locale PRC;

	static Locale SIMPLIFIED_CHINESE;

	static Locale TAIWAN;

	static Locale TRADITIONAL_CHINESE;

	static Locale UK;

	static Locale US;

	this(String language);
	this(String language, String country);
	this(String language, String country, String variant);
	Object clone();
	override equals_t opEquals(Object obj);
	static Locale[] getAvailableLocales();
	String getCountry();
	static Locale getDefault();
	String getDisplayCountry();
	String getDisplayCountry(Locale inLocale);
	String getDisplayLanguage();
	String getDisplayLanguage(Locale inLocale);
	String getDisplayName();
	String getDisplayName(Locale inLocale);
	String getDisplayVariant();
	String getDisplayVariant(Locale inLocale);
	String getISO3Country();
	String getISO3Language();
	static String[] getISOCountries();
	static String[] getISOLanguages();
	String getLanguage();
	String getVariant();
	override hash_t toHash();
	static void setDefault(Locale newLocale);
	override String toString();
}
