package node.crypto;
extern interface CipherGCMOptions extends node.stream.TransformOptions {
	@:optional
	var authTagLength : Null<Float>;
}