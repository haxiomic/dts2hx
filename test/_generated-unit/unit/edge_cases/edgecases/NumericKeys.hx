package unit.edge_cases.edgecases;

@:forward
abstract NumericKeys(NumericKeysTypedef) from NumericKeysTypedef to NumericKeysTypedef {
	public var FiveZero(get, set):String;
	inline function get_FiveZero():String return js.Syntax.field(cast this, '50');
	inline function set_FiveZero(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '50', v); return v; }
	public var OneZeroZero(get, set):Float;
	inline function get_OneZeroZero():Float return js.Syntax.field(cast this, '100');
	inline function set_OneZeroZero(v:Float):Float { js.Syntax.code("{0}[{1}] = {2}", this, '100', v); return v; }
	public var Zero(get, set):Bool;
	inline function get_Zero():Bool return js.Syntax.field(cast this, '0');
	inline function set_Zero(v:Bool):Bool { js.Syntax.code("{0}[{1}] = {2}", this, '0', v); return v; }
}
