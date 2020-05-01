package node.util;
@:jsRequire("util", "TextDecoder") extern class TextDecoder {
	function new(?encoding:String, ?options:{ @:optional var fatal : Bool; @:optional var ignoreBOM : Bool; });
	final encoding : String;
	final fatal : Bool;
	final ignoreBOM : Bool;
	function decode(?input:ts.AnyOf11<ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, ?options:{ @:optional var stream : Bool; }):String;
}