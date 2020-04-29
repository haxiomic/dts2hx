package node;
@:jsRequire("buffer") @valueModuleOnly extern class Buffer {
	static function transcode(source:haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>, fromEnc:String, toEnc:String):global.IBuffer;
	static var INSPECT_MAX_BYTES : Float;
}