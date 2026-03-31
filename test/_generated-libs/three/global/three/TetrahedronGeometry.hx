package global.three;

@:native("THREE.TetrahedronGeometry") extern class TetrahedronGeometry extends PolyhedronGeometry {
	function new(?radius:Float, ?detail:Float);
	static var prototype : TetrahedronGeometry;
}