package node.nodecolontest.test;

@:forward
abstract MockFunctionCall<F:(haxe.Constraints.Function), ReturnType, Args>(MockFunctionCallTypedef<F:(haxe.Constraints.Function), ReturnType, Args>) from MockFunctionCallTypedef<F:(haxe.Constraints.Function), ReturnType, Args> to MockFunctionCallTypedef<F:(haxe.Constraints.Function), ReturnType, Args> {
	/**
		The mocked function's `this` value.
	**/
	public var this_(get, set):Any;
	inline function get_this_():Any return js.Syntax.field(cast this, 'this');
	inline function set_this_(v:Any):Any { js.Syntax.code("{0}[{1}] = {2}", this, 'this', v); return v; }
}
