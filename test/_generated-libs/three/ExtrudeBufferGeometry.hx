package three;
@:jsRequire("three", "ExtrudeBufferGeometry") extern class ExtrudeBufferGeometry extends BufferGeometry {
	function new(shapes:ts.AnyOf2<Shape, std.Array<Shape>>, ?options:ExtrudeGeometryOptions);
	function addShapeList(shapes:std.Array<Shape>, ?options:Dynamic):Void;
	function addShape(shape:Shape, ?options:Dynamic):Void;
	static var WorldUVGenerator : UVGenerator;
}