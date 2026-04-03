package global.nodejs;

@:forward
abstract RequireExtensions(RequireExtensionsTypedef) from RequireExtensionsTypedef to RequireExtensionsTypedef {
	public var _js(get, set):(Module, String) -> Dynamic;
	inline function get__js():(Module, String) -> Dynamic return js.Syntax.field(cast this, '.js');
	inline function set__js(v:(Module, String) -> Dynamic):(Module, String) -> Dynamic { js.Syntax.code("{0}[{1}] = {2}", this, '.js', v); return v; }
	public var _json(get, set):(Module, String) -> Dynamic;
	inline function get__json():(Module, String) -> Dynamic return js.Syntax.field(cast this, '.json');
	inline function set__json(v:(Module, String) -> Dynamic):(Module, String) -> Dynamic { js.Syntax.code("{0}[{1}] = {2}", this, '.json', v); return v; }
	public var _node(get, set):(Module, String) -> Dynamic;
	inline function get__node():(Module, String) -> Dynamic return js.Syntax.field(cast this, '.node');
	inline function set__node(v:(Module, String) -> Dynamic):(Module, String) -> Dynamic { js.Syntax.code("{0}[{1}] = {2}", this, '.node', v); return v; }
}
