package node.crypto;
extern typedef KeyObject = {
	@:optional
	var asymmetricKeyType : String;
	function export(?options:{ var type : String; var format : String; @:optional var cipher : String; @:optional var passphrase : haxe.extern.EitherType<String, global.IBuffer>; }):haxe.extern.EitherType<String, global.IBuffer>;
	@:optional
	var symmetricSize : Float;
	var type : String;
};