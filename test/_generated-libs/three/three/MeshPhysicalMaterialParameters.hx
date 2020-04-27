package three;
extern typedef MeshPhysicalMaterialParameters = MeshStandardMaterialParameters & { @:optional
	var reflectivity : Float; @:optional
	var clearCoat : Float; @:optional
	var clearCoatRoughness : Float; };