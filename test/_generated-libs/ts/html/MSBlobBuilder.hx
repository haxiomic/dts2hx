package ts.html;
@:native("MSBlobBuilder") extern class MSBlobBuilder {
	function new();
	function append(data:Dynamic, ?endings:String):Void;
	function getBlob(?contentType:String):Blob;
	static var prototype : MSBlobBuilder;
}