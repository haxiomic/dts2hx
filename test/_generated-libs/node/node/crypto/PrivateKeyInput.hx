package node.crypto;
extern typedef PrivateKeyInput = {
	var key : haxe.extern.EitherType<String, global.IBuffer>;
	@:optional
	var format : String;
	@:optional
	var type : String;
	@:optional
	var passphrase : haxe.extern.EitherType<String, global.IBuffer>;
};