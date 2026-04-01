package node;

@:jsRequire("buffer") @valueModuleOnly extern class Buffer {
	static function transcode(source:ts.AnyOf2<js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer>, fromEnc:node.buffer.TranscodeEncoding, toEnc:node.buffer.TranscodeEncoding):global.Buffer;
	static final INSPECT_MAX_BYTES : Float;
}