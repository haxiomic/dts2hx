package node.inspector.runtime;

typedef CustomPreview = {
	var header : String;
	var hasBody : Bool;
	var formatterObjectId : String;
	var bindRemoteObjectFunctionId : String;
	@:optional
	var configObjectId : String;
};