package node.http2;

@:forward
abstract IncomingHttpStatusHeader(IncomingHttpStatusHeaderTypedef) from IncomingHttpStatusHeaderTypedef to IncomingHttpStatusHeaderTypedef {
	@:optional
	public var ColonStatus(get, set):Float;
	inline function get_ColonStatus():Float return js.Syntax.field(cast this, ':status');
	inline function set_ColonStatus(v:Float):Float { js.Syntax.code("{0}[{1}] = {2}", this, ':status', v); return v; }
}
