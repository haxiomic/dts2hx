package unit.types.types;

@:forward
abstract ObjectAlias(ObjectAliasTypedef) from ObjectAliasTypedef to ObjectAliasTypedef {
	public var macro_(get, set):String;
	inline function get_macro_():String return js.Syntax.field(cast this, 'macro');
	inline function set_macro_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'macro', v); return v; }
}
