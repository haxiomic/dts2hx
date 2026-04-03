package node.crypto;

typedef VerifyJsonWebKeyInput = {
	var key : JsonWebKey;
	var format : String;
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
	@:optional
	var dsaEncoding : DSAEncoding;
};