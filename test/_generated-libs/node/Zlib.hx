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
	@:overload(function(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void { })
	static function brotliCompress(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, options:node.zlib.BrotliOptions, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void;
	static function brotliCompressSync(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:node.zlib.BrotliOptions):global.IBuffer;
	@:overload(function(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void { })
	static function brotliDecompress(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, options:node.zlib.BrotliOptions, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void;
	static function brotliDecompressSync(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:node.zlib.BrotliOptions):global.IBuffer;
	@:overload(function(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, options:node.zlib.ZlibOptions, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void { })
	static function deflate(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void;
	static function deflateSync(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, options:node.zlib.ZlibOptions, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void { })
	static function deflateRaw(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void;
	static function deflateRawSync(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, options:node.zlib.ZlibOptions, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void { })
	static function gzip(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void;
	static function gzipSync(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, options:node.zlib.ZlibOptions, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void { })
	static function gunzip(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void;
	static function gunzipSync(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, options:node.zlib.ZlibOptions, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void { })
	static function inflate(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void;
	static function inflateSync(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, options:node.zlib.ZlibOptions, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void { })
	static function inflateRaw(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void;
	static function inflateRawSync(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:node.zlib.ZlibOptions):global.IBuffer;
	@:overload(function(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, options:node.zlib.ZlibOptions, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void { })
	static function unzip(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, callback:(error:Null<ts.lib.IError>, result:global.IBuffer) -> Void):Void;
	static function unzipSync(buf:ts.AnyOf13<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:node.zlib.ZlibOptions):global.IBuffer;
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