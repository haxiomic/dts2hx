package three;
@:jsRequire("three", "Uint32BufferAttribute") extern class Uint32BufferAttribute extends BufferAttribute {
	function new(array:haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayLike<Float>, js.lib.Iterable<Float>>>, itemSize:Float, ?normalized:Bool);
}