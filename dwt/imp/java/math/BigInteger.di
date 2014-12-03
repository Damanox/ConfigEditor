// D import file generated from 'java\math\BigInteger.d'
module java.math.BigInteger;
import java.lang.all;
import java.util.Random;
version (Tango)
{
	import tango.math.BigInt;
}
else
{
	import std.bigint;
}
class BigInteger : Number
{
	static const BigInteger ZERO;

	static const BigInteger ONE;

	private BigInt bi;

	static this();
	this(byte[] val);
	this(int signum, byte[] magnitude);
	this(int bitLength, int certainty, Random rnd);
	this(int numBits, Random rnd);
	this(String val);
	this(String val, int radix);
	private this(BigInt v);

	private this(BigInteger v);

	private this(long v);

	BigInteger abs();
	BigInteger add(BigInteger val);
	BigInteger and(BigInteger val);
	BigInteger andNot(BigInteger val);
	int bitCount();
	int bitLength();
	BigInteger clearBit(int n);
	int compareTo(BigInteger val);
	int compareTo(Object o);
	BigInteger divide(BigInteger val);
	BigInteger[] divideAndRemainder(BigInteger val);
	override double doubleValue();
	bool equals(Object x);
	BigInteger flipBit(int n);
	override float floatValue();
	BigInteger gcd(BigInteger val);
	int getLowestSetBit();
	int hashCode();
	override int intValue();
	bool isProbablePrime(int certainty);
	override long longValue();
	BigInteger max(BigInteger val);
	BigInteger min(BigInteger val);
	BigInteger mod(BigInteger m);
	BigInteger modInverse(BigInteger m);
	BigInteger modPow(BigInteger exponent, BigInteger m);
	BigInteger multiply(BigInteger val);
	BigInteger negate();
	BigInteger not();
	BigInteger or(BigInteger val);
	BigInteger pow(int exponent);
	static BigInteger probablePrime(int bitLength, Random rnd);
	BigInteger remainder(BigInteger val);
	BigInteger setBit(int n);
	BigInteger shiftLeft(int n);
	BigInteger shiftRight(int n);
	int signum();
	BigInteger subtract(BigInteger val);
	bool testBit(int n);
	byte[] toByteArray();
	override String toString();
	String toString(int radix);
	static BigInteger valueOf(long val);
	BigInteger xor(BigInteger val);
}
