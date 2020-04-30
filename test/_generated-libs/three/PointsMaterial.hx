package three;
@:jsRequire("three", "PointsMaterial") extern class PointsMaterial extends Material {
	function new(?parameters:PointsMaterialParameters);
	var color : Color;
	var map : Null<Texture>;
	var size : Float;
	var sizeAttenuation : Bool;
}