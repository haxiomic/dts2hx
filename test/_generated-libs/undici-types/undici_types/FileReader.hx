package undici_types;

@:jsRequire("undici-types", "FileReader") extern class FileReader {
	function new();
	var __proto__ : Dynamic;
	function readAsArrayBuffer(blob:node.buffer.Blob):Void;
	function readAsBinaryString(blob:node.buffer.Blob):Void;
	function readAsText(blob:node.buffer.Blob, ?encoding:String):Void;
	function readAsDataURL(blob:node.buffer.Blob):Void;
	function abort():Void;
	final EMPTY : Int;
	final LOADING : Int;
	final DONE : Int;
	final readyState : Float;
	final result : Null<ts.AnyOf2<String, js.lib.ArrayBuffer>>;
	final error : Null<{
		var prototype : js.html.DOMException;
		final INDEX_SIZE_ERR : Int;
		final DOMSTRING_SIZE_ERR : Int;
		final HIERARCHY_REQUEST_ERR : Int;
		final WRONG_DOCUMENT_ERR : Int;
		final INVALID_CHARACTER_ERR : Int;
		final NO_DATA_ALLOWED_ERR : Int;
		final NO_MODIFICATION_ALLOWED_ERR : Int;
		final NOT_FOUND_ERR : Int;
		final NOT_SUPPORTED_ERR : Int;
		final INUSE_ATTRIBUTE_ERR : Int;
		final INVALID_STATE_ERR : Int;
		final SYNTAX_ERR : Int;
		final INVALID_MODIFICATION_ERR : Int;
		final NAMESPACE_ERR : Int;
		final INVALID_ACCESS_ERR : Int;
		final VALIDATION_ERR : Int;
		final TYPE_MISMATCH_ERR : Int;
		final SECURITY_ERR : Int;
		final NETWORK_ERR : Int;
		final ABORT_ERR : Int;
		final URL_MISMATCH_ERR : Int;
		final QUOTA_EXCEEDED_ERR : Int;
		final TIMEOUT_ERR : Int;
		final INVALID_NODE_TYPE_ERR : Int;
		final DATA_CLONE_ERR : Int;
	}>;
	@:optional
	dynamic function onloadstart(event:ProgressEvent):Void;
	@:optional
	dynamic function onprogress(event:ProgressEvent):Void;
	@:optional
	dynamic function onload(event:ProgressEvent):Void;
	@:optional
	dynamic function onabort(event:ProgressEvent):Void;
	@:optional
	dynamic function onerror(event:ProgressEvent):Void;
	@:optional
	dynamic function onloadend(event:ProgressEvent):Void;
	static var prototype : FileReader;
	@:native("EMPTY")
	static final EMPTY_ : Int;
	@:native("LOADING")
	static final LOADING_ : Int;
	@:native("DONE")
	static final DONE_ : Int;
}