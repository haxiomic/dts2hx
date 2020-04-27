package three;
extern interface MeshPhysicalMaterialParameters extends MeshStandardMaterialParameters {
	@:optional
	var reflectivity : Float;
	@:optional
	var clearCoat : Float;
	@:optional
	var clearCoatRoughness : Float;
}