package node.punycode;

@:jsRequire("punycode", "ucs2") extern class Ucs2 {
	function decode(string:String):Array<Float>;
	function encode(codePoints:haxe.ds.ReadOnlyArray<Float>):String;
}