package global;

@:forward
abstract NodeExtensions(NodeExtensions_) from NodeExtensions_ to NodeExtensions_ {
	public var _js(get, set):(NodeModule, String) -> Dynamic;
	inline function get__js():(NodeModule, String) -> Dynamic return js.Syntax.field(cast this, '.js');
	inline function set__js(v:(NodeModule, String) -> Dynamic):(NodeModule, String) -> Dynamic { js.Syntax.code("{0}[{1}] = {2}", this, '.js', v); return v; }
	public var _json(get, set):(NodeModule, String) -> Dynamic;
	inline function get__json():(NodeModule, String) -> Dynamic return js.Syntax.field(cast this, '.json');
	inline function set__json(v:(NodeModule, String) -> Dynamic):(NodeModule, String) -> Dynamic { js.Syntax.code("{0}[{1}] = {2}", this, '.json', v); return v; }
	public var _node(get, set):(NodeModule, String) -> Dynamic;
	inline function get__node():(NodeModule, String) -> Dynamic return js.Syntax.field(cast this, '.node');
	inline function set__node(v:(NodeModule, String) -> Dynamic):(NodeModule, String) -> Dynamic { js.Syntax.code("{0}[{1}] = {2}", this, '.node', v); return v; }
}
