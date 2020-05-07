package node.util;
@:jsRequire("util", "TextEncoder") extern class TextEncoder {
	final encoding : String;
	function encode(?input:String):ts.lib.Uint8Array;
}