package js.lib;

@:forward
abstract ArrayIterator<T>(ArrayIterator_<T>) from ArrayIterator_<T> to ArrayIterator_<T> {
	@:optional
	public var return_(get, set):Null<Dynamic> -> IteratorResult<T, Dynamic>;
	inline function get_return_():Null<Dynamic> -> IteratorResult<T, Dynamic> return js.Syntax.field(cast this, 'return');
	inline function set_return_(v:Null<Dynamic> -> IteratorResult<T, Dynamic>):Null<Dynamic> -> IteratorResult<T, Dynamic> { js.Syntax.code("{0}[{1}] = {2}", this, 'return', v); return v; }
	@:optional
	public var throw_(get, set):Null<Dynamic> -> IteratorResult<T, Dynamic>;
	inline function get_throw_():Null<Dynamic> -> IteratorResult<T, Dynamic> return js.Syntax.field(cast this, 'throw');
	inline function set_throw_(v:Null<Dynamic> -> IteratorResult<T, Dynamic>):Null<Dynamic> -> IteratorResult<T, Dynamic> { js.Syntax.code("{0}[{1}] = {2}", this, 'throw', v); return v; }
}
