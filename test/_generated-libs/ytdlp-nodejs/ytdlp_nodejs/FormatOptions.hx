package ytdlp_nodejs;

@:forward
abstract FormatOptions<F:(String)>(FormatOptionsTypedef<F:(String)>) from FormatOptionsTypedef<F:(String)> to FormatOptionsTypedef<F:(String)> {
	/**
		Force resume of partially downloaded files (deprecated).
	**/
	@:optional
	public var continue_(get, set):Bool;
	inline function get_continue_():Bool return js.Syntax.field(cast this, 'continue');
	inline function set_continue_(v:Bool):Bool { js.Syntax.code("{0}[{1}] = {2}", this, 'continue', v); return v; }
}
