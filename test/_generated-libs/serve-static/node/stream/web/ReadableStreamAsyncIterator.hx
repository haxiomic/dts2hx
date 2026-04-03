package node.stream.web;

@:forward
abstract ReadableStreamAsyncIterator<T>(ReadableStreamAsyncIteratorTypedef<T>) from ReadableStreamAsyncIteratorTypedef<T> to ReadableStreamAsyncIteratorTypedef<T> {
	@:optional
	public var return_(get, set):Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, Dynamic>>;
	inline function get_return_():Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, Dynamic>> return js.Syntax.field(cast this, 'return');
	inline function set_return_(v:Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, Dynamic>>):Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, Dynamic>> { js.Syntax.code("{0}[{1}] = {2}", this, 'return', v); return v; }
	@:optional
	public var throw_(get, set):Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, Dynamic>>;
	inline function get_throw_():Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, Dynamic>> return js.Syntax.field(cast this, 'throw');
	inline function set_throw_(v:Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, Dynamic>>):Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, Dynamic>> { js.Syntax.code("{0}[{1}] = {2}", this, 'throw', v); return v; }
}
