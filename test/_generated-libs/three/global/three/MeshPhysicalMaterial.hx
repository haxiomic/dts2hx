package global.three;

@:native("THREE.MeshPhysicalMaterial") extern class MeshPhysicalMaterial extends MeshStandardMaterial {
	function new(parameters:MeshPhysicalMaterialParameters);
	var reflectivity : Float;
	var clearCoat : Float;
	var clearCoatRoughness : Float;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():MeshPhysicalMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):MeshPhysicalMaterial;
	static var prototype : MeshPhysicalMaterial;
}