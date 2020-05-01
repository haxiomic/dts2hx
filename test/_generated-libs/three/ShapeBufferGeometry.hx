package three;
@:jsRequire("three", "ShapeBufferGeometry") extern class ShapeBufferGeometry extends BufferGeometry {
	function new(shapes:ts.AnyOf2<Shape, std.Array<Shape>>, ?curveSegments:Float);
}