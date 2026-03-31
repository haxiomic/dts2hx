package global.three;

@:native("THREE.RectAreaLight") extern class RectAreaLight extends Light {
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float, ?width:Float, ?height:Float);
	var width : Float;
	var height : Float;
	function copy(source:RectAreaLight, ?recursive:Bool):RectAreaLight;
	static var prototype : RectAreaLight;
}