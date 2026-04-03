package node.fs;

typedef WriteFileOptions = Null<ts.AnyOf2<String, ObjectEncodingOptions & node.events.eventemitter.Abortable & {
	@:optional
	var mode : Mode;
	@:optional
	var flag : String;
	@:optional
	var flush : Bool;
}>>;