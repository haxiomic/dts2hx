package node;

@:jsRequire("buffer") @valueModuleOnly extern class Buffer {
	static function transcode(source:ts.AnyOf2<global.Buffer, js.lib.Uint8Array>, fromEnc:node.buffer.TranscodeEncoding, toEnc:node.buffer.TranscodeEncoding):global.Buffer;
	static var INSPECT_MAX_BYTES : Float;
}