package js.lib;

typedef IteratorObjectTypedef<T, TReturn, TNext> = {
	function next():IteratorResult<T, TReturn>;
	@:optional
	@:native("return")
	function return_(?value:TReturn):IteratorResult<T, TReturn>;
	@:optional
	@:native("throw")
	function throw_(?e:Dynamic):IteratorResult<T, TReturn>;
};