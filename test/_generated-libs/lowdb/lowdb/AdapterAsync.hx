package lowdb;

@:forward
abstract AdapterAsync<SchemaT>(AdapterAsync_<SchemaT>) from AdapterAsync_<SchemaT> to AdapterAsync_<SchemaT> {
	public var AtReference(get, set):SchemaT;
	inline function get_AtReference():SchemaT return js.Syntax.field(cast this, '@@reference');
	inline function set_AtReference(v:SchemaT):SchemaT { js.Syntax.code("{0}[{1}] = {2}", this, '@@reference', v); return v; }
}
