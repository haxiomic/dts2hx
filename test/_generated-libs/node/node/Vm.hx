package node;
@:jsRequire("vm") @valueModuleOnly extern class Vm {
	static function createContext(?sandbox:node.vm.Context):node.vm.Context;
	static function isContext(sandbox:node.vm.Context):Bool;
	static function runInContext(code:String, contextifiedSandbox:node.vm.Context, ?options:haxe.extern.EitherType<String, node.vm.RunningScriptOptions>):Any;
	static function runInNewContext(code:String, ?sandbox:node.vm.Context, ?options:haxe.extern.EitherType<String, node.vm.RunningScriptOptions>):Any;
	static function runInThisContext(code:String, ?options:haxe.extern.EitherType<String, node.vm.RunningScriptOptions>):Any;
	static function compileFunction(code:String, params:std.Array<String>, options:node.vm.CompileFunctionOptions):js.lib.Function;
}