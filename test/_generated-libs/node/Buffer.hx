package node;
@:jsRequire("buffer") @valueModuleOnly extern class Buffer {
	static function transcode(source:ts.AnyOf2<global.IBuffer, ts.lib.IUint8Array>, fromEnc:String, toEnc:String):global.IBuffer;
	static var INSPECT_MAX_BYTES : Float;
}