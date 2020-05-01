package three;
@:jsRequire("three", "ShapeGeometry") extern class ShapeGeometry extends Geometry {
	function new(shapes:ts.AnyOf2<Shape, std.Array<Shape>>, ?curveSegments:Float);
	function addShapeList(shapes:std.Array<Shape>, options:Dynamic):ShapeGeometry;
	function addShape(shape:Shape, ?options:Dynamic):Void;
}