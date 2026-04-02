package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5653:5
**/
@:native('ts.ScriptElementKind')
extern enum abstract ScriptElementKind(String) from String to String {
	var unknown;
	var warning;
	/**
	predefined type (void) or keyword (class)
	**/
	var keyword;
	/**
	top level script node
	**/
	var scriptElement;
	/**
	module foo {}
	**/
	var moduleElement;
	/**
	class X {}
	**/
	var classElement;
	/**
	var x = class X {}
	**/
	var localClassElement;
	/**
	interface Y {}
	**/
	var interfaceElement;
	/**
	type T = ...
	**/
	var typeElement;
	/**
	enum E
	**/
	var enumElement;
	var enumMemberElement;
	/**
	Inside module and script only
	const v = ..
	**/
	var variableElement;
	/**
	Inside function
	**/
	var localVariableElement;
	/**
	Inside module and script only
	function f() { }
	**/
	var functionElement;
	/**
	Inside function
	**/
	var localFunctionElement;
	/**
	class X { [public|private]* foo() {} }
	**/
	var memberFunctionElement;
	/**
	class X { [public|private]* [get|set] foo:number; }
	**/
	var memberGetAccessorElement;
	var memberSetAccessorElement;
	/**
	class X { [public|private]* foo:number; }
	interface Y { foo:number; }
	**/
	var memberVariableElement;
	/**
	class X { constructor() { } }
	**/
	var constructorImplementationElement;
	/**
	interface Y { ():number; }
	**/
	var callSignatureElement;
	/**
	interface Y { []:number; }
	**/
	var indexSignatureElement;
	/**
	interface Y { new():Y; }
	**/
	var constructSignatureElement;
	/**
	function foo(*Y*: string)
	**/
	var parameterElement;
	var typeParameterElement;
	var primitiveType;
	var label;
	var alias;
	var constElement;
	var letElement;
	var directory;
	var externalModuleName;
	/**
	<JsxTagName attribute1 attribute2={0} />
	**/
	var jsxAttribute;
	/**
	String literal
	**/
	var string;
}

