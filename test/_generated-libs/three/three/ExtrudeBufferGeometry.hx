package three;

@:jsRequire("three", "ExtrudeBufferGeometry") extern class ExtrudeBufferGeometry extends BufferGeometry {
	function new(shapes:ts.AnyOf2<Shape, Array<Shape>>, ?options:ExtrudeGeometryOptions);
	function addShapeList(shapes:Array<Shape>, ?options:Dynamic):Void;
	function addShape(shape:Shape, ?options:Dynamic):Void;
	function clone():ExtrudeBufferGeometry;
	function copy(source:BufferGeometry):ExtrudeBufferGeometry;
	static var prototype : ExtrudeBufferGeometry;
	static var WorldUVGenerator : UVGenerator;
}