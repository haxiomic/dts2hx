package js.lib;

@:forward
abstract AsyncGenerator<T, TReturn, TNext>(AsyncGeneratorTypedef<T, TReturn, TNext>) from AsyncGeneratorTypedef<T, TReturn, TNext> to AsyncGeneratorTypedef<T, TReturn, TNext> {
	public var return_(get, set):ts.AnyOf2<PromiseLike<TReturn>, TReturn> -> js.lib.Promise<IteratorResult<T, TReturn>>;
	inline function get_return_():ts.AnyOf2<PromiseLike<TReturn>, TReturn> -> js.lib.Promise<IteratorResult<T, TReturn>> return js.Syntax.field(cast this, 'return');
	inline function set_return_(v:ts.AnyOf2<PromiseLike<TReturn>, TReturn> -> js.lib.Promise<IteratorResult<T, TReturn>>):ts.AnyOf2<PromiseLike<TReturn>, TReturn> -> js.lib.Promise<IteratorResult<T, TReturn>> { js.Syntax.code("{0}[{1}] = {2}", this, 'return', v); return v; }
	public var throw_(get, set):Dynamic -> js.lib.Promise<IteratorResult<T, TReturn>>;
	inline function get_throw_():Dynamic -> js.lib.Promise<IteratorResult<T, TReturn>> return js.Syntax.field(cast this, 'throw');
	inline function set_throw_(v:Dynamic -> js.lib.Promise<IteratorResult<T, TReturn>>):Dynamic -> js.lib.Promise<IteratorResult<T, TReturn>> { js.Syntax.code("{0}[{1}] = {2}", this, 'throw', v); return v; }
}
