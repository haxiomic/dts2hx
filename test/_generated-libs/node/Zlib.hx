package node;
@:jsRequire("zlib") @valueModuleOnly extern class Zlib {
	static function createBrotliCompress(?options:node.zlib.BrotliOptions):node.zlib.BrotliCompress;
	static function createBrotliDecompress(?options:node.zlib.BrotliOptions):node.zlib.BrotliDecompress;
	static function createGzip(?options:node.zlib.ZlibOptions):node.zlib.Gzip;
	static function createGunzip(?options:node.zlib.ZlibOptions):node.zlib.Gunzip;
	static function createDeflate(?options:node.zlib.ZlibOptions):node.zlib.Deflate;
	static function createInflate(?options:node.zlib.ZlibOptions):node.zlib.Inflate;
	static function createDeflateRaw(?options:node.zlib.ZlibOptions):node.zlib.DeflateRaw;
	static function createInflateRaw(?options:node.zlib.ZlibOptions):node.zlib.InflateRaw;
	static function createUnzip(?options:node.zlib.ZlibOptions):node.zlib.Unzip;
	@:overload(function(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void { })
	static function brotliCompress(buf:node.zlib.InputType, options:node.zlib.BrotliOptions, callback:node.zlib.CompressCallback):Void;
	static function brotliCompressSync(buf:node.zlib.InputType, ?options:node.zlib.BrotliOptions):global.IBuffer;
	@:overload(function(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void { })
	static function brotliDecompress(buf:node.zlib.InputType, options:node.zlib.BrotliOptions, callback:node.zlib.CompressCallback):Void;
	static function brotliDecompressSync(buf:node.zlib.InputType, ?options:node.zlib.BrotliOptions):global.IBuffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function deflate(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	static function deflateSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function deflateRaw(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	static function deflateRawSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function gzip(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	static function gzipSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function gunzip(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	static function gunzipSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function inflate(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	static function inflateSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function inflateRaw(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	static function inflateRawSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function unzip(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	static function unzipSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):global.IBuffer;
	static var Z_NO_FLUSH : Float;
	static var Z_PARTIAL_FLUSH : Float;
	static var Z_SYNC_FLUSH : Float;
	static var Z_FULL_FLUSH : Float;
	static var Z_FINISH : Float;
	static var Z_BLOCK : Float;
	static var Z_TREES : Float;
	static var Z_OK : Float;
	static var Z_STREAM_END : Float;
	static var Z_NEED_DICT : Float;
	static var Z_ERRNO : Float;
	static var Z_STREAM_ERROR : Float;
	static var Z_DATA_ERROR : Float;
	static var Z_MEM_ERROR : Float;
	static var Z_BUF_ERROR : Float;
	static var Z_VERSION_ERROR : Float;
	static var Z_NO_COMPRESSION : Float;
	static var Z_BEST_SPEED : Float;
	static var Z_BEST_COMPRESSION : Float;
	static var Z_DEFAULT_COMPRESSION : Float;
	static var Z_FILTERED : Float;
	static var Z_HUFFMAN_ONLY : Float;
	static var Z_RLE : Float;
	static var Z_FIXED : Float;
	static var Z_DEFAULT_STRATEGY : Float;
	static var Z_BINARY : Float;
	static var Z_TEXT : Float;
	static var Z_ASCII : Float;
	static var Z_UNKNOWN : Float;
	static var Z_DEFLATED : Float;
}