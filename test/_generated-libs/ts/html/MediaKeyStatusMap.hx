package ts.html;
/**
	This EncryptedMediaExtensions API interface is a read-only map of media key statuses by key IDs.
**/
@:native("MediaKeyStatusMap") extern class MediaKeyStatusMap {
	function new();
	final size : Float;
	function get(keyId:BufferSource):Dynamic;
	function has(keyId:BufferSource):Bool;
	function forEach(callbackfn:(value:MediaKeyStatus, key:BufferSource, parent:MediaKeyStatusMap) -> Void, ?thisArg:Dynamic):Void;
	function entries():ts.lib.IterableIterator<ts.Tuple2<BufferSource, MediaKeyStatus>>;
	function keys():ts.lib.IterableIterator<BufferSource>;
	function values():ts.lib.IterableIterator<MediaKeyStatus>;
	static var prototype : MediaKeyStatusMap;
}