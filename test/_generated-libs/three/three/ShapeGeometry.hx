package three;

@:jsRequire("three", "ShapeGeometry") extern class ShapeGeometry extends Geometry {
	function new(shapes:ts.AnyOf2<Shape, Array<Shape>>, ?curveSegments:Float);
	function addShapeList(shapes:Array<Shape>, options:Dynamic):ShapeGeometry;
	function addShape(shape:Shape, ?options:Dynamic):Void;
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):ShapeGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():ShapeGeometry;
	function copy(source:Geometry):ShapeGeometry;
	static var prototype : ShapeGeometry;
}