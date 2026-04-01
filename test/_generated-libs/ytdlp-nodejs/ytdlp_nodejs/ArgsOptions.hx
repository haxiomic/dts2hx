package ytdlp_nodejs;

/**
	yt-dlp command-line options mapped to TypeScript.
**/
@:forward
abstract ArgsOptions(ArgsOptions_) from ArgsOptions_ to ArgsOptions_ {
	/**
		Force resume of partially downloaded files (deprecated).
	**/
	@:optional
	public var continue_(get, set):Bool;
	inline function get_continue_():Bool return js.Syntax.field(cast this, 'continue');
	inline function set_continue_(v:Bool):Bool { js.Syntax.code("{0}[{1}] = {2}", this, 'continue', v); return v; }
}
