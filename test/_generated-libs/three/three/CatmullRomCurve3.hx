package three;

@:jsRequire("three", "CatmullRomCurve3") extern class CatmullRomCurve3 extends Curve<Vector3> {
	function new(?points:Array<Vector3>, ?closed:Bool, ?curveType:String, ?tension:Float);
	var points : Array<Vector3>;
	/**
		Returns a vector for point t of the curve where t is between 0 and 1
		getPoint(t: number): T;
	**/
	function getPoint(t:Float):Vector3;
	static var prototype : CatmullRomCurve3;
}