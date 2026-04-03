package node.punycode;

typedef IUcs2 = {
	function decode(string:String):Array<Float>;
	function encode(codePoints:haxe.ds.ReadOnlyArray<Float>):String;
};