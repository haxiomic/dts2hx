package three;
@:jsRequire("three", "PolyhedronGeometry") extern class PolyhedronGeometry extends Geometry {
	function new(vertices:Array<Float>, indices:Array<Float>, ?radius:Float, ?detail:Float);
	var parameters : {
		var vertices : Array<Float>;
		var indices : Array<Float>;
		var radius : Float;
		var detail : Float;
	};
}