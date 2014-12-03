// D import file generated from 'java\nonstandard\RuntimeTraits.d'
module java.nonstandard.RuntimeTraits;
import java.lang.all;
version (Tango)
{
	private const String CONST_CLASS_INFO = "new ClassInfo()";


	private const String CONST_TYPE_INFO = "new TypeInfo()";


}
else
{
	private const String CONST_CLASS_INFO = "new const(ClassInfo)()";


	private const String CONST_TYPE_INFO = "new const(TypeInfo)()";


}
alias typeof(mixin(CONST_CLASS_INFO)) ConstClassInfo;
alias typeof(mixin(CONST_TYPE_INFO)) ConstTypeInfo;
public bool isJavaPrimitive(in TypeInfo type);

public TypeInfo_Class getTypeInfo(in ClassInfo ci);

public TypeInfo_Class getSuperclass(in ClassInfo ci);

public TypeInfo_Class getSuperclass(in TypeInfo ti);

public TypeInfo_Interface[] getInterfaces(in ClassInfo ci);

public TypeInfo_Interface[] getInterfaces(in TypeInfo ti);

public String getName(in ClassInfo ci);

public String getName(in TypeInfo ti);

ConstTypeInfo realType(in TypeInfo type);
ConstClassInfo asClass(in TypeInfo type);
bool isDerived(in ClassInfo derived, in ClassInfo base);
bool implements(in ClassInfo implementor, in ClassInfo iface);
bool isImplicitly(in ClassInfo test, in ClassInfo target);
bool isImplicitly(in TypeInfo test, in TypeInfo target);
ConstClassInfo[] baseClasses(in ClassInfo type);
ConstClassInfo[] baseInterfaces(in ClassInfo type);
ConstClassInfo[] interfaceGraph(in ClassInfo type);
struct applyInterfaces
{
	int opApply(int delegate(ref ConstClassInfo) dg);
	ConstClassInfo type;
}
ConstClassInfo[] baseTypes(in ClassInfo type);
version (Tango)
{
	ModuleInfo moduleOf(in ClassInfo type);
}
else
{
	ModuleInfo* moduleOf(in ClassInfo type);
}
ConstClassInfo[] directInterfaces(in ClassInfo type);
ConstClassInfo[] derivedTypes(in ClassInfo type);
bool isDynamicArray(in TypeInfo type);
bool isStaticArray(in TypeInfo type);
bool isArray(in TypeInfo type);
bool isAssociativeArray(in TypeInfo type);
bool isCharacter(in TypeInfo type);
bool isString(in TypeInfo type);
bool isUnsignedInteger(in TypeInfo type);
bool isSignedInteger(in TypeInfo type);
bool isInteger(in TypeInfo type);
bool isBool(in TypeInfo type);
bool isFloat(in TypeInfo type);
bool isPrimitive(in TypeInfo type);
bool isInterface(in TypeInfo type);
bool isPointer(in TypeInfo type);
bool isClass(in TypeInfo type);
bool isStruct(in TypeInfo type);
bool isFunction(in TypeInfo type);
bool isReferenceType(in TypeInfo type);
bool isUserDefined(in TypeInfo type);
bool isValueType(in TypeInfo type);
ConstTypeInfo keyType(in TypeInfo type);
ConstTypeInfo valueType(in TypeInfo type);
ConstTypeInfo returnType(in TypeInfo type);
debug (UnitTest)
{
	interface I1
	{
	}
	interface I2
	{
	}
	interface I3
	{
	}
	interface I4
	{
	}
	class A
	{
	}
	class B : A, I1
	{
	}
	class C : B, I2, I3
	{
	}
	class D : A, I1
	{
		int foo(int i);
	}
	struct S1
	{
	}
}
