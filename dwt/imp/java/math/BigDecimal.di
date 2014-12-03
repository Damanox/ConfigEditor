// D import file generated from 'java\math\BigDecimal.d'
module java.math.BigDecimal;
import java.lang.all;
import java.math.BigInteger;
class BigDecimal : Number
{
	static int ROUND_CEILING;

	static int ROUND_DOWN;

	static int ROUND_FLOOR;

	static int ROUND_HALF_DOWN;

	static int ROUND_HALF_EVEN;

	static int ROUND_HALF_UP;

	static int ROUND_UNNECESSARY;

	static int ROUND_UP;

	private BigInteger intVal;

	private int scale_;

	private int intCompact;

	private int precision;

	private static const MAX_BIGINT_BITS = 62;

	this(BigInteger val);
	this(BigInteger unscaledVal, int scale_);
	this(double val);
	this(String val);
	BigDecimal abs();
	BigDecimal add(BigDecimal val);
	int compareTo(BigDecimal val);
	int compareTo(Object o);
	BigDecimal divide(BigDecimal val, int roundingMode);
	BigDecimal divide(BigDecimal val, int scale_, int roundingMode);
	override double doubleValue();
	bool equals(Object x);
	override float floatValue();
	int hashCode();
	override int intValue();
	override long longValue();
	BigDecimal max(BigDecimal val);
	BigDecimal min(BigDecimal val);
	BigDecimal movePointLeft(int n);
	BigDecimal movePointRight(int n);
	BigDecimal multiply(BigDecimal val);
	BigDecimal negate();
	int scale();
	BigDecimal setScale(int scale_);
	BigDecimal setScale(int scale_, int roundingMode);
	int signum();
	BigDecimal subtract(BigDecimal val);
	BigInteger toBigInteger();
	override String toString();
	BigInteger unscaledValue();
	static BigDecimal valueOf(long val);
	static BigDecimal valueOf(long unscaledVal, int scale_);
}
