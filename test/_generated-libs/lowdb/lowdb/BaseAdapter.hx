package lowdb;

@:forward
abstract BaseAdapter<SchemaT>(BaseAdapterTypedef<SchemaT>) from BaseAdapterTypedef<SchemaT> to BaseAdapterTypedef<SchemaT> {
	public var AtReference(get, set):SchemaT;
	inline function get_AtReference():SchemaT return js.Syntax.field(cast this, '@@reference');
	inline function set_AtReference(v:SchemaT):SchemaT { js.Syntax.code("{0}[{1}] = {2}", this, '@@reference', v); return v; }
}
