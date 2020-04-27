package three;
@:jsRequire("three", "EdgesGeometry") extern class EdgesGeometry extends BufferGeometry {
	function new(geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?thresholdAngle:Float);
}