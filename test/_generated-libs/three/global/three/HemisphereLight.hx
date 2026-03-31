package global.three;

@:native("THREE.HemisphereLight") extern class HemisphereLight extends Light {
	function new(?skyColor:ts.AnyOf3<String, Float, Color>, ?groundColor:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	var skyColor : Color;
	var groundColor : Color;
	function copy(source:HemisphereLight, ?recursive:Bool):HemisphereLight;
	static var prototype : HemisphereLight;
}