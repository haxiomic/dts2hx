package node;
@:jsRequire("util") @valueModuleOnly extern class Util {
	static function format(format:Dynamic, param:haxe.extern.Rest<Dynamic>):String;
	static function formatWithOptions(inspectOptions:node.util.InspectOptions, format:String, param:haxe.extern.Rest<Dynamic>):String;
	static function debug(string:String):Void;
	static function error(param:haxe.extern.Rest<Dynamic>):Void;
	static function puts(param:haxe.extern.Rest<Dynamic>):Void;
	static function print(param:haxe.extern.Rest<Dynamic>):Void;
	static function log(string:String):Void;
	@:overload(function(object:Dynamic, options:node.util.InspectOptions):String { })
	static function inspect(object:Dynamic, ?showHidden:Bool, ?depth:Float, ?color:Bool):String;
	static function isArray(object:Dynamic):Bool;
	static function isRegExp(object:Dynamic):Bool;
	static function isDate(object:Dynamic):Bool;
	static function isError(object:Dynamic):Bool;
	static function inherits(constructor:Dynamic, superConstructor:Dynamic):Void;
	static function debuglog(key:String):(msg:String, param:haxe.extern.Rest<Dynamic>) -> Void;
	static function isBoolean(object:Dynamic):Bool;
	static function isBuffer(object:Dynamic):Bool;
	static function isFunction(object:Dynamic):Bool;
	static function isNull(object:Dynamic):Bool;
	static function isNullOrUndefined(object:Dynamic):Bool;
	static function isNumber(object:Dynamic):Bool;
	static function isObject(object:Dynamic):Bool;
	static function isPrimitive(object:Dynamic):Bool;
	static function isString(object:Dynamic):Bool;
	static function isSymbol(object:Dynamic):Bool;
	static function isUndefined(object:Dynamic):Bool;
	static function deprecate<T>(fn:T, message:String):T;
	static function isDeepStrictEqual(val1:Dynamic, val2:Dynamic):Bool;
	@:overload(function<TResult>(fn:() -> ts.lib.Promise<TResult>):(callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1>(fn:(arg1:T1) -> ts.lib.Promise<Void>):(arg1:T1, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, TResult>(fn:(arg1:T1) -> ts.lib.Promise<TResult>):(arg1:T1, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2>(fn:(arg1:T1, arg2:T2) -> ts.lib.Promise<Void>):(arg1:T1, arg2:T2, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, TResult>(fn:(arg1:T1, arg2:T2) -> ts.lib.Promise<TResult>):(arg1:T1, arg2:T2, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3>(fn:(arg1:T1, arg2:T2, arg3:T3) -> ts.lib.Promise<Void>):(arg1:T1, arg2:T2, arg3:T3, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3) -> ts.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> ts.lib.Promise<Void>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> ts.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> ts.lib.Promise<Void>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> ts.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5, T6>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6) -> ts.lib.Promise<Void>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5, T6, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6) -> ts.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	static function callbackify(fn:() -> ts.lib.Promise<Void>):(callback:(err:global.nodejs.ErrnoException) -> Void) -> Void;
	@:overload(function<TResult>(fn:(callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):() -> ts.lib.Promise<TResult> { })
	@:overload(function(fn:(callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):() -> ts.lib.Promise<Void> { })
	@:overload(function<T1, TResult>(fn:(arg1:T1, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1) -> ts.lib.Promise<TResult> { })
	@:overload(function<T1>(fn:(arg1:T1, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1) -> ts.lib.Promise<Void> { })
	@:overload(function<T1, T2, TResult>(fn:(arg1:T1, arg2:T2, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2) -> ts.lib.Promise<TResult> { })
	@:overload(function<T1, T2>(fn:(arg1:T1, arg2:T2, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1, arg2:T2) -> ts.lib.Promise<Void> { })
	@:overload(function<T1, T2, T3, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3) -> ts.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3>(fn:(arg1:T1, arg2:T2, arg3:T3, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1, arg2:T2, arg3:T3) -> ts.lib.Promise<Void> { })
	@:overload(function<T1, T2, T3, T4, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> ts.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3, T4>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> ts.lib.Promise<Void> { })
	@:overload(function<T1, T2, T3, T4, T5, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> ts.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3, T4, T5>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> ts.lib.Promise<Void> { })
	@:overload(function(fn:ts.lib.Function):ts.lib.Function { })
	static function promisify<TCustom>(fn:node.util.CustomPromisify<TCustom>):TCustom;
}