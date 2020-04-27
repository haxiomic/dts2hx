package js.lib;
extern typedef PromiseLike<T> = { /**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> haxe.extern.EitherType<TResult1, PromiseLike<TResult1>>, ?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult2, PromiseLike<TResult2>>):PromiseLike<haxe.extern.EitherType<TResult1, TResult2>>; };