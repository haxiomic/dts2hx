package node.crypto;
extern interface PublicKeyInput {
	var key : haxe.extern.EitherType<String, global.Buffer>;
	@:optional
	var format : String;
	@:optional
	var type : String;
}