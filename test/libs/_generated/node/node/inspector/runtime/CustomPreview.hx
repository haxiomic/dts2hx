package node.inspector.runtime;
extern interface CustomPreview {
	var header : String;
	var hasBody : Bool;
	var formatterObjectId : String;
	var bindRemoteObjectFunctionId : String;
	@:optional
	var configObjectId : Null<String>;
}