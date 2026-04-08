package chart_js;

@:forward
abstract Defaults(DefaultsTypedef) from DefaultsTypedef to DefaultsTypedef {
	public var override_(get, set):(String, haxe.DynamicAccess<Any>) -> haxe.DynamicAccess<Any>;
	inline function get_override_():(String, haxe.DynamicAccess<Any>) -> haxe.DynamicAccess<Any> return js.Syntax.field(cast this, 'override');
	inline function set_override_(v:(String, haxe.DynamicAccess<Any>) -> haxe.DynamicAccess<Any>):(String, haxe.DynamicAccess<Any>) -> haxe.DynamicAccess<Any> { js.Syntax.code("{0}[{1}] = {2}", this, 'override', v); return v; }
}
