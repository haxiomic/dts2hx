package js.lib;

@:forward
abstract RegExpMatchArray(RegExpMatchArray_) from RegExpMatchArray_ to RegExpMatchArray_ {
	/**
		The first match. This will always be present because `null` will be returned if there are no matches.
	**/
	public var Zero(get, set):String;
	inline function get_Zero():String return js.Syntax.field(cast this, '0');
	inline function set_Zero(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '0', v); return v; }
}
