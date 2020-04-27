package node.crypto;
extern typedef SignPrivateKeyInput = PrivateKeyInput & { @:optional
	var padding : Float; @:optional
	var saltLength : Float; };