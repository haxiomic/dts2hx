package three;
@:jsRequire("three", "LineBasicMaterial") extern class LineBasicMaterial extends Material {
	function new(?parameters:LineBasicMaterialParameters);
	var color : Color;
	var linewidth : Float;
	var linecap : String;
	var linejoin : String;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:LineBasicMaterialParameters):Void;
}