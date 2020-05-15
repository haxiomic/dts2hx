package three;
@:jsRequire("three", "Uint8BufferAttribute") extern class Uint8BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Uint8BufferAttribute;
	function copy(source:BufferAttribute):Uint8BufferAttribute;
}