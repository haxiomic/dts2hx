package three;
@:jsRequire("three", "Uint16BufferAttribute") extern class Uint16BufferAttribute extends BufferAttribute {
	function new(array:haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>>, itemSize:Float, ?normalized:Bool);
}