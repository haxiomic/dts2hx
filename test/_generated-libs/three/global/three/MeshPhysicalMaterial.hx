package global.three;

@:native("THREE.MeshPhysicalMaterial") extern class MeshPhysicalMaterial extends MeshStandardMaterial {
	function new(parameters:MeshPhysicalMaterialParameters);
	var reflectivity : Float;
	var clearCoat : Float;
	var clearCoatRoughness : Float;
	static var prototype : MeshPhysicalMaterial;
}