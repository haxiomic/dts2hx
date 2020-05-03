package node.crypto;
typedef DiffieHellman = {
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function generateKeys():global.IBuffer;
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding):global.IBuffer { })
	@:overload(function(other_public_key:Binary, output_encoding:HexBase64Latin1Encoding):String { })
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding, output_encoding:HexBase64Latin1Encoding):String { })
	function computeSecret(other_public_key:Binary):global.IBuffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrime():global.IBuffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getGenerator():global.IBuffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPublicKey():global.IBuffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrivateKey():global.IBuffer;
	@:overload(function(public_key:String, encoding:String):Void { })
	function setPublicKey(public_key:Binary):Void;
	@:overload(function(private_key:String, encoding:String):Void { })
	function setPrivateKey(private_key:Binary):Void;
	var verifyError : Float;
};