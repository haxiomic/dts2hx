package three;
@:jsRequire("three", "Int16BufferAttribute") extern class Int16BufferAttribute extends BufferAttribute {
	function new(array:haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>>, itemSize:Float, ?normalized:Bool);
}