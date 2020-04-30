package three;
@:jsRequire("three", "ShapeBufferGeometry") extern class ShapeBufferGeometry extends BufferGeometry {
	function new(shapes:haxe.extern.EitherType<Shape, std.Array<Shape>>, ?curveSegments:Float);
}