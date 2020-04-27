package three;
@:jsRequire("three", "LineDashedMaterial") extern class LineDashedMaterial extends LineBasicMaterial {
	function new(?parameters:LineDashedMaterialParameters);
	var scale : Float;
	var dashSize : Float;
	var gapSize : Float;
	var isLineDashedMaterial : Bool;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:LineDashedMaterialParameters):Void;
}