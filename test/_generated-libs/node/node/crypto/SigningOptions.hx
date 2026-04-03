package node.crypto;

typedef SigningOptions = {
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
	@:optional
	var dsaEncoding : DSAEncoding;
};