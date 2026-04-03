package vue;

@:forward
abstract PropOptions<T>(PropOptionsTypedef<T>) from PropOptionsTypedef<T> to PropOptionsTypedef<T> {
	@:optional
	public var default_(get, set):ts.AnyOf2<() -> Null<T>, T>;
	inline function get_default_():ts.AnyOf2<() -> Null<T>, T> return js.Syntax.field(cast this, 'default');
	inline function set_default_(v:ts.AnyOf2<() -> Null<T>, T>):ts.AnyOf2<() -> Null<T>, T> { js.Syntax.code("{0}[{1}] = {2}", this, 'default', v); return v; }
}
