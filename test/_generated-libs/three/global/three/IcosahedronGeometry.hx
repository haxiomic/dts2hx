package global.three;

@:native("THREE.IcosahedronGeometry") extern class IcosahedronGeometry extends PolyhedronGeometry {
	function new(?radius:Float, ?detail:Float);
	static var prototype : IcosahedronGeometry;
}