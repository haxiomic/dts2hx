package node.crypto;

typedef VerifyPublicKeyInput = {
	var key : ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>;
	@:optional
	var format : KeyFormat;
	@:optional
	var type : String;
	@:optional
	var encoding : String;
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
	@:optional
	var dsaEncoding : DSAEncoding;
};