package node.crypto;
extern interface KeyObject {
	@:optional
	var asymmetricKeyType : Null<String>;
	function export(?options:{ var type : String; var format : String; @:optional
	var cipher : Null<String>; @:optional
	var passphrase : Null<haxe.extern.EitherType<String, global.Buffer>>; }):haxe.extern.EitherType<String, global.Buffer>;
	@:optional
	var symmetricSize : Null<Float>;
	var type : String;
}