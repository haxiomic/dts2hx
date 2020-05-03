package ts.lib;
/**
	This EncryptedMediaExtensions API interface is a read-only map of media key statuses by key IDs.
**/
@:native("MediaKeyStatusMap") extern class MediaKeyStatusMap {
	function new();
	final size : Float;
	function get(keyId:ts.html.BufferSource):Dynamic;
	function has(keyId:ts.html.BufferSource):Bool;
	function forEach(callbackfn:(value:ts.html.MediaKeyStatus, key:ts.html.BufferSource, parent:IMediaKeyStatusMap) -> Void, ?thisArg:Dynamic):Void;
	function entries():IterableIterator<ts.Tuple2<ts.html.BufferSource, ts.html.MediaKeyStatus>>;
	function keys():IterableIterator<ts.html.BufferSource>;
	function values():IterableIterator<ts.html.MediaKeyStatus>;
	static var prototype : IMediaKeyStatusMap;
}