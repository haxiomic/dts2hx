package three;

@:jsRequire("three", "IcosahedronGeometry") extern class IcosahedronGeometry extends PolyhedronGeometry {
	function new(?radius:Float, ?detail:Float);
	static var prototype : IcosahedronGeometry;
}