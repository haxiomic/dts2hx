package node.punycode;

typedef IUcs2 = {
	function decode(string:String):Array<Float>;
	function encode(codePoints:Array<Float>):String;
};