package js.html;
@:native("MSBlobBuilder") extern class MSBlobBuilder {
	function new();
	function append(data:Any, ?endings:String):Void;
	function getBlob(?contentType:String):IBlob;
	static var prototype : IMSBlobBuilder;
}