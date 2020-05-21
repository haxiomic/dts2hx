package node;

@:jsRequire("vm") @valueModuleOnly extern class Vm {
	static function createContext(?sandbox:node.vm.Context):node.vm.Context;
	static function isContext(sandbox:node.vm.Context):Bool;
	static function runInContext(code:String, contextifiedSandbox:node.vm.Context, ?options:ts.AnyOf2<String, node.vm.RunningScriptOptions>):Dynamic;
	static function runInNewContext(code:String, ?sandbox:node.vm.Context, ?options:ts.AnyOf2<String, node.vm.RunningScriptOptions>):Dynamic;
	static function runInThisContext(code:String, ?options:ts.AnyOf2<String, node.vm.RunningScriptOptions>):Dynamic;
	static function compileFunction(code:String, params:Array<String>, options:node.vm.CompileFunctionOptions):haxe.Constraints.Function;
}