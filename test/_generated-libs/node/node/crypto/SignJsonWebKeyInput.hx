package node.crypto;

typedef SignJsonWebKeyInput = {
	var key : JsonWebKey;
	var format : String;
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
	@:optional
	var dsaEncoding : DSAEncoding;
};