package node.crypto;
extern typedef SignPrivateKeyInput = {
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
	var key : haxe.extern.EitherType<String, global.IBuffer>;
	@:optional
	var format : String;
	@:optional
	var type : String;
	@:optional
	var passphrase : haxe.extern.EitherType<String, global.IBuffer>;
};