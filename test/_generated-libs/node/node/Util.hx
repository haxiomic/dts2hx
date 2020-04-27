package node;
@:jsRequire("util") @valueModuleOnly extern class Util {
	static function format(format:Any, param:std.Array<Any>):String;
	static function formatWithOptions(inspectOptions:node.util.InspectOptions, format:String, param:std.Array<Any>):String;
	static function debug(string:String):Void;
	static function error(param:std.Array<Any>):Void;
	static function puts(param:std.Array<Any>):Void;
	static function print(param:std.Array<Any>):Void;
	static function log(string:String):Void;
	@:overload(function(object:Any, options:node.util.InspectOptions):String { })
	static function inspect(object:Any, ?showHidden:Bool, ?depth:Float, ?color:Bool):String;
	static function isArray(object:Any):Bool;
	static function isRegExp(object:Any):Bool;
	static function isDate(object:Any):Bool;
	static function isError(object:Any):Bool;
	static function inherits(constructor:Any, superConstructor:Any):Void;
	static function debuglog(key:String):(msg:String, param:std.Array<Any>) -> Void;
	static function isBoolean(object:Any):Bool;
	static function isBuffer(object:Any):Bool;
	static function isFunction(object:Any):Bool;
	static function isNull(object:Any):Bool;
	static function isNullOrUndefined(object:Any):Bool;
	static function isNumber(object:Any):Bool;
	static function isObject(object:Any):Bool;
	static function isPrimitive(object:Any):Bool;
	static function isString(object:Any):Bool;
	static function isSymbol(object:Any):Bool;
	static function isUndefined(object:Any):Bool;
	static function deprecate<T:(js.lib.Function)>(fn:T, message:String):T;
	static function isDeepStrictEqual(val1:Any, val2:Any):Bool;
	@:overload(function<TResult>(fn:() -> js.lib.Promise<TResult>):(callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1>(fn:(arg1:T1) -> js.lib.Promise<Void>):(arg1:T1, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, TResult>(fn:(arg1:T1) -> js.lib.Promise<TResult>):(arg1:T1, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2>(fn:(arg1:T1, arg2:T2) -> js.lib.Promise<Void>):(arg1:T1, arg2:T2, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, TResult>(fn:(arg1:T1, arg2:T2) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3>(fn:(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<Void>):(arg1:T1, arg2:T2, arg3:T3, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<Void>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<Void>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5, T6>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6) -> js.lib.Promise<Void>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5, T6, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	static function callbackify(fn:() -> js.lib.Promise<Void>):(callback:(err:global.nodejs.ErrnoException) -> Void) -> Void;
	@:overload(function<TResult>(fn:(callback:(err:Null<js.lib.Error>, result:TResult) -> Void) -> Void):() -> js.lib.Promise<TResult> { })
	@:overload(function(fn:(callback:(?err:js.lib.Error) -> Void) -> Void):() -> js.lib.Promise<Void> { })
	@:overload(function<T1, TResult>(fn:(arg1:T1, callback:(err:Null<js.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1) -> js.lib.Promise<TResult> { })
	@:overload(function<T1>(fn:(arg1:T1, callback:(?err:js.lib.Error) -> Void) -> Void):(arg1:T1) -> js.lib.Promise<Void> { })
	@:overload(function<T1, T2, TResult>(fn:(arg1:T1, arg2:T2, callback:(err:Null<js.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2>(fn:(arg1:T1, arg2:T2, callback:(?err:js.lib.Error) -> Void) -> Void):(arg1:T1, arg2:T2) -> js.lib.Promise<Void> { })
	@:overload(function<T1, T2, T3, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, callback:(err:Null<js.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3>(fn:(arg1:T1, arg2:T2, arg3:T3, callback:(?err:js.lib.Error) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<Void> { })
	@:overload(function<T1, T2, T3, T4, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:Null<js.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3, T4>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(?err:js.lib.Error) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<Void> { })
	@:overload(function<T1, T2, T3, T4, T5, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:Null<js.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3, T4, T5>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(?err:js.lib.Error) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<Void> { })
	@:overload(function(fn:js.lib.Function):js.lib.Function { })
	static function promisify<TCustom:(js.lib.Function)>(fn:node.util.CustomPromisify<TCustom>):TCustom;
}