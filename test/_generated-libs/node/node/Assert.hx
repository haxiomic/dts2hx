package node;

@:jsRequire("assert") @valueModuleOnly extern class Assert {
	@:selfCall
	static function call(value:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	@:overload(function(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>, ?operator_:String, ?stackStartFn:haxe.Constraints.Function):Any { })
	static function fail(?message:ts.AnyOf2<String, js.lib.Error>):Any;
	static function ok(value:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function equal(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function notEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function deepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function strictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function deepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function notDeepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	@:overload(function(block:() -> Dynamic, error:ts.AnyOf4<Dynamic, haxe.Constraints.Function, js.lib.RegExp, js.lib.Error>, ?message:ts.AnyOf2<String, js.lib.Error>):Void { })
	static function throws(block:() -> Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	@:overload(function(block:() -> Dynamic, error:ts.AnyOf2<haxe.Constraints.Function, js.lib.RegExp>, ?message:ts.AnyOf2<String, js.lib.Error>):Void { })
	static function doesNotThrow(block:() -> Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function ifError(value:Dynamic):Void;
	@:overload(function(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, error:ts.AnyOf4<Dynamic, haxe.Constraints.Function, js.lib.RegExp, js.lib.Error>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<ts.Undefined> { })
	static function rejects(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<ts.Undefined>;
	@:overload(function(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, error:ts.AnyOf2<haxe.Constraints.Function, js.lib.RegExp>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<ts.Undefined> { })
	static function doesNotReject(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<ts.Undefined>;
	static final strict : {
		@:selfCall
		function call(value:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		@:overload(function(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>, ?operator_:String, ?stackStartFn:haxe.Constraints.Function):Any { })
		function fail(?message:ts.AnyOf2<String, js.lib.Error>):Any;
		function ok(value:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function equal(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function notEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function deepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function strictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function deepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function notDeepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		@:overload(function(block:() -> Dynamic, error:ts.AnyOf4<Dynamic, haxe.Constraints.Function, js.lib.RegExp, js.lib.Error>, ?message:ts.AnyOf2<String, js.lib.Error>):Void { })
		function throws(block:() -> Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		@:overload(function(block:() -> Dynamic, error:ts.AnyOf2<haxe.Constraints.Function, js.lib.RegExp>, ?message:ts.AnyOf2<String, js.lib.Error>):Void { })
		function doesNotThrow(block:() -> Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function ifError(value:Dynamic):Void;
		@:overload(function(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, error:ts.AnyOf4<Dynamic, haxe.Constraints.Function, js.lib.RegExp, js.lib.Error>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<ts.Undefined> { })
		function rejects(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<ts.Undefined>;
		@:overload(function(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, error:ts.AnyOf2<haxe.Constraints.Function, js.lib.RegExp>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<ts.Undefined> { })
		function doesNotReject(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<ts.Undefined>;
		final strict : Dynamic;
	};
}