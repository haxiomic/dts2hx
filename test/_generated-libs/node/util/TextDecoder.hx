package node.util;
@:jsRequire("util", "TextDecoder") extern class TextDecoder {
	function new(?encoding:String, ?options:{ @:optional var fatal : Bool; @:optional var ignoreBOM : Bool; });
	final encoding : String;
	final fatal : Bool;
	final ignoreBOM : Bool;
	function decode(?input:ts.AnyOf11<ts.lib.Uint8Array, ts.lib.ArrayBuffer, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>, ?options:{ @:optional var stream : Bool; }):String;
}