package unit.named_tuple.namedtuple;

@:forward
abstract KeyValuePair<K, V>(KeyValuePair_<K, V>) from KeyValuePair_<K, V> to KeyValuePair_<K, V> {
	public var Zero(get, set):K;
	inline function get_Zero():K return js.Syntax.field(cast this, '0');
	inline function set_Zero(v:K):K { js.Syntax.code("{0}[{1}] = {2}", this, '0', v); return v; }
	public var One(get, set):V;
	inline function get_One():V return js.Syntax.field(cast this, '1');
	inline function set_One(v:V):V { js.Syntax.code("{0}[{1}] = {2}", this, '1', v); return v; }
}
