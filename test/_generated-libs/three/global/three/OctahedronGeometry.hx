package global.three;

@:native("THREE.OctahedronGeometry") extern class OctahedronGeometry extends PolyhedronGeometry {
	function new(?radius:Float, ?detail:Float);
	static var prototype : OctahedronGeometry;
}