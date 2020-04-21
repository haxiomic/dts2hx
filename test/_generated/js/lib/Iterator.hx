package js.lib;
extern interface Iterator<T, TReturn, TNext> {
	function next(args:haxe.extern.EitherType<std.Array<Any>, js.lib.Tuple1<TNext, TNext>>):haxe.extern.EitherType<IteratorYieldResult<T>, IteratorReturnResult<TReturn>>;
	@:native("return")
	@:optional
	function return_(?value:TReturn):haxe.extern.EitherType<IteratorYieldResult<T>, IteratorReturnResult<TReturn>>;
	@:native("throw")
	@:optional
	function throw_(?e:Any):haxe.extern.EitherType<IteratorYieldResult<T>, IteratorReturnResult<TReturn>>;
}