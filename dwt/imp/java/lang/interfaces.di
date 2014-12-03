// D import file generated from 'java\lang\interfaces.d'
module java.lang.interfaces;
import java.lang.String;
interface Cloneable
{
}
interface Comparable
{
	int compareTo(Object o);
}
interface CharSequence
{
	char charAt(int index);
	int length();
	CharSequence subSequence(int start, int end);
	String toString();
}
