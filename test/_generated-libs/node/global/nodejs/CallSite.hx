package global.nodejs;

typedef CallSite = {
	function getColumnNumber():Null<Float>;
	function getEnclosingColumnNumber():Null<Float>;
	function getEnclosingLineNumber():Null<Float>;
	function getEvalOrigin():Null<String>;
	function getFileName():Null<String>;
	function getFunction():Null<haxe.Constraints.Function>;
	function getFunctionName():Null<String>;
	function getLineNumber():Null<Float>;
	function getMethodName():Null<String>;
	function getPosition():Float;
	function getPromiseIndex():Null<Float>;
	function getScriptHash():String;
	function getScriptNameOrSourceURL():Null<String>;
	function getThis():Any;
	function getTypeName():Null<String>;
	function isAsync():Bool;
	function isConstructor():Bool;
	function isEval():Bool;
	function isNative():Bool;
	function isPromiseAll():Bool;
	function isToplevel():Bool;
};