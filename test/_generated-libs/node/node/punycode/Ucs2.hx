package node.punycode;

typedef Ucs2 = {
	function decode(string:String):Array<Float>;
	function encode(codePoints:Array<Float>):String;
};