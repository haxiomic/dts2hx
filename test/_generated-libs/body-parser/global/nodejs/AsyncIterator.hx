package global.nodejs;

/**
	An async iterable iterator returned by the Node.js API.
**/
@:forward
abstract AsyncIterator<T, TReturn, TNext>(AsyncIteratorTypedef<T, TReturn, TNext>) from AsyncIteratorTypedef<T, TReturn, TNext> to AsyncIteratorTypedef<T, TReturn, TNext> {
	@:optional
	public var return_(get, set):Null<ts.AnyOf2<js.lib.PromiseLike<TReturn>, TReturn>> -> js.lib.Promise<js.lib.IteratorResult<T, TReturn>>;
	inline function get_return_():Null<ts.AnyOf2<js.lib.PromiseLike<TReturn>, TReturn>> -> js.lib.Promise<js.lib.IteratorResult<T, TReturn>> return js.Syntax.field(cast this, 'return');
	inline function set_return_(v:Null<ts.AnyOf2<js.lib.PromiseLike<TReturn>, TReturn>> -> js.lib.Promise<js.lib.IteratorResult<T, TReturn>>):Null<ts.AnyOf2<js.lib.PromiseLike<TReturn>, TReturn>> -> js.lib.Promise<js.lib.IteratorResult<T, TReturn>> { js.Syntax.code("{0}[{1}] = {2}", this, 'return', v); return v; }
	@:optional
	public var throw_(get, set):Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, TReturn>>;
	inline function get_throw_():Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, TReturn>> return js.Syntax.field(cast this, 'throw');
	inline function set_throw_(v:Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, TReturn>>):Null<Dynamic> -> js.lib.Promise<js.lib.IteratorResult<T, TReturn>> { js.Syntax.code("{0}[{1}] = {2}", this, 'throw', v); return v; }
}
