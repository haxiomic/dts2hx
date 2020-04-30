package three;
@:jsRequire("three", "PolyhedronGeometry") extern class PolyhedronGeometry extends Geometry {
	function new(vertices:std.Array<Float>, indices:std.Array<Float>, ?radius:Float, ?detail:Float);
	var parameters : {
		var vertices : std.Array<Float>;
		var indices : std.Array<Float>;
		var radius : Float;
		var detail : Float;
	};
}