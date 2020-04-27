package node.inspector.runtime;
/**
	Represents function call argument. Either remote object id `objectId`, primitive `value`,
	unserializable primitive value or neither of (for undefined) them should be specified.
**/
extern typedef CallArgument = { /**
		Primitive value or serializable javascript object.
	**/
	@:optional
	var value : Any; /**
		Primitive value which can not be JSON-stringified.
	**/
	@:optional
	var unserializableValue : String; /**
		Remote object handle.
	**/
	@:optional
	var objectId : String; };