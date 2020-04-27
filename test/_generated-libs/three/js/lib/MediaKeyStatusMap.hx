package js.lib;
/**
	This EncryptedMediaExtensions API interface is a read-only map of media key statuses by key IDs.
**/
@:native("MediaKeyStatusMap") @tsInterface extern class MediaKeyStatusMap {
	function new();
	final size : Float;
	function get(keyId:haxe.extern.EitherType<ArrayBuffer, ArrayBufferView>):Any;
	function has(keyId:haxe.extern.EitherType<ArrayBuffer, ArrayBufferView>):Bool;
	function forEach(callbackfn:(value:String, key:haxe.extern.EitherType<ArrayBuffer, ArrayBufferView>, parent:MediaKeyStatusMap) -> Void, ?thisArg:Any):Void;
	function entries():IterableIterator<js.lib.Tuple2<haxe.extern.EitherType<ArrayBuffer, ArrayBufferView>, String>>;
	function keys():IterableIterator<haxe.extern.EitherType<ArrayBuffer, ArrayBufferView>>;
	function values():IterableIterator<String>;
	static var prototype : MediaKeyStatusMap;
}