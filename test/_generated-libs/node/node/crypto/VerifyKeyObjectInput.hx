package node.crypto;

typedef VerifyKeyObjectInput = {
	var key : KeyObject;
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
	@:optional
	var dsaEncoding : DSAEncoding;
};