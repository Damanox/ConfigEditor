// D import file generated from 'java\text\NumberFormat.d'
module java.text.NumberFormat;
import java.lang.all;
import java.text.Format;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Locale;
import java.util.Currency;
class NumberFormat : java.text.Format.Format
{
	static int FRACTION_FIELD;

	static int INTEGER_FIELD;

	static class Field : java.text.Format.Format.Field
	{
		static NumberFormat.Field CURRENCY;

		static NumberFormat.Field DECIMAL_SEPARATOR;

		static NumberFormat.Field EXPONENT;

		static NumberFormat.Field EXPONENT_SIGN;

		static NumberFormat.Field EXPONENT_SYMBOL;

		static NumberFormat.Field FRACTION;

		static NumberFormat.Field GROUPING_SEPARATOR;

		static NumberFormat.Field INTEGER;

		static NumberFormat.Field PERCENT;

		static NumberFormat.Field PERMILLE;

		static NumberFormat.Field SIGN;

		protected this(String name);

		protected Object readResolve();

	}

	this();
	override Object clone();
	bool equals(Object obj);
	String format(double number);
	abstract StringBuffer format(double number, StringBuffer toAppendTo, FieldPosition pos);
	String format(long number);
	abstract StringBuffer format(long number, StringBuffer toAppendTo, FieldPosition pos);
	override StringBuffer format(Object number, StringBuffer toAppendTo, FieldPosition pos);
	static Locale[] getAvailableLocales();
	Currency getCurrency();
	static NumberFormat getCurrencyInstance();
	static NumberFormat getCurrencyInstance(Locale inLocale);
	static NumberFormat getInstance();
	static NumberFormat getInstance(Locale inLocale);
	static NumberFormat getIntegerInstance();
	static NumberFormat getIntegerInstance(Locale inLocale);
	int getMaximumFractionDigits();
	int getMaximumIntegerDigits();
	int getMinimumFractionDigits();
	int getMinimumIntegerDigits();
	static NumberFormat getNumberInstance();
	static NumberFormat getNumberInstance(Locale inLocale);
	static NumberFormat getPercentInstance();
	static NumberFormat getPercentInstance(Locale inLocale);
	int hashCode();
	bool isGroupingUsed();
	bool isParseIntegerOnly();
	Number parse(String source);
	abstract Number parse(String source, ParsePosition parsePosition);
	override Object parseObject(String source, ParsePosition pos);
	void setCurrency(Currency currency);
	void setGroupingUsed(bool newValue);
	void setMaximumFractionDigits(int newValue);
	void setMaximumIntegerDigits(int newValue);
	void setMinimumFractionDigits(int newValue);
	void setMinimumIntegerDigits(int newValue);
	void setParseIntegerOnly(bool value);
}
