package three;
@:jsRequire("three", "ShapeGeometry") extern class ShapeGeometry extends Geometry {
	function new(shapes:ts.AnyOf2<Shape, Array<Shape>>, ?curveSegments:Float);
	function addShapeList(shapes:Array<Shape>, options:Dynamic):ShapeGeometry;
	function addShape(shape:Shape, ?options:Dynamic):Void;
}