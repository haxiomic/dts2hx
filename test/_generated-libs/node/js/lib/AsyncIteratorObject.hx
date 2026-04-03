package js.lib;

/**
	Describes an
	{@link
	AsyncIterator
	}
	produced by the runtime that inherits from the intrinsic `AsyncIterator.prototype`.
**/
@:forward
abstract AsyncIteratorObject<T, TReturn, TNext>(AsyncIteratorObjectTypedef<T, TReturn, TNext>) from AsyncIteratorObjectTypedef<T, TReturn, TNext> to AsyncIteratorObjectTypedef<T, TReturn, TNext> {
	@:optional
	public var return_(get, set):Null<ts.AnyOf2<PromiseLike<TReturn>, TReturn>> -> js.lib.Promise<IteratorResult<T, TReturn>>;
	inline function get_return_():Null<ts.AnyOf2<PromiseLike<TReturn>, TReturn>> -> js.lib.Promise<IteratorResult<T, TReturn>> return js.Syntax.field(cast this, 'return');
	inline function set_return_(v:Null<ts.AnyOf2<PromiseLike<TReturn>, TReturn>> -> js.lib.Promise<IteratorResult<T, TReturn>>):Null<ts.AnyOf2<PromiseLike<TReturn>, TReturn>> -> js.lib.Promise<IteratorResult<T, TReturn>> { js.Syntax.code("{0}[{1}] = {2}", this, 'return', v); return v; }
	@:optional
	public var throw_(get, set):Null<Dynamic> -> js.lib.Promise<IteratorResult<T, TReturn>>;
	inline function get_throw_():Null<Dynamic> -> js.lib.Promise<IteratorResult<T, TReturn>> return js.Syntax.field(cast this, 'throw');
	inline function set_throw_(v:Null<Dynamic> -> js.lib.Promise<IteratorResult<T, TReturn>>):Null<Dynamic> -> js.lib.Promise<IteratorResult<T, TReturn>> { js.Syntax.code("{0}[{1}] = {2}", this, 'throw', v); return v; }
}
