package global.three;

@:native("THREE.MeshToonMaterial") extern class MeshToonMaterial extends MeshPhongMaterial {
	function new(?parameters:MeshToonMaterialParameters);
	var gradientMap : Null<Texture>;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:MeshToonMaterialParameters):Void;
	static var prototype : MeshToonMaterial;
}