package three;

@:jsRequire("three", "Uint8BufferAttribute") extern class Uint8BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, js.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Uint8BufferAttribute;
	function copy(source:BufferAttribute):Uint8BufferAttribute;
}