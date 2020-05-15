package node.crypto;
@:jsRequire("crypto", "ECDH") extern class ECDH {
	@:overload(function(encoding:HexBase64Latin1Encoding, ?format:String):String { })
	function generateKeys():global.Buffer;
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding):global.Buffer { })
	@:overload(function(other_public_key:Binary, output_encoding:HexBase64Latin1Encoding):String { })
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding, output_encoding:HexBase64Latin1Encoding):String { })
	function computeSecret(other_public_key:Binary):global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrivateKey():global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding, ?format:String):String { })
	function getPublicKey():global.Buffer;
	@:overload(function(private_key:String, encoding:HexBase64Latin1Encoding):Void { })
	function setPrivateKey(private_key:Binary):Void;
	static function convertKey(key:ts.AnyOf12<String, global.Buffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, curve:String, ?inputEncoding:String, ?outputEncoding:String, ?format:String):ts.AnyOf2<String, global.Buffer>;
}