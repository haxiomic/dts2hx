package three;
@:jsRequire("three", "CatmullRomCurve3") extern class CatmullRomCurve3 extends Curve<Vector3> {
	function new(?points:Array<Vector3>, ?closed:Bool, ?curveType:String, ?tension:Float);
	var points : Array<Vector3>;
}