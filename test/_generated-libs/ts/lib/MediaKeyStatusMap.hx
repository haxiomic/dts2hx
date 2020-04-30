package ts.lib;
/**
	This EncryptedMediaExtensions API interface is a read-only map of media key statuses by key IDs.
**/
@:native("MediaKeyStatusMap") extern class MediaKeyStatusMap {
	function new();
	final size : Float;
	function get(keyId:haxe.extern.EitherType<IArrayBuffer, ArrayBufferView>):Any;
	function has(keyId:haxe.extern.EitherType<IArrayBuffer, ArrayBufferView>):Bool;
	function forEach(callbackfn:(value:String, key:haxe.extern.EitherType<IArrayBuffer, ArrayBufferView>, parent:IMediaKeyStatusMap) -> Void, ?thisArg:Any):Void;
	function entries():IterableIterator<ts.lib.Tuple2<haxe.extern.EitherType<IArrayBuffer, ArrayBufferView>, String>>;
	function keys():IterableIterator<haxe.extern.EitherType<IArrayBuffer, ArrayBufferView>>;
	function values():IterableIterator<String>;
	static var prototype : IMediaKeyStatusMap;
}