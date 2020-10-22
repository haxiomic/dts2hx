package lowdb;

typedef AdapterOptions<SchemaT> = {
	@:optional
	var defaultValue : SchemaT;
	@:optional
	dynamic function serialize(data:SchemaT):String;
	@:optional
	dynamic function deserialize(serializedData:String):SchemaT;
};