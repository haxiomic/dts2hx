package vscode;

/**
	Completion item kinds.
**/
@:jsRequire("vscode", "CompletionItemKind") extern enum abstract CompletionItemKind(Int) from Int to Int {
	var Text;
	var Method;
	var Function;
	var Constructor;
	var Field;
	var Variable;
	var Class;
	var Interface;
	var Module;
	var Property;
	var Unit;
	var Value;
	var Enum;
	var Keyword;
	var Snippet;
	var Color;
	var Reference;
	var File;
	var Folder;
	var EnumMember;
	var Constant;
	var Struct;
	var Event;
	var Operator;
	var TypeParameter;
	var User;
	var Issue;
}