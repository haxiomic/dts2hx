package node.punycode;
extern interface Ucs2 {
	function decode(string:String):std.Array<Float>;
	function encode(codePoints:std.Array<Float>):String;
}