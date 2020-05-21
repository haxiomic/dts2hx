package three;

@:jsRequire("three", "MeshMatcapMaterial") extern class MeshMatcapMaterial extends Material {
	function new(?parameters:MeshMatcapMaterialParameters);
	var color : Color;
	var matcap : Null<Texture>;
	var map : Null<Texture>;
	var bumpMap : Null<Texture>;
	var bumpScale : Float;
	var normalMap : Null<Texture>;
	var normalMapType : NormalMapTypes;
	var normalScale : Vector2;
	var displacementMap : Null<Texture>;
	var displacementScale : Float;
	var displacementBias : Float;
	var alphaMap : Null<Texture>;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:MeshMatcapMaterialParameters):Void;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():MeshMatcapMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):MeshMatcapMaterial;
	static var prototype : MeshMatcapMaterial;
}