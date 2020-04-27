package node.crypto;
extern interface SignPrivateKeyInput extends PrivateKeyInput {
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
}