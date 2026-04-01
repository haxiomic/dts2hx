package lowdb;

typedef BaseAdapter_<SchemaT> = {
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