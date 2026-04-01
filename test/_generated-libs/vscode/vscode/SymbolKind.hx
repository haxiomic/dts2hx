package vscode;

/**
	A symbol kind.
**/
@:jsRequire("vscode", "SymbolKind") extern enum abstract SymbolKind(Int) from Int to Int {
	final File;
	final Module;
	final Namespace;
	final Package;
	final Class;
	final Method;
	final Property;
	final Field;
	final Constructor;
	final Enum;
	final Interface;
	final Function;
	final Variable;
	final Constant;
	final String;
	final Number;
	final Boolean;
	final Array;
	final Object;
	final Key;
	final Null;
	final EnumMember;
	final Struct;
	final Event;
	final Operator;
	final TypeParameter;
}