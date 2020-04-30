package three;
@:jsRequire("three", "TorusGeometry") extern class TorusGeometry extends Geometry {
	function new(?radius:Float, ?tube:Float, ?radialSegments:Float, ?tubularSegments:Float, ?arc:Float);
	var parameters : {
		var radius : Float;
		var tube : Float;
		var radialSegments : Float;
		var tubularSegments : Float;
		var arc : Float;
	};
}