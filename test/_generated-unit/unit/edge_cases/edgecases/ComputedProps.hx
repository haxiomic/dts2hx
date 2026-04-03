package unit.edge_cases.edgecases;

@:forward
abstract ComputedProps(ComputedPropsTypedef) from ComputedPropsTypedef to ComputedPropsTypedef {
	public var string_key(get, set):String;
	inline function get_string_key():String return js.Syntax.field(cast this, 'string-key');
	inline function set_string_key(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'string-key', v); return v; }
	public var FourTwo(get, set):Float;
	inline function get_FourTwo():Float return js.Syntax.field(cast this, '42');
	inline function set_FourTwo(v:Float):Float { js.Syntax.code("{0}[{1}] = {2}", this, '42', v); return v; }
}
