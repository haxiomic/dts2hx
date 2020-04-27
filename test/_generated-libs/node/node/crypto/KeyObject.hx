package node.crypto;
extern interface KeyObject {
	@:optional
	var asymmetricKeyType : String;
	function export(?options:{ var type : String; var format : String; @:optional
	var cipher : String; @:optional
	var passphrase : haxe.extern.EitherType<String, global.Buffer>; }):haxe.extern.EitherType<String, global.Buffer>;
	@:optional
	var symmetricSize : Float;
	var type : String;
}