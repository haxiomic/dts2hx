package lowdb;

typedef AdapterSync<SchemaT> = {
	@:overload(function<SchemaT>(source:String, ?options:AdapterOptions<SchemaT>):BaseAdapter<SchemaT> { })
	function new<SchemaT>(source:String, ?options:AdapterOptions<SchemaT>);
	function write(state:Dynamic):Void;
	@:native("@@reference")
	final AtReference : SchemaT;
	var source : String;
	@:optional
	var defaultValue : SchemaT;
	@:optional
	dynamic function serialize(data:SchemaT):String;
	@:optional
	dynamic function deserialize(serializedData:String):SchemaT;
};