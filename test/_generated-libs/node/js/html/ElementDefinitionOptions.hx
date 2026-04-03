package js.html;

@:forward
abstract ElementDefinitionOptions(ElementDefinitionOptionsTypedef) from ElementDefinitionOptionsTypedef to ElementDefinitionOptionsTypedef {
	@:optional
	public var extends_(get, set):String;
	inline function get_extends_():String return js.Syntax.field(cast this, 'extends');
	inline function set_extends_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'extends', v); return v; }
}
