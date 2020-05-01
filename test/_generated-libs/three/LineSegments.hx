package three;
@:jsRequire("three", "LineSegments") extern class LineSegments extends Line {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, std.Array<Material>>, ?mode:Float);
	var isLineSegments : Bool;
}