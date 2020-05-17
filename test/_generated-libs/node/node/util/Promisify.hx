package node.util;

@:jsRequire("util", "promisify") @valueModuleOnly extern class Promisify {
	@:overload(function<TResult>(fn:(callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):() -> js.lib.Promise<TResult> { })
	@:overload(function(fn:(callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):() -> js.lib.Promise<Void> { })
	@:overload(function<T1, TResult>(fn:(arg1:T1, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1) -> js.lib.Promise<TResult> { })
	@:overload(function<T1>(fn:(arg1:T1, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1) -> js.lib.Promise<Void> { })
	@:overload(function<T1, T2, TResult>(fn:(arg1:T1, arg2:T2, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2>(fn:(arg1:T1, arg2:T2, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1, arg2:T2) -> js.lib.Promise<Void> { })
	@:overload(function<T1, T2, T3, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3>(fn:(arg1:T1, arg2:T2, arg3:T3, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<Void> { })
	@:overload(function<T1, T2, T3, T4, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3, T4>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<Void> { })
	@:overload(function<T1, T2, T3, T4, T5, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:Null<ts.lib.Error>, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3, T4, T5>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<Void> { })
	@:overload(function(fn:js.lib.Function):js.lib.Function { })
	@:selfCall
	static function call<TCustom>(fn:CustomPromisify<TCustom>):TCustom;
	static var custom : js.lib.Symbol;
}