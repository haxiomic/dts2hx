package global.nodejs;

typedef Iterator_Typedef<T, TReturn, TNext> = {
	function next():js.lib.IteratorResult<T, TReturn>;
	@:optional
	@:native("return")
	function return_(?value:TReturn):js.lib.IteratorResult<T, TReturn>;
	@:optional
	@:native("throw")
	function throw_(?e:Dynamic):js.lib.IteratorResult<T, TReturn>;
};