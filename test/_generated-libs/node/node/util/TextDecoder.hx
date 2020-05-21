package node.util;

@:jsRequire("util", "TextDecoder") extern class TextDecoder {
	function new(?encoding:String, ?options:{ @:optional var fatal : Bool; @:optional var ignoreBOM : Bool; });
	final encoding : String;
	final fatal : Bool;
	final ignoreBOM : Bool;
	function decode(?input:ts.AnyOf11<js.lib.Uint8Array, js.lib.ArrayBuffer, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, ?options:{ @:optional var stream : Bool; }):String;
	static var prototype : TextDecoder;
}