package js.lib;
/**
	Represents the completion of an asynchronous operation
**/
extern typedef IPromise<T> = {
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> haxe.extern.EitherType<TResult1, PromiseLike<TResult1>>, ?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult2, PromiseLike<TResult2>>):IPromise<haxe.extern.EitherType<TResult1, TResult2>>;
	/**
		Attaches a callback for only the rejection of the Promise.
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult, PromiseLike<TResult>>):IPromise<haxe.extern.EitherType<T, TResult>>;
};