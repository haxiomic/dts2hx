package three;

@:jsRequire("three", "MeshPhongMaterial") extern class MeshPhongMaterial extends Material {
	function new(?parameters:MeshPhongMaterialParameters);
	var color : Color;
	var specular : Color;
	var shininess : Float;
	var map : Null<Texture>;
	var lightMap : Null<Texture>;
	var lightMapIntensity : Float;
	var aoMap : Null<Texture>;
	var aoMapIntensity : Float;
	var emissive : Color;
	var emissiveIntensity : Float;
	var emissiveMap : Null<Texture>;
	var bumpMap : Null<Texture>;
	var bumpScale : Float;
	var normalMap : Null<Texture>;
	var normalMapType : NormalMapTypes;
	var normalScale : Vector2;
	var displacementMap : Null<Texture>;
	var displacementScale : Float;
	var displacementBias : Float;
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
	var morphNormals : Bool;
	var metal : Bool;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:MeshPhongMaterialParameters):Void;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():MeshPhongMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):MeshPhongMaterial;
	static var prototype : MeshPhongMaterial;
}