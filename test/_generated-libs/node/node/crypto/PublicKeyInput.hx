package node.crypto;
extern typedef PublicKeyInput = {
	var key : haxe.extern.EitherType<String, global.IBuffer>;
	@:optional
	var format : String;
	@:optional
	var type : String;
};