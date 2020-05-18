#if StdLibMacro
package;
#else
package typemap;
#end

@ignore typedef TypeMap = {
	haxeVersion: String,
	topLevelNames: Array<String>,
	js: haxe.DynamicAccess<TypeInfo>,
}

@ignore typedef TypeInfo = {
	pack: Array<String>,
	name: String,
	moduleName: String,
	typeParameters: Array<String>,
	isExtern: Bool,
	moduleType: ModuleType
};

@ignore @:enum abstract ModuleType(Int) to Int from Int {
	var ClassType;
	var EnumType;
	var TypeDefType; // @! todo: add more information about the typedef – is it an anon or an alias?
	var AbstractType;
}