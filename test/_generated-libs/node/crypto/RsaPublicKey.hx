package node.crypto;
extern typedef RsaPublicKey = {
	var key : ts.AnyOf3<String, global.IBuffer, KeyObject>;
	@:optional
	var padding : Float;
};