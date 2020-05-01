package node;
@:jsRequire("assert") @valueModuleOnly extern class Assert {
	@:overload(function(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>, ?operator_:String, ?stackStartFn:ts.lib.IFunction):Any { })
	static function fail(?message:ts.AnyOf2<String, ts.lib.IError>):Any;
	static function ok(value:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	static function equal(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	static function notEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	static function deepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	static function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	static function strictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	static function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	static function deepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	static function notDeepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	@:overload(function(block:() -> Dynamic, error:ts.AnyOf4<ts.lib.IObject, ts.lib.IFunction, ts.lib.IRegExp, ts.lib.IError>, ?message:ts.AnyOf2<String, ts.lib.IError>):Void { })
	static function throws(block:() -> Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	@:overload(function(block:() -> Dynamic, error:ts.AnyOf2<ts.lib.IFunction, ts.lib.IRegExp>, ?message:ts.AnyOf2<String, ts.lib.IError>):Void { })
	static function doesNotThrow(block:() -> Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
	static function ifError(value:Dynamic):Void;
	@:overload(function(block:ts.AnyOf2<ts.lib.IPromise<Dynamic>, () -> ts.lib.IPromise<Dynamic>>, error:ts.AnyOf4<ts.lib.IObject, ts.lib.IFunction, ts.lib.IRegExp, ts.lib.IError>, ?message:ts.AnyOf2<String, ts.lib.IError>):ts.lib.IPromise<Void> { })
	static function rejects(block:ts.AnyOf2<ts.lib.IPromise<Dynamic>, () -> ts.lib.IPromise<Dynamic>>, ?message:ts.AnyOf2<String, ts.lib.IError>):ts.lib.IPromise<Void>;
	@:overload(function(block:ts.AnyOf2<ts.lib.IPromise<Dynamic>, () -> ts.lib.IPromise<Dynamic>>, error:ts.AnyOf2<ts.lib.IFunction, ts.lib.IRegExp>, ?message:ts.AnyOf2<String, ts.lib.IError>):ts.lib.IPromise<Void> { })
	static function doesNotReject(block:ts.AnyOf2<ts.lib.IPromise<Dynamic>, () -> ts.lib.IPromise<Dynamic>>, ?message:ts.AnyOf2<String, ts.lib.IError>):ts.lib.IPromise<Void>;
	static var strict : {
		@:selfCall
		function call(value:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		@:overload(function(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>, ?operator_:String, ?stackStartFn:ts.lib.IFunction):Any { })
		function fail(?message:ts.AnyOf2<String, ts.lib.IError>):Any;
		function ok(value:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		function equal(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		function notEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		function deepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		function strictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		function deepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		function notDeepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		@:overload(function(block:() -> Dynamic, error:ts.AnyOf4<ts.lib.IObject, ts.lib.IFunction, ts.lib.IRegExp, ts.lib.IError>, ?message:ts.AnyOf2<String, ts.lib.IError>):Void { })
		function throws(block:() -> Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		@:overload(function(block:() -> Dynamic, error:ts.AnyOf2<ts.lib.IFunction, ts.lib.IRegExp>, ?message:ts.AnyOf2<String, ts.lib.IError>):Void { })
		function doesNotThrow(block:() -> Dynamic, ?message:ts.AnyOf2<String, ts.lib.IError>):Void;
		function ifError(value:Dynamic):Void;
		@:overload(function(block:ts.AnyOf2<ts.lib.IPromise<Dynamic>, () -> ts.lib.IPromise<Dynamic>>, error:ts.AnyOf4<ts.lib.IObject, ts.lib.IFunction, ts.lib.IRegExp, ts.lib.IError>, ?message:ts.AnyOf2<String, ts.lib.IError>):ts.lib.IPromise<Void> { })
		function rejects(block:ts.AnyOf2<ts.lib.IPromise<Dynamic>, () -> ts.lib.IPromise<Dynamic>>, ?message:ts.AnyOf2<String, ts.lib.IError>):ts.lib.IPromise<Void>;
		@:overload(function(block:ts.AnyOf2<ts.lib.IPromise<Dynamic>, () -> ts.lib.IPromise<Dynamic>>, error:ts.AnyOf2<ts.lib.IFunction, ts.lib.IRegExp>, ?message:ts.AnyOf2<String, ts.lib.IError>):ts.lib.IPromise<Void> { })
		function doesNotReject(block:ts.AnyOf2<ts.lib.IPromise<Dynamic>, () -> ts.lib.IPromise<Dynamic>>, ?message:ts.AnyOf2<String, ts.lib.IError>):ts.lib.IPromise<Void>;
		var strict : Dynamic;
	};
}