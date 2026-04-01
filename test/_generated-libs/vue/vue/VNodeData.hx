package vue;

@:forward
abstract VNodeData(VNodeData_) from VNodeData_ to VNodeData_ {
	@:optional
	public var class_(get, set):Dynamic;
	inline function get_class_():Dynamic return js.Syntax.field(cast this, 'class');
	inline function set_class_(v:Dynamic):Dynamic { js.Syntax.code("{0}[{1}] = {2}", this, 'class', v); return v; }
}
