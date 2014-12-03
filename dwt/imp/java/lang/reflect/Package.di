// D import file generated from 'java\lang\reflect\Package.d'
module java.lang.reflect.Package;
import java.lang.all;
import java.lang.Class;
import java.lang.String;
class Package
{
	String getImplementationTitle();
	String getImplementationVendor();
	String getImplementationVersion();
	String getName();
	static Package getPackage(String name);
	static Package[] getPackages();
	String getSpecificationTitle();
	String getSpecificationVendor();
	String getSpecificationVersion();
	public override hash_t toHash();

	bool isCompatibleWith(String desired);
	override String toString();
}
