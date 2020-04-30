package three;
@:jsRequire("three", "LineLoop") extern class LineLoop extends Line {
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:haxe.extern.EitherType<Material, std.Array<Material>>);
	var isLineLoop : Bool;
}