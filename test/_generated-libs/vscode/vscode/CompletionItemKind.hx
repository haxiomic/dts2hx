package vscode;

/**
	Completion item kinds.
**/
@:jsRequire("vscode", "CompletionItemKind") extern enum abstract CompletionItemKind(Int) from Int to Int {
	final Text;
	final Method;
	final Function;
	final Constructor;
	final Field;
	final Variable;
	final Class;
	final Interface;
	final Module;
	final Property;
	final Unit;
	final Value;
	final Enum;
	final Keyword;
	final Snippet;
	final Color;
	final Reference;
	final File;
	final Folder;
	final EnumMember;
	final Constant;
	final Struct;
	final Event;
	final Operator;
	final TypeParameter;
	final User;
	final Issue;
}