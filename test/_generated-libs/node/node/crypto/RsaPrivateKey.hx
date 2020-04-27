package node.crypto;
extern interface RsaPrivateKey {
	var key : haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, KeyObject>>;
	@:optional
	var passphrase : String;
	@:optional
	var padding : Float;
}