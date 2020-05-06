package three;
@:jsRequire("three", "Uint32BufferAttribute") extern class Uint32BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<ts.lib.IArrayBuffer, ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Uint32BufferAttribute;
	function copy(source:BufferAttribute):Uint32BufferAttribute;
}