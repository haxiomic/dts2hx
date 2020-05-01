package three;
@:jsRequire("three", "LineLoop") extern class LineLoop extends Line {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, std.Array<Material>>);
	var isLineLoop : Bool;
}