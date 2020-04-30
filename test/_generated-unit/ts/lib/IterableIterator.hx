package ts.lib;
extern typedef IterableIterator<T> = {
	function next(args:haxe.extern.EitherType<std.Array<Any>, ts.lib.Tuple1<Void>>):haxe.extern.EitherType<IteratorYieldResult<T>, IteratorReturnResult<Any>>;
	@:native("return")
	@:optional
	function return_(?value:Any):haxe.extern.EitherType<IteratorYieldResult<T>, IteratorReturnResult<Any>>;
	@:native("throw")
	@:optional
	function throw_(?e:Any):haxe.extern.EitherType<IteratorYieldResult<T>, IteratorReturnResult<Any>>;
};