package js.html;
@:native("MSBlobBuilder") @tsInterface extern class MSBlobBuilder {
	function new();
	function append(data:Any, ?endings:String):Void;
	function getBlob(?contentType:String):Blob;
	static var prototype : MSBlobBuilder;
}