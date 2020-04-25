package node.util;
@:jsRequire("util", "TextDecoder") extern class TextDecoder {
	function new(?encoding:String, ?options:{ @:optional
	var fatal : Null<Bool>; @:optional
	var ignoreBOM : Null<Bool>; });
	final encoding : String;
	final fatal : Bool;
	final ignoreBOM : Bool;
	function decode(?input:haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>, ?options:{ @:optional
	var stream : Null<Bool>; }):String;
}