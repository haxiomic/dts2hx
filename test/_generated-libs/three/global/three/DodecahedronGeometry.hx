package global.three;

@:native("THREE.DodecahedronGeometry") extern class DodecahedronGeometry extends Geometry {
	function new(?radius:Float, ?detail:Float);
	var parameters : {
		var radius : Float;
		var detail : Float;
	};
	static var prototype : DodecahedronGeometry;
}