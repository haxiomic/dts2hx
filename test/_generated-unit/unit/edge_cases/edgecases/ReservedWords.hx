package unit.edge_cases.edgecases;

@:forward
abstract ReservedWords(ReservedWordsTypedef) from ReservedWordsTypedef to ReservedWordsTypedef {
	public var function_(get, set):String;
	inline function get_function_():String return js.Syntax.field(cast this, 'function');
	inline function set_function_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'function', v); return v; }
	public var class_(get, set):Float;
	inline function get_class_():Float return js.Syntax.field(cast this, 'class');
	inline function set_class_(v:Float):Float { js.Syntax.code("{0}[{1}] = {2}", this, 'class', v); return v; }
	public var import_(get, set):Bool;
	inline function get_import_():Bool return js.Syntax.field(cast this, 'import');
	inline function set_import_(v:Bool):Bool { js.Syntax.code("{0}[{1}] = {2}", this, 'import', v); return v; }
	public var var_(get, set):String;
	inline function get_var_():String return js.Syntax.field(cast this, 'var');
	inline function set_var_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'var', v); return v; }
	public var switch_(get, set):Float;
	inline function get_switch_():Float return js.Syntax.field(cast this, 'switch');
	inline function set_switch_(v:Float):Float { js.Syntax.code("{0}[{1}] = {2}", this, 'switch', v); return v; }
	public var case_(get, set):String;
	inline function get_case_():String return js.Syntax.field(cast this, 'case');
	inline function set_case_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'case', v); return v; }
	public var null_(get, set):Bool;
	inline function get_null_():Bool return js.Syntax.field(cast this, 'null');
	inline function set_null_(v:Bool):Bool { js.Syntax.code("{0}[{1}] = {2}", this, 'null', v); return v; }
	public var true_(get, set):String;
	inline function get_true_():String return js.Syntax.field(cast this, 'true');
	inline function set_true_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'true', v); return v; }
	public var false_(get, set):Float;
	inline function get_false_():Float return js.Syntax.field(cast this, 'false');
	inline function set_false_(v:Float):Float { js.Syntax.code("{0}[{1}] = {2}", this, 'false', v); return v; }
	public var this_(get, set):String;
	inline function get_this_():String return js.Syntax.field(cast this, 'this');
	inline function set_this_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'this', v); return v; }
	public var new_(get, set):String;
	inline function get_new_():String return js.Syntax.field(cast this, 'new');
	inline function set_new_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'new', v); return v; }
	public var in_(get, set):Bool;
	inline function get_in_():Bool return js.Syntax.field(cast this, 'in');
	inline function set_in_(v:Bool):Bool { js.Syntax.code("{0}[{1}] = {2}", this, 'in', v); return v; }
}
