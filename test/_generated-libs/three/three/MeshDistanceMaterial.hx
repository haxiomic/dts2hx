package three;

@:jsRequire("three", "MeshDistanceMaterial") extern class MeshDistanceMaterial extends Material {
	function new(?parameters:MeshDistanceMaterialParameters);
	var referencePosition : Vector3;
	var nearDistance : Float;
	var farDistance : Float;
	var displacementMap : Null<Texture>;
	var displacementScale : Float;
	var displacementBias : Float;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:MeshDistanceMaterialParameters):Void;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():MeshDistanceMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):MeshDistanceMaterial;
	static var prototype : MeshDistanceMaterial;
}