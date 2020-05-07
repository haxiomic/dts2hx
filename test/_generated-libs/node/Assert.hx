package node;
@:jsRequire("assert") @valueModuleOnly extern class Assert {
	@:overload(function(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>, ?operator_:String, ?stackStartFn:ts.lib.Function):Any { })
	static function fail(?message:ts.AnyOf2<String, ts.lib.Error>):Any;
	static function ok(value:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	static function equal(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	static function notEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	static function deepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	static function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	static function strictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	static function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	static function deepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	static function notDeepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	@:overload(function(block:() -> Dynamic, error:ts.AnyOf4<ts.lib.Object, ts.lib.Function, ts.lib.RegExp, ts.lib.Error>, ?message:ts.AnyOf2<String, ts.lib.Error>):Void { })
	static function throws(block:() -> Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	@:overload(function(block:() -> Dynamic, error:ts.AnyOf2<ts.lib.Function, ts.lib.RegExp>, ?message:ts.AnyOf2<String, ts.lib.Error>):Void { })
	static function doesNotThrow(block:() -> Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
	static function ifError(value:Dynamic):Void;
	@:overload(function(block:ts.AnyOf2<ts.lib.Promise<Dynamic>, () -> ts.lib.Promise<Dynamic>>, error:ts.AnyOf4<ts.lib.Object, ts.lib.Function, ts.lib.RegExp, ts.lib.Error>, ?message:ts.AnyOf2<String, ts.lib.Error>):ts.lib.Promise<Void> { })
	static function rejects(block:ts.AnyOf2<ts.lib.Promise<Dynamic>, () -> ts.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, ts.lib.Error>):ts.lib.Promise<Void>;
	@:overload(function(block:ts.AnyOf2<ts.lib.Promise<Dynamic>, () -> ts.lib.Promise<Dynamic>>, error:ts.AnyOf2<ts.lib.Function, ts.lib.RegExp>, ?message:ts.AnyOf2<String, ts.lib.Error>):ts.lib.Promise<Void> { })
	static function doesNotReject(block:ts.AnyOf2<ts.lib.Promise<Dynamic>, () -> ts.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, ts.lib.Error>):ts.lib.Promise<Void>;
	static var strict : {
		@:selfCall
		function call(value:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		@:overload(function(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>, ?operator_:String, ?stackStartFn:ts.lib.Function):Any { })
		function fail(?message:ts.AnyOf2<String, ts.lib.Error>):Any;
		function ok(value:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		function equal(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		function notEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		function deepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		function strictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		function deepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		function notDeepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		@:overload(function(block:() -> Dynamic, error:ts.AnyOf4<ts.lib.Object, ts.lib.Function, ts.lib.RegExp, ts.lib.Error>, ?message:ts.AnyOf2<String, ts.lib.Error>):Void { })
		function throws(block:() -> Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		@:overload(function(block:() -> Dynamic, error:ts.AnyOf2<ts.lib.Function, ts.lib.RegExp>, ?message:ts.AnyOf2<String, ts.lib.Error>):Void { })
		function doesNotThrow(block:() -> Dynamic, ?message:ts.AnyOf2<String, ts.lib.Error>):Void;
		function ifError(value:Dynamic):Void;
		@:overload(function(block:ts.AnyOf2<ts.lib.Promise<Dynamic>, () -> ts.lib.Promise<Dynamic>>, error:ts.AnyOf4<ts.lib.Object, ts.lib.Function, ts.lib.RegExp, ts.lib.Error>, ?message:ts.AnyOf2<String, ts.lib.Error>):ts.lib.Promise<Void> { })
		function rejects(block:ts.AnyOf2<ts.lib.Promise<Dynamic>, () -> ts.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, ts.lib.Error>):ts.lib.Promise<Void>;
		@:overload(function(block:ts.AnyOf2<ts.lib.Promise<Dynamic>, () -> ts.lib.Promise<Dynamic>>, error:ts.AnyOf2<ts.lib.Function, ts.lib.RegExp>, ?message:ts.AnyOf2<String, ts.lib.Error>):ts.lib.Promise<Void> { })
		function doesNotReject(block:ts.AnyOf2<ts.lib.Promise<Dynamic>, () -> ts.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, ts.lib.Error>):ts.lib.Promise<Void>;
		var strict : Dynamic;
	};
}