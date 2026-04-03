package js.lib;

@:forward
abstract RegExpConstructor(RegExpConstructorTypedef) from RegExpConstructorTypedef to RegExpConstructorTypedef {
	public var Dollar1(get, set):String;
	inline function get_Dollar1():String return js.Syntax.field(cast this, '$1');
	inline function set_Dollar1(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$1', v); return v; }
	public var Dollar2(get, set):String;
	inline function get_Dollar2():String return js.Syntax.field(cast this, '$2');
	inline function set_Dollar2(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$2', v); return v; }
	public var Dollar3(get, set):String;
	inline function get_Dollar3():String return js.Syntax.field(cast this, '$3');
	inline function set_Dollar3(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$3', v); return v; }
	public var Dollar4(get, set):String;
	inline function get_Dollar4():String return js.Syntax.field(cast this, '$4');
	inline function set_Dollar4(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$4', v); return v; }
	public var Dollar5(get, set):String;
	inline function get_Dollar5():String return js.Syntax.field(cast this, '$5');
	inline function set_Dollar5(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$5', v); return v; }
	public var Dollar6(get, set):String;
	inline function get_Dollar6():String return js.Syntax.field(cast this, '$6');
	inline function set_Dollar6(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$6', v); return v; }
	public var Dollar7(get, set):String;
	inline function get_Dollar7():String return js.Syntax.field(cast this, '$7');
	inline function set_Dollar7(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$7', v); return v; }
	public var Dollar8(get, set):String;
	inline function get_Dollar8():String return js.Syntax.field(cast this, '$8');
	inline function set_Dollar8(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$8', v); return v; }
	public var Dollar9(get, set):String;
	inline function get_Dollar9():String return js.Syntax.field(cast this, '$9');
	inline function set_Dollar9(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$9', v); return v; }
	public var Dollar__(get, set):String;
	inline function get_Dollar__():String return js.Syntax.field(cast this, '$_');
	inline function set_Dollar__(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$_', v); return v; }
	public var DollarAmpersand(get, set):String;
	inline function get_DollarAmpersand():String return js.Syntax.field(cast this, '$&');
	inline function set_DollarAmpersand(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$&', v); return v; }
	public var DollarPlus(get, set):String;
	inline function get_DollarPlus():String return js.Syntax.field(cast this, '$+');
	inline function set_DollarPlus(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$+', v); return v; }
	public var Dollar_(get, set):String;
	inline function get_Dollar_():String return js.Syntax.field(cast this, '$`');
	inline function set_Dollar_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$`', v); return v; }
	public var Dollar(get, set):String;
	inline function get_Dollar():String return js.Syntax.field(cast this, '$'');
	inline function set_Dollar(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '$'', v); return v; }
	@:selfCall
	inline function call(pattern:ts.AnyOf2<String, js.lib.RegExp>):js.lib.RegExp return (cast this : RegExpConstructorTypedef).call(pattern);
}
