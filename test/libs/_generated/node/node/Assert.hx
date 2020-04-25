package node;
@:jsRequire("assert") extern class Assert {
	@:overload(function(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>, ?operator_:String, ?stackStartFn:js.lib.Function):Void { })
	static function fail(?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function ok(value:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function equal(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function notEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function deepEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function notDeepEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function strictEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function notStrictEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function deepStrictEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function notDeepStrictEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	@:overload(function(block:() -> Any, error:haxe.extern.EitherType<js.lib.Object, haxe.extern.EitherType<js.lib.Function, haxe.extern.EitherType<js.lib.RegExp, js.lib.Error>>>, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void { })
	static function throws(block:() -> Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	@:overload(function(block:() -> Any, error:haxe.extern.EitherType<js.lib.Function, js.lib.RegExp>, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void { })
	static function doesNotThrow(block:() -> Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void;
	static function ifError(value:Any):Void;
	@:overload(function(block:haxe.extern.EitherType<js.lib.Promise<Any>, () -> js.lib.Promise<Any>>, error:haxe.extern.EitherType<js.lib.Object, haxe.extern.EitherType<js.lib.Function, haxe.extern.EitherType<js.lib.RegExp, js.lib.Error>>>, ?message:haxe.extern.EitherType<String, js.lib.Error>):js.lib.Promise<Void> { })
	static function rejects(block:haxe.extern.EitherType<js.lib.Promise<Any>, () -> js.lib.Promise<Any>>, ?message:haxe.extern.EitherType<String, js.lib.Error>):js.lib.Promise<Void>;
	@:overload(function(block:haxe.extern.EitherType<js.lib.Promise<Any>, () -> js.lib.Promise<Any>>, error:haxe.extern.EitherType<js.lib.Function, js.lib.RegExp>, ?message:haxe.extern.EitherType<String, js.lib.Error>):js.lib.Promise<Void> { })
	static function doesNotReject(block:haxe.extern.EitherType<js.lib.Promise<Any>, () -> js.lib.Promise<Any>>, ?message:haxe.extern.EitherType<String, js.lib.Error>):js.lib.Promise<Void>;
	static var strict : { @:selfCall
	function call(value:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; @:overload(function(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>, ?operator_:String, ?stackStartFn:js.lib.Function):Void { })
	function fail(?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function ok(value:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function equal(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function notEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function deepEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function notDeepEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function strictEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function notStrictEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function deepStrictEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function notDeepStrictEqual(actual:Any, expected:Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; @:overload(function(block:() -> Any, error:haxe.extern.EitherType<js.lib.Object, haxe.extern.EitherType<js.lib.Function, haxe.extern.EitherType<js.lib.RegExp, js.lib.Error>>>, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void { })
	function throws(block:() -> Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; @:overload(function(block:() -> Any, error:haxe.extern.EitherType<js.lib.Function, js.lib.RegExp>, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void { })
	function doesNotThrow(block:() -> Any, ?message:haxe.extern.EitherType<String, js.lib.Error>):Void; function ifError(value:Any):Void; @:overload(function(block:haxe.extern.EitherType<js.lib.Promise<Any>, () -> js.lib.Promise<Any>>, error:haxe.extern.EitherType<js.lib.Object, haxe.extern.EitherType<js.lib.Function, haxe.extern.EitherType<js.lib.RegExp, js.lib.Error>>>, ?message:haxe.extern.EitherType<String, js.lib.Error>):js.lib.Promise<Void> { })
	function rejects(block:haxe.extern.EitherType<js.lib.Promise<Any>, () -> js.lib.Promise<Any>>, ?message:haxe.extern.EitherType<String, js.lib.Error>):js.lib.Promise<Void>; @:overload(function(block:haxe.extern.EitherType<js.lib.Promise<Any>, () -> js.lib.Promise<Any>>, error:haxe.extern.EitherType<js.lib.Function, js.lib.RegExp>, ?message:haxe.extern.EitherType<String, js.lib.Error>):js.lib.Promise<Void> { })
	function doesNotReject(block:haxe.extern.EitherType<js.lib.Promise<Any>, () -> js.lib.Promise<Any>>, ?message:haxe.extern.EitherType<String, js.lib.Error>):js.lib.Promise<Void>; var strict : Any; };
}