package node.crypto;
extern typedef PublicKeyInput = { var key : haxe.extern.EitherType<String, global.Buffer>; @:optional
	var format : String; @:optional
	var type : String; };