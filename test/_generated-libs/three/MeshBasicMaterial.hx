package three;
@:jsRequire("three", "MeshBasicMaterial") extern class MeshBasicMaterial extends Material {
	function new(?parameters:MeshBasicMaterialParameters);
	var color : Color;
	var map : Null<Texture>;
	var aoMap : Null<Texture>;
	var aoMapIntensity : Float;
	var specularMap : Null<Texture>;
	var alphaMap : Null<Texture>;
	var envMap : Null<Texture>;
	var combine : Combine;
	var reflectivity : Float;
	var refractionRatio : Float;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var wireframeLinecap : String;
	var wireframeLinejoin : String;
	var skinning : Bool;
	var morphTargets : Bool;
}