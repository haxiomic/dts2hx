package unit.ts5_0;

/**
	TS 5.0: const type parameters, decorators (TC39 standard)
**/
@:jsRequire("./unit/ts5.0", "TS50") @valueModuleOnly extern class TS50 {
	static function asConst<T>(value:T):T;
	static function asConstArray<T:(haxe.ds.ReadOnlyArray<String>)>(arr:T):T;
	static function sealed(constructor:haxe.Constraints.Function):Void;
	static function log(target:Dynamic, context:js.lib.ClassMethodDecoratorContext<Any, (args:haxe.extern.Rest<Any>) -> Dynamic>):Void;
	static function paint(color:unit.ts5_0.ts50.Color):Void;
}