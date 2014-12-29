module structs;

import std.array;
import std.conv;

struct Config
{
    public int count;
    public int npcTalk;
    public ConfigList[] lists;
}

class ConfigList
{
    public int index;
    public string name;
    public string skip;
    public string[] names;
    public Type[] types;

    this()
    {}

    this(int index, string name, string skip)
    {
        this.index = index;
        this.name = name;
        this.skip = skip;
    }

    public int getSize()
    {
        auto size = 0;
        foreach(type; types)
        {
            switch(type.name)
            {
                case TypeName.int32:
                case TypeName.uint32:
                case TypeName.floatT:
                    size += 4;
                    break;
                default:
                    size += type.length.to!int;
                    break;
            }
        }
        return size;
    }
}

enum TypeName : string
{
    byteT = "byte",
    int32 = "int32",
    uint32 = "uint32",
    floatT = "float",
    string = "string",
    wstring = "wstring"
}

struct Type
{
    public TypeName name;
    public string length;

    string toString() const pure @safe
    {
        auto app = appender!string();
        string typeName = name;
        app.put(typeName);
        if(name != TypeName.int32 && name != TypeName.uint32 && name != TypeName.floatT)
            app.put(":" ~ length);
        return app.data;
    }
}