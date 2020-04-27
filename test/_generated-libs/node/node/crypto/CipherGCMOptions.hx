package node.crypto;
extern typedef CipherGCMOptions = node.stream.TransformOptions & { @:optional
	var authTagLength : Float; };