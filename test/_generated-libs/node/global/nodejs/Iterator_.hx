package global.nodejs;

/**
	An iterable iterator returned by the Node.js API.
**/
@:forward
abstract Iterator_<T, TReturn, TNext>(Iterator_Typedef<T, TReturn, TNext>) from Iterator_Typedef<T, TReturn, TNext> to Iterator_Typedef<T, TReturn, TNext> {
	@:optional
	public var return_(get, set):Null<TReturn> -> js.lib.IteratorResult<T, TReturn>;
	inline function get_return_():Null<TReturn> -> js.lib.IteratorResult<T, TReturn> return js.Syntax.field(cast this, 'return');
	inline function set_return_(v:Null<TReturn> -> js.lib.IteratorResult<T, TReturn>):Null<TReturn> -> js.lib.IteratorResult<T, TReturn> { js.Syntax.code("{0}[{1}] = {2}", this, 'return', v); return v; }
	@:optional
	public var throw_(get, set):Null<Dynamic> -> js.lib.IteratorResult<T, TReturn>;
	inline function get_throw_():Null<Dynamic> -> js.lib.IteratorResult<T, TReturn> return js.Syntax.field(cast this, 'throw');
	inline function set_throw_(v:Null<Dynamic> -> js.lib.IteratorResult<T, TReturn>):Null<Dynamic> -> js.lib.IteratorResult<T, TReturn> { js.Syntax.code("{0}[{1}] = {2}", this, 'throw', v); return v; }
}
