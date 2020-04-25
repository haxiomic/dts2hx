package node.crypto;
extern interface SignPrivateKeyInput extends PrivateKeyInput {
	@:optional
	var padding : Null<Float>;
	@:optional
	var saltLength : Null<Float>;
}