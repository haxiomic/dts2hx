package global.jquery;

@:forward
abstract Queue<TElement>(QueueTypedef<TElement>) from QueueTypedef<TElement> to QueueTypedef<TElement> {
	public var Zero(get, set):String;
	inline function get_Zero():String return js.Syntax.field(cast this, '0');
	inline function set_Zero(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, '0', v); return v; }
}
