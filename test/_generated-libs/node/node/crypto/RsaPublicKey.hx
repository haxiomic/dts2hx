package node.crypto;
extern typedef RsaPublicKey = { var key : haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, KeyObject>>; @:optional
	var padding : Float; };