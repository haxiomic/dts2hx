package node;
@:jsRequire("buffer") extern class Buffer {
	static function transcode(source:haxe.extern.EitherType<global.Buffer, js.lib.Uint8Array>, fromEnc:String, toEnc:String):global.Buffer;
	static var INSPECT_MAX_BYTES : Float;
}