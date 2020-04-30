package three;
@:jsRequire("three", "MeshPhysicalMaterial") extern class MeshPhysicalMaterial extends MeshStandardMaterial {
	function new(parameters:MeshPhysicalMaterialParameters);
	var reflectivity : Float;
	var clearCoat : Float;
	var clearCoatRoughness : Float;
}