package node.crypto;
extern interface PrivateKeyInput {
	var key : haxe.extern.EitherType<String, global.Buffer>;
	@:optional
	var format : Null<String>;
	@:optional
	var type : Null<String>;
	@:optional
	var passphrase : Null<haxe.extern.EitherType<String, global.Buffer>>;
}