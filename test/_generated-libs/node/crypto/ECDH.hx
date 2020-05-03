package node.crypto;
@:jsRequire("crypto", "ECDH") extern class ECDH {
	@:overload(function(encoding:HexBase64Latin1Encoding, ?format:String):String { })
	function generateKeys():global.IBuffer;
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding):global.IBuffer { })
	@:overload(function(other_public_key:Binary, output_encoding:HexBase64Latin1Encoding):String { })
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding, output_encoding:HexBase64Latin1Encoding):String { })
	function computeSecret(other_public_key:Binary):global.IBuffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrivateKey():global.IBuffer;
	@:overload(function(encoding:HexBase64Latin1Encoding, ?format:String):String { })
	function getPublicKey():global.IBuffer;
	@:overload(function(private_key:String, encoding:HexBase64Latin1Encoding):Void { })
	function setPrivateKey(private_key:Binary):Void;
	static function convertKey(key:ts.AnyOf12<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, curve:String, ?inputEncoding:String, ?outputEncoding:String, ?format:String):ts.AnyOf2<String, global.IBuffer>;
}