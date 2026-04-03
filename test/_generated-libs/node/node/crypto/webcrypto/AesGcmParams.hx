package node.crypto.webcrypto;

typedef AesGcmParams = {
	@:optional
	var additionalData : BufferSource;
	var iv : BufferSource;
	@:optional
	var tagLength : Float;
	var name : String;
};