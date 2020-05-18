package js.lib;

typedef IterableIterator<T> = {
	function next(args:haxe.extern.Rest<Any>):IteratorResult<T, Dynamic>;
	@:optional
	@:native("return")
	function return_(?value:Dynamic):IteratorResult<T, Dynamic>;
	@:optional
	@:native("throw")
	function throw_(?e:Dynamic):IteratorResult<T, Dynamic>;
};