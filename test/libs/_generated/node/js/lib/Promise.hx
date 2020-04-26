package js.lib;
/**
	Represents the completion of an asynchronous operation
	
	
	
	Represents the completion of an asynchronous operation
**/
@:native("Promise") @:interface extern class Promise<T> {
	function new(executor:(resolve:(?value:haxe.extern.EitherType<T, PromiseLike<T>>) -> Void, reject:(?reason:Any) -> Void) -> Void);
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> haxe.extern.EitherType<TResult1, PromiseLike<TResult1>>, ?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult2, PromiseLike<TResult2>>):Promise<haxe.extern.EitherType<TResult1, TResult2>>;
	/**
		Attaches a callback for only the rejection of the Promise.
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult, PromiseLike<TResult>>):Promise<haxe.extern.EitherType<T, TResult>>;
	/**
		Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
		resolved value cannot be modified from the callback.
	**/
	function finally(?onfinally:() -> Void):Promise<T>;
	/**
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
	**/
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(values:js.lib.Tuple10<Any, haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>, haxe.extern.EitherType<T7, PromiseLike<T7>>, haxe.extern.EitherType<T8, PromiseLike<T8>>, haxe.extern.EitherType<T9, PromiseLike<T9>>, haxe.extern.EitherType<T10, PromiseLike<T10>>>):Promise<js.lib.Tuple10<Any, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8, T9>(values:js.lib.Tuple9<Any, haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>, haxe.extern.EitherType<T7, PromiseLike<T7>>, haxe.extern.EitherType<T8, PromiseLike<T8>>, haxe.extern.EitherType<T9, PromiseLike<T9>>>):Promise<js.lib.Tuple9<Any, T1, T2, T3, T4, T5, T6, T7, T8, T9>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8>(values:js.lib.Tuple8<Any, haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>, haxe.extern.EitherType<T7, PromiseLike<T7>>, haxe.extern.EitherType<T8, PromiseLike<T8>>>):Promise<js.lib.Tuple8<Any, T1, T2, T3, T4, T5, T6, T7, T8>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7>(values:js.lib.Tuple7<Any, haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>, haxe.extern.EitherType<T7, PromiseLike<T7>>>):Promise<js.lib.Tuple7<Any, T1, T2, T3, T4, T5, T6, T7>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6>(values:js.lib.Tuple6<Any, haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>>):Promise<js.lib.Tuple6<Any, T1, T2, T3, T4, T5, T6>> { })
	@:overload(function<T1, T2, T3, T4, T5>(values:js.lib.Tuple5<Any, haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>>):Promise<js.lib.Tuple5<Any, T1, T2, T3, T4, T5>> { })
	@:overload(function<T1, T2, T3, T4>(values:js.lib.Tuple4<Any, haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>>):Promise<js.lib.Tuple4<Any, T1, T2, T3, T4>> { })
	@:overload(function<T1, T2, T3>(values:js.lib.Tuple3<Any, haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>>):Promise<js.lib.Tuple3<Any, T1, T2, T3>> { })
	@:overload(function<T1, T2>(values:js.lib.Tuple2<Any, haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>>):Promise<js.lib.Tuple2<Any, T1, T2>> { })
	@:overload(function<T>(values:ReadonlyArray<haxe.extern.EitherType<T, PromiseLike<T>>>):Promise<std.Array<T>> { })
	static function all<TAll>(values:Iterable<haxe.extern.EitherType<TAll, PromiseLike<TAll>>>):Promise<std.Array<TAll>>;
	/**
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
		
		
		
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
		
		
		
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
	**/
	@:overload(function<T>(values:ReadonlyArray<T>):Promise<Any> { })
	@:overload(function<T>(values:Iterable<T>):Promise<Any> { })
	static function race<T>(values:Iterable<haxe.extern.EitherType<T, PromiseLike<T>>>):Promise<T>;
	/**
		A reference to the prototype.
	**/
	static final prototype : Promise<Any>;
	/**
		Creates a new rejected promise for the provided reason.
	**/
	static function reject<T>(?reason:Any):Promise<T>;
	/**
		Creates a new resolved promise for the provided value.
		
		
		
		Creates a new resolved promise .
	**/
	@:overload(function():Promise<Void> { })
	static function resolve<T>(value:haxe.extern.EitherType<T, PromiseLike<T>>):Promise<T>;
}