package node.crypto;
extern interface RsaPublicKey {
	var key : haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, KeyObject>>;
	@:optional
	var padding : Null<Float>;
}