package js.lib;

/**
	Describes a user-defined
	{@link
	Iterator
	}
	that is also iterable.
**/
@:forward
abstract IterableIterator<T, TReturn, TNext>(IterableIterator_<T, TReturn, TNext>) from IterableIterator_<T, TReturn, TNext> to IterableIterator_<T, TReturn, TNext> {
	@:optional
	public var return_(get, set):Null<TReturn> -> IteratorResult<T, TReturn>;
	inline function get_return_():Null<TReturn> -> IteratorResult<T, TReturn> return js.Syntax.field(cast this, 'return');
	inline function set_return_(v:Null<TReturn> -> IteratorResult<T, TReturn>):Null<TReturn> -> IteratorResult<T, TReturn> { js.Syntax.code("{0}[{1}] = {2}", this, 'return', v); return v; }
	@:optional
	public var throw_(get, set):Null<Dynamic> -> IteratorResult<T, TReturn>;
	inline function get_throw_():Null<Dynamic> -> IteratorResult<T, TReturn> return js.Syntax.field(cast this, 'throw');
	inline function set_throw_(v:Null<Dynamic> -> IteratorResult<T, TReturn>):Null<Dynamic> -> IteratorResult<T, TReturn> { js.Syntax.code("{0}[{1}] = {2}", this, 'throw', v); return v; }
}
