package three;
@:jsRequire("three", "LineSegments") extern class LineSegments extends Line {
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:haxe.extern.EitherType<Material, std.Array<Material>>, ?mode:Float);
	var isLineSegments : Bool;
}