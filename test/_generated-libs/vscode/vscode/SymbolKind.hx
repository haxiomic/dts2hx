package vscode;

/**
	A symbol kind.
**/
@:jsRequire("vscode", "SymbolKind") extern enum abstract SymbolKind(Int) from Int to Int {
	var File;
	var Module;
	var Namespace;
	var Package;
	var Class;
	var Method;
	var Property;
	var Field;
	var Constructor;
	var Enum;
	var Interface;
	var Function;
	var Variable;
	var Constant;
	var String;
	var Number;
	var Boolean;
	var Array;
	var Object;
	var Key;
	var Null;
	var EnumMember;
	var Struct;
	var Event;
	var Operator;
	var TypeParameter;
}