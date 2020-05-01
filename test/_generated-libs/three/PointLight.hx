package three;
/**
	Affects objects using {@link MeshLambertMaterial} or {@link MeshPhongMaterial}.
**/
@:jsRequire("three", "PointLight") extern class PointLight extends Light {
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float, ?distance:Float, ?decay:Float);
	/**
		If non-zero, light will attenuate linearly from maximum intensity at light position down to zero at distance.
		Default — 0.0.
	**/
	var distance : Float;
	var decay : Float;
	var power : Float;
}