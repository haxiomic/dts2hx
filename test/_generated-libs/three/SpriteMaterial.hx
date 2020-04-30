package three;
@:jsRequire("three", "SpriteMaterial") extern class SpriteMaterial extends Material {
	function new(?parameters:SpriteMaterialParameters);
	var color : Color;
	var map : Null<Texture>;
	var rotation : Float;
	var sizeAttenuation : Bool;
	var isSpriteMaterial : Bool;
}