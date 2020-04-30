package global.jquery;
/**
	Represents the completion of an asynchronous operation
**/
extern typedef _Promise<T> = {
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> haxe.extern.EitherType<TResult1, ts.lib.PromiseLike<TResult1>>, ?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult2, ts.lib.PromiseLike<TResult2>>):_Promise<haxe.extern.EitherType<TResult1, TResult2>>;
	/**
		Attaches a callback for only the rejection of the Promise.
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult, ts.lib.PromiseLike<TResult>>):_Promise<haxe.extern.EitherType<T, TResult>>;
};