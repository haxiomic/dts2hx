package global.three;

@:native("THREE.LineBasicMaterial") extern class LineBasicMaterial extends Material {
	function new(?parameters:LineBasicMaterialParameters);
	var color : Color;
	var linewidth : Float;
	var linecap : String;
	var linejoin : String;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:LineBasicMaterialParameters):Void;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():LineBasicMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):LineBasicMaterial;
	static var prototype : LineBasicMaterial;
}