package three;
@:jsRequire("three", "Int16BufferAttribute") extern class Int16BufferAttribute extends BufferAttribute {
	function new(array:haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayLike<Float>, js.lib.Iterable<Float>>>, itemSize:Float, ?normalized:Bool);
}