// D import file generated from 'java\util\Currency.d'
module java.util.Currency;
import java.lang.all;
import java.util.Locale;
class Currency
{
	String getCurrencyCode();
	int getDefaultFractionDigits();
	static Currency getInstance(Locale locale);
	static Currency getInstance(String currencyCode);
	String getSymbol();
	String getSymbol(Locale locale);
	override String toString();
}
