package three;
extern typedef MeshLambertMaterialParameters = MaterialParameters & { @:optional
	var color : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>; @:optional
	var emissive : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>; @:optional
	var emissiveIntensity : Float; @:optional
	var emissiveMap : Texture; @:optional
	var map : Texture; @:optional
	var lightMap : Texture; @:optional
	var lightMapIntensity : Float; @:optional
	var aoMap : Texture; @:optional
	var aoMapIntensity : Float; @:optional
	var specularMap : Texture; @:optional
	var alphaMap : Texture; @:optional
	var envMap : Texture; @:optional
	var combine : Combine; @:optional
	var reflectivity : Float; @:optional
	var refractionRatio : Float; @:optional
	var wireframe : Bool; @:optional
	var wireframeLinewidth : Float; @:optional
	var wireframeLinecap : String; @:optional
	var wireframeLinejoin : String; @:optional
	var skinning : Bool; @:optional
	var morphTargets : Bool; @:optional
	var morphNormals : Bool; };