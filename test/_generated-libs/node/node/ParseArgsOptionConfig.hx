package node;

@:forward
abstract ParseArgsOptionConfig(ParseArgsOptionConfigTypedef) from ParseArgsOptionConfigTypedef to ParseArgsOptionConfigTypedef {
	/**
		The default option value when it is not set by args.
		It must be of the same type as the the `type` property.
		When `multiple` is `true`, it must be an array.
	**/
	@:optional
	public var default_(get, set):ts.AnyOf4<String, Bool, Array<String>, Array<Bool>>;
	inline function get_default_():ts.AnyOf4<String, Bool, Array<String>, Array<Bool>> return js.Syntax.field(cast this, 'default');
	inline function set_default_(v:ts.AnyOf4<String, Bool, Array<String>, Array<Bool>>):ts.AnyOf4<String, Bool, Array<String>, Array<Bool>> { js.Syntax.code("{0}[{1}] = {2}", this, 'default', v); return v; }
}
