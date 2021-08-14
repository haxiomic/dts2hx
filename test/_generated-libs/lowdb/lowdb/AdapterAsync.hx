package lowdb;

typedef AdapterAsync<SchemaT> = {
	function write(state:Dynamic):js.lib.Promise<ts.Undefined>;
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