package global.three;

@:native("THREE.MeshToonMaterial") extern class MeshToonMaterial extends MeshPhongMaterial {
	function new(?parameters:MeshToonMaterialParameters);
	var gradientMap : Null<Texture>;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:MeshToonMaterialParameters):Void;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():MeshToonMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):MeshToonMaterial;
	static var prototype : MeshToonMaterial;
}