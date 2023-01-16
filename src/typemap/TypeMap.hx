#if TypeMapMacro
package;
#else
package typemap;
#end

@ignore typedef TypeMap = {
	haxeVersion: String,
	libraryName: String,
	libraryVersion: String,
	topLevelNames: Array<String>,
	js: haxe.DynamicAccess<TypeInfo>,
	jsRequireMap: haxe.DynamicAccess<String>,
	// packages: haxe.DynamicAccess<Package>,
	lowercaseLookup: haxe.DynamicAccess<Array<String>>,
	typeInfo: haxe.DynamicAccess<TypeInfo>,
}

@ignore typedef TypeInfo = {
	pack: Array<String>,
	name: String,
	moduleName: String,
	typeParameters: Array<String>,
	isExtern: Bool,
	moduleType: ModuleType,
	?jsRequirePath: String,
};

@ignore @:enum abstract ModuleType(String) to String from String {
	var ClassType = 'class';
	var EnumType = 'enum';
	var TypeDefType = 'typedef'; // @! todo: add more information about the typedef – is it an anon or an alias?
	var AbstractType = 'abstract';
	var UnknownType = 'unknown';
}