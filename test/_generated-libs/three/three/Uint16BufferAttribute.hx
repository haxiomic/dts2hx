package three;
@:jsRequire("three", "Uint16BufferAttribute") extern class Uint16BufferAttribute extends BufferAttribute {
	function new(array:haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayLike<Float>, js.lib.Iterable<Float>>>, itemSize:Float, ?normalized:Bool);
}