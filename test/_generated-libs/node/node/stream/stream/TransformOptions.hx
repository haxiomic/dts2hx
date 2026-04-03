package node.stream.stream;

@:forward
abstract TransformOptions<T:(Transform)>(TransformOptionsTypedef<T:(Transform)>) from TransformOptionsTypedef<T:(Transform)> to TransformOptionsTypedef<T:(Transform)> {
	@:optional
	public var final_(get, set):ts.AnyOf2<() -> Void, js.lib.Error -> Void> -> Void;
	inline function get_final_():ts.AnyOf2<() -> Void, js.lib.Error -> Void> -> Void return js.Syntax.field(cast this, 'final');
	inline function set_final_(v:ts.AnyOf2<() -> Void, js.lib.Error -> Void> -> Void):ts.AnyOf2<() -> Void, js.lib.Error -> Void> -> Void { js.Syntax.code("{0}[{1}] = {2}", this, 'final', v); return v; }
}
