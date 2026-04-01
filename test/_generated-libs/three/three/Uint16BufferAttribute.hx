package three;

@:jsRequire("three", "Uint16BufferAttribute") extern class Uint16BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, Iterable<Float, Dynamic, Dynamic>>, itemSize:Float, ?normalized:Bool);
	function clone():Uint16BufferAttribute;
	function copy(source:BufferAttribute):Uint16BufferAttribute;
	static var prototype : Uint16BufferAttribute;
}