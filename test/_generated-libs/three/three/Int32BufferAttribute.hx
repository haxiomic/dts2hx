package three;
@:jsRequire("three", "Int32BufferAttribute") extern class Int32BufferAttribute extends BufferAttribute {
	function new(array:haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayLike<Float>, js.lib.Iterable<Float>>>, itemSize:Float, ?normalized:Bool);
}