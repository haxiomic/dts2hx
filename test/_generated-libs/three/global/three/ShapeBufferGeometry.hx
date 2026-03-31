package global.three;

@:native("THREE.ShapeBufferGeometry") extern class ShapeBufferGeometry extends BufferGeometry {
	function new(shapes:ts.AnyOf2<Shape, Array<Shape>>, ?curveSegments:Float);
	static var prototype : ShapeBufferGeometry;
}