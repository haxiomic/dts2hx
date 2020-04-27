package node.vm;
@:jsRequire("vm", "Script") extern class Script {
	function new(code:String, ?options:ScriptOptions);
	function runInContext(contextifiedSandbox:Context, ?options:RunningScriptOptions):Any;
	function runInNewContext(?sandbox:Context, ?options:RunningScriptOptions):Any;
	function runInThisContext(?options:RunningScriptOptions):Any;
}