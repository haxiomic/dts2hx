package node.crypto;

typedef DiffieHellman = {
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function generateKeys():global.Buffer;
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding):global.Buffer { })
	@:overload(function(other_public_key:Binary, output_encoding:HexBase64Latin1Encoding):String { })
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding, output_encoding:HexBase64Latin1Encoding):String { })
	function computeSecret(other_public_key:Binary):global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrime():global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getGenerator():global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPublicKey():global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrivateKey():global.Buffer;
	@:overload(function(public_key:String, encoding:String):Void { })
	function setPublicKey(public_key:Binary):Void;
	@:overload(function(private_key:String, encoding:String):Void { })
	function setPrivateKey(private_key:Binary):Void;
	var verifyError : Float;
};