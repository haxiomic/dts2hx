package global.nodejs;

typedef CallSite = {
	/**
		Value of "this"
	**/
	function getThis():Dynamic;
	/**
		Type of "this" as a string.
		This is the name of the function stored in the constructor field of
		"this", if available.  Otherwise the object's [[Class]] internal
		property.
	**/
	function getTypeName():Null<String>;
	/**
		Current function
	**/
	function getFunction():Null<haxe.Constraints.Function>;
	/**
		Name of the current function, typically its name property.
		If a name property is not available an attempt will be made to try
		to infer a name from the function's context.
	**/
	function getFunctionName():Null<String>;
	/**
		Name of the property [of "this" or one of its prototypes] that holds
		the current function
	**/
	function getMethodName():Null<String>;
	/**
		Name of the script [if this function was defined in a script]
	**/
	function getFileName():Null<String>;
	/**
		Current line number [if this function was defined in a script]
	**/
	function getLineNumber():Null<Float>;
	/**
		Current column number [if this function was defined in a script]
	**/
	function getColumnNumber():Null<Float>;
	/**
		A call site object representing the location where eval was called
		[if this function was created using a call to eval]
	**/
	function getEvalOrigin():Null<String>;
	/**
		Is this a toplevel invocation, that is, is "this" the global object?
	**/
	function isToplevel():Bool;
	/**
		Does this call take place in code defined by a call to eval?
	**/
	function isEval():Bool;
	/**
		Is this call in native V8 code?
	**/
	function isNative():Bool;
	/**
		Is this a constructor call?
	**/
	function isConstructor():Bool;
};