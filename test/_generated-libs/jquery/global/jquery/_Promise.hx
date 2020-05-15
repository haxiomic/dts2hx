package global.jquery;
/**
	Represents the completion of an asynchronous operation
**/
typedef _Promise<T> = {
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> ts.AnyOf2<TResult1, ts.lib.PromiseLike<TResult1>>, ?onrejected:(reason:Dynamic) -> ts.AnyOf2<TResult2, ts.lib.PromiseLike<TResult2>>):_Promise<ts.AnyOf2<TResult1, TResult2>>;
	/**
		Attaches a callback for only the rejection of the Promise.
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Dynamic) -> ts.AnyOf2<TResult, ts.lib.PromiseLike<TResult>>):_Promise<ts.AnyOf2<T, TResult>>;
};