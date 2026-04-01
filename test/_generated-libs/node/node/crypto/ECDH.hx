package node.crypto;

@:jsRequire("crypto", "ECDH") extern class ECDH {
	function new();
	@:overload(function(encoding:HexBase64Latin1Encoding, ?format:ECDHKeyFormat):String { })
	function generateKeys():global.Buffer;
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding):global.Buffer { })
	@:overload(function(other_public_key:Binary, output_encoding:HexBase64Latin1Encoding):String { })
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding, output_encoding:HexBase64Latin1Encoding):String { })
	function computeSecret(other_public_key:Binary):global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrivateKey():global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding, ?format:ECDHKeyFormat):String { })
	function getPublicKey():global.Buffer;
	@:overload(function(private_key:String, encoding:HexBase64Latin1Encoding):Void { })
	function setPrivateKey(private_key:Binary):Void;
	static var prototype : ECDH;
	static function convertKey(key:BinaryLike, curve:String, ?inputEncoding:HexBase64Latin1Encoding, ?outputEncoding:String, ?format:String):ts.AnyOf2<String, global.Buffer>;
}