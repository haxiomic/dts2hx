package ts.lib;
typedef IterableIterator<T> = {
	function next(args:haxe.extern.Rest<Any>):IteratorResult<T, Dynamic>;
	@:native("return")
	@:optional
	function return_(?value:Dynamic):IteratorResult<T, Dynamic>;
	@:native("throw")
	@:optional
	function throw_(?e:Dynamic):IteratorResult<T, Dynamic>;
};