package global.three;

@:native("THREE.ExtrudeGeometry") extern class ExtrudeGeometry extends Geometry {
	function new(shapes:ts.AnyOf2<Shape, Array<Shape>>, ?options:ExtrudeGeometryOptions);
	function addShapeList(shapes:Array<Shape>, ?options:Dynamic):Void;
	function addShape(shape:Shape, ?options:Dynamic):Void;
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):ExtrudeGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():ExtrudeGeometry;
	function copy(source:Geometry):ExtrudeGeometry;
	static var prototype : ExtrudeGeometry;
	static var WorldUVGenerator : UVGenerator;
}