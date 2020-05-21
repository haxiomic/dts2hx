package node.vm;

@:jsRequire("vm", "Script") extern class Script {
	function new(code:String, ?options:ScriptOptions);
	function runInContext(contextifiedSandbox:Context, ?options:RunningScriptOptions):Dynamic;
	function runInNewContext(?sandbox:Context, ?options:RunningScriptOptions):Dynamic;
	function runInThisContext(?options:RunningScriptOptions):Dynamic;
	static var prototype : Script;
}