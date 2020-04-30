package three;
@:jsRequire("three", "Uint8ClampedBufferAttribute") extern class Uint8ClampedBufferAttribute extends BufferAttribute {
	function new(array:haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>>, itemSize:Float, ?normalized:Bool);
}